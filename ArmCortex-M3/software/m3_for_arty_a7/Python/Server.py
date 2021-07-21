import socket

##TCP_IP = '77.69.116.24'
TCP_PORT = 5000
BUFFER_SIZE = 1024

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind(('', TCP_PORT))
s.listen(1)

conn, addr = s.accept()
print ('Connection address:', addr)
while 1:
    data = conn.recv(BUFFER_SIZE)
    if not data: break
    print (data)
    conn.send(data)  # echo back
conn.close()
