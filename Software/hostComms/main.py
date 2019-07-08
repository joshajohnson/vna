import sys
import serial.tools.list_ports
import io


class VNA:
    def __init__(self):
        self.com_port = ""
        self.name = ""

    def connect_serial(self, *args):
        '''Connect to VNA over a COM port. Takes COM port as an optional arg. e.g. "COM12" '''

        print("\nThanks for using Josh's VNA!\n")

        while True:
            # Find and connect to a VNA
            vna_port = "COM0"
            ports = serial.tools.list_ports.comports()
            print("Found COM Ports:\n")
            for port, desc, hwid in sorted(ports):
                print("{}: {} [{}]".format(port, desc, hwid))

                if len(hwid.split(" ")) > 1:
                    if hwid.split(" ")[1] == "VID:PID=DEAD:BEEF":
                        vna_port = port

            if len(sys.argv) is 1:
                self.com_port = str(args).lstrip("('").rstrip("',)")
            else:
                user_input = input("\nIs the VNA connected on Port {0} ? y/n:".format(vna_port))
                if user_input.lower() == 'y':
                    self.com_port = vna_port
                else:
                    print("What COM Port is the VNA connected to?")
                    user_input = input("If none found, check you have correct drivers installed.")
                    if user_input.isnumeric():
                        self.com_port = "COM{0}".format(user_input)
                    else:
                        self.com_port = user_input.upper()

            # Connect to above found COM port
            try:
                print("\nConnecting to {0}".format(self.com_port))
                ser = serial.Serial(self.com_port, 115200, timeout=1)
                ser_text = io.TextIOWrapper(ser, newline='\r\n')
                ser_text.write("WHOAMI\r\n")
                ser_recv = ser_text.readline().rstrip().lstrip()
                if ser_recv == "Josh's VNA":
                    print("Connected to: {0}!".format(ser_recv))
                    break
                else:
                    raise NameError()
            except:
                print("Sorry, could not connect. Please check connection.\n\n")


if __name__ == '__main__':
    vna = VNA()
    vna.connect_serial("COM29")
