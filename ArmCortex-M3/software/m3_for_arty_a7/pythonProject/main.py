#!/bin/python

import serial
import sys
import time
import select

BAU = 115200

# print(sys.argv)
PORT = 'COM3'
DELIM = '\r\n'

argc = len(sys.argv)

i = 1
while i < argc:
    # print(arg)
    arg = sys.argv[i]
    if arg.startswith('-p'):
        if len(arg) > 2:
            PORT = arg[2:]
        elif i + 1 < argc:
            i = i + 1
            PORT = sys.argv[i]
    elif arg.startswith('-r'):
        DELIM = '\r\n'
    i = i + 1

cc2538_id = 'm_+d___' + '102.402.00' + ']'
m_Id = b'[ 110.111.900000 ] , fw_V [ 02293A51 - 2020/29/07 GREECE ] , c-ready , repT/D [ 59,0 ]'


def readFromSerial():
    num = ser.in_waiting
    arr = ser.read(num)
    ##print(arr)
    # try:
    # dec = arr.decode()
    ##if 'REBOOTED...' in dec:
    ##print('REBOOTED...')
    ##quit()
    # except Exception as e:
    # print(arr)
    ##quit()
    return arr


with serial.Serial(PORT, BAU, timeout=1) as ser:
    while True:
        if ser.inWaiting():
            line = readFromSerial()
            try:
                line = line.decode()
                print(line)
            except:
                print(line)

        # test if stdin has data
        if select.select([sys.stdin, ], [], [], 0.0)[0]:
            cmd = input()
            cmd += DELIM
            ser.write(cmd.encode())

        time.sleep(0.1)
