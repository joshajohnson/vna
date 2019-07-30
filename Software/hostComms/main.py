import sys
import serial
import serial.tools.list_ports
import io
import time
import numpy as np
import matplotlib.pyplot as plt
import skrf as rf

class VNA:
    def __init__(self):
        # Serial stuff
        self.com_port = None
        self.name = ""
        self.connected = False
        self.ser = None
        self.ser_text = None
        self.ser_recv = None
        self.ser_recv_line_split = None

        # S Parameter vars
        self.Sxx = None
        self.startFreq = 25
        self.stopFreq = 1250
        self.numSamples = 100
        self.outputPower = 0

        # Plotting Vars
        self.data = []

    def connect_serial(self):
        """ Connect to VNA over a COM port. Takes COM port as an optional arg. e.g. "COM12" """

        print("\nConnecting to VNA!\n")

        while True:
            # Find and connect to a VNA)
            vna_port = self.com_port
            ports = serial.tools.list_ports.comports()
            print("Found COM Ports:\n")
            for port, desc, hwid in sorted(ports):
                print("{}: {} [{}]".format(port, desc, hwid))

                if len(hwid.split(" ")) > 1:
                    if hwid.split(" ")[1] == "VID:PID=DEAD:BEEF":
                        vna_port = port

            if self.com_port is None:
                user_input = input("\nIs the VNA connected on Port {0}? y/n:".format(vna_port))
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
                self.ser = serial.Serial(self.com_port, 115200, timeout=0.5)
                self.ser_text = io.TextIOWrapper(self.ser, newline='\r\n')
                self.ser_text.write("WHOAMI\r\n")
                ser_recv = self.ser_text.readline().rstrip().lstrip("> ")
                if ser_recv == "Josh's VNA":
                    print("Connected to: {0}!".format(ser_recv))
                    self.connected = True
                    break
                else:
                    raise NameError()
            except:
                print("Sorry, could not connect. Please check connection.\n\n")
                time.sleep(5)

    def send_command(self, command):
        """ Sends command with EOL chars on end. """
        self.ser_text.write(command + "\r\n")

    def receive_data(self):
        """ Receives data from the COM port. Finishes when it detects an empty line. """
        self.data = [];
        while True:
            self.ser_recv = self.ser_text.readline().rstrip().lstrip()
            self.ser_recv_line_split = self.ser_recv.splitlines()

            # Print things stating with > to the user, otherwise store in n * 3 array
            for i in range(len(self.ser_recv_line_split)):
                if self.ser_recv_line_split[i][0] == ">":
                    print(self.ser_recv_line_split[i])
                else:
                    self.data.append([float(i) for i in self.ser_recv_line_split[i].split(",")])

            if self.ser_recv == "":
                self.data = np.reshape(self.data, (-1, 3))
                break

    def talk(self):
        """ Transparently opens a COM port between user and VNA. """

        if not self.connected:
            self.connect_serial()

        while True:
            user_cmd = input("Enter a command for the VNA:\n")
            if user_cmd.lower() == "exit":
                break
            self.send_command(user_cmd)
            self.receive_data()

    def measure(self,Sxx):
        """ Generates command for measuring S params. """

        if not self.connected:
            self.connect_serial()

        if int(Sxx) == 11:
            self.Sxx = 11
        elif int(Sxx) == 21:
            self.Sxx = 21
        else:
            print("Cannot measure that S Parameter, enter S11 or S21.")

        usr_same = input("Use default / previous values? y/n:")

        if usr_same.lower() != "y":
            usr_start_freq = input("Enter start frequency in MHz:")
            while (float(usr_start_freq) < 25) or (float(usr_start_freq) > 1250):
                print("Frequency too high or low. Enter frequency between 25 and 1250 MHz")
                usr_start_freq = input("Enter start frequency in MHz:")
            self.startFreq = float(usr_start_freq)

            usr_stop_freq = input("Enter stop frequency in MHz:")
            while (float(usr_stop_freq) < 25) or (float(usr_stop_freq) > 1250):
                print("Frequency too high or low. Enter frequency between 25 and 1250 MHz")
                usr_stop_freq = input("Enter stop frequency in MHz:")
            self.stopFreq = float(usr_stop_freq)

            usr_num_samples = input("Enter number of samples:")
            while not usr_num_samples.isnumeric():
                print("That is not a number. Please try again.")
                usr_num_samples = input("Enter number of samples:")
            self.numSamples = int(usr_num_samples)

            usr_output_power = input("Enter output power in dBm:")
            while (float(usr_output_power) < -20) or (float(usr_output_power) > 10):
                print("Power too high or low. Enter power between -20 and +10 dBm")
                usr_output_power = input("Enter output power in dBm:")
            self.outputPower = float(usr_output_power)

        self.send_command("measure({0},{1:.2f},{2:.2f},{3},{4:.2f})".format(self.Sxx, self.startFreq, self.stopFreq, self.numSamples, self.outputPower))
        self.receive_data()
        self.save("measurement")

    def plot(self, plotType):

        self.data = np.loadtxt("measurement.csv", delimiter=",")
        freq = self.data[:, 0]
        mag = self.data[:, 1]
        phase = self.data[:, 2]

        if plotType.lower() == "mag":
            plt.figure()
            plt.plot(freq, mag)
            plt.ylabel("Power dB")
            plt.xlabel("Frequency MHz")
            plt.show()

        if plotType == "phase":
            plt.figure()
            plt.plot(freq, phase)
            plt.ylabel("Phase deg")
            plt.xlabel("Frequency MHz")
            plt.show()

    def save(self, file_name):
        np.savetxt("{}.csv".format(file_name), self.data, delimiter=",")

    def load(self):
        file_name = input("Enter file name, excluding extension:")
        self.data = np.loadtxt("{}.csv".format(file_name), delimiter=",")


if __name__ == '__main__':
    vna = VNA()
    vna.com_port = "COM29"

    while True:
        user_input = input("\nWhat would you like to do?\n")

        if user_input.lower() == "help":
            print("\nAvailable Commands:")
            print("connect - connect to a VNA")
            print("talk - opens user COM port to the VNA")
            print("measure - allows S11 or S21 to be measured")
            print("plot mag - plots magnitude vs frequency")
            print("plot phase - plots phase vs frequency")
            print("plot smith - plots a smith chart (NOT WORKING YET)")
            print("save - saves loaded data")
            print("load - loads saved data")
        elif user_input.lower() == "connect":
            vna.connect_serial()
        elif user_input.lower() == "talk":
            vna.talk()
        elif user_input.lower() == "measure":
            vna.measure(input("Enter 11 to measure S11, 21 to measure S21"))
        elif user_input.lower() == "s11":
            vna.measure(11)
        elif user_input.lower() == "s21":
            vna.measure(21)
        elif user_input.lower() == "plot mag":
            vna.plot("mag")
        elif user_input.lower() == "plot phase":
            vna.plot("phase")
        elif user_input.lower() == "plot smith":
            vna.plot("smith")
        elif user_input.lower() == "save":
            vna.save(input("Enter file name, excluding extension:"))
        elif user_input.lower() == "load":
            vna.load()
        else:
            print("Not a valid command, try again.")


