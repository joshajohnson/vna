import numpy as np

def setFreq(frequency, int, debug):

	if frequency < 23.5:
		return -1
	elif frequency < 46.875:
		diva = 7
	elif frequency < 93.75:
		diva = 6
	elif frequency < 187.5:
		diva = 5
	elif frequency < 375:
		diva = 4
	elif frequency < 750:
		diva = 3
	elif frequency < 1500:
		diva = 2
	elif frequency < 3000:
		diva = 1
	elif frequency < 6000:
		diva = 0
	else:
		return -1

	# Constants
	fREF = 19.2
	dbr = 1 # Ref Doubler
	rdiv2 = 0
	r = 1
	M = 4095

	fComp = fREF * (2 ** dbr) / (2 ** rdiv2) / r # Constant after setup

	fVCO = frequency * 2 ** diva

	n = fVCO / fComp 

	N = np.floor(n)

	remainer = n - N

	F = remainer * M

	if int:
		fVCO = (N) * fComp
	else:
		fVCO = (N + F / M) * fComp

	fOUT = fVCO / (2 ** diva)


	if debug:
		if int:
			print("Integer-N Mode")
			print ("fOUT = %d" %(fOUT))
		else:
			print("Fractional-N Mode")
			print ("fOUT = %0.2f" %(fOUT))
		print ("fComp = %0.1f" %(fComp))
		print ("fVCO = %0.1f" %(fVCO))
		print ("DIVA = %d (/ by %d)" %(diva, 2**diva))
		print ("n (float) = %0.2f" %(n))
		print ("N (int) = %d" %(N))
		print ("remainer = %0.2f" %(remainer))
		print ("F = %d" %(F))
		print ("fOUT = %0.1f\n" %(fOUT))
	else:
		if int:
			print("Integer-N Mode")
			print ("fOUT = %d" %(fOUT))
		else:
			print("Fractional-N Mode")
			print ("fOUT = %0.2f" %(fOUT))
		print ("DIVA = %d (/ by %d)" %(diva, 2**diva))
		print ("NDIV = %d" %(N))
		print ("FracN = %d" %(F))
		print ("MOD = %d" %(M))

integer = 1
factional = 0
debug = 1
nDebug = 0


setFreq(50,factional,debug)