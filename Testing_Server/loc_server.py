import socket
import time
import os

#This function is called when the client attempts to send a file to the server
#The server when ready sends the message ok to the client so that the client can start sending 
#the file
#First the server gets the name of the file and then the contents and saves it on the esp32 directory

def get_file(request_accept):
	flag = 0 
	print ("Get request")
	conn.send(request_accept.encode('UTF-8'))
	while 1:
		file_name = conn.recv(BUFFER_SIZE) 
		if file_name:  
			print ("Getting File name...")
			f_created = open("./esp32" + file_name.decode('UTF-8'), 'w')
			break
	while 1:
		time.sleep(0.4)
		file_data = conn.recv(BUFFER_SIZE)
		if file_data:  
			print ("Getting File data...")
			temp = file_data.decode('UTF-8')
			f_created.write(temp)
			break
	f_created.close()

#This function is called when the client attempts to get a file from the server
#The server when readt sends the message ok to the client so that the client can start receiving 
#the file
#First the client gets the name of the file and then the contents and saves it on the esp32 directory
	
def send_file(request_accept, f):
	print ("Send reuqest")
	conn.send(request_accept.encode('UTF-8'))
	time.sleep(0.01)
	print ("Sending Name...")
	conn.send(file_name.encode('UTF-8'))
	print (file_name)
	time.sleep(0.3)
	print ("Sending File...")
	conn.send(f_content_read.encode('UTF-8'))

#This function is called when the server wants to verify the authenticity of the client
#After having received the Public Key, the Signature and the original text the server 
#can verify the authenticity of a signed document via openssl
	
def verify_signature():
	print("Signature_Verification...")
	#For openssl testing we need the curve specifiscs so we have to use the extended public key.
	#This step will not be required in blockchain applications, it is only required here in order
	#to help openssl identify witch elliptic curve we are using.
	f_src  = open("./esp32/pubKey.der", "r")
	f_dst = open("./esp32/extended_pubKey.der", "w")
	f_dst.write("3056301006072a8648ce3d020106052b8104000a034200" + f_src.read())
	f_dst.close()

	#Converting the public key format to the appropriate format required by opensll
	os.system("xxd -r -ps ./esp32/extended_pubKey.der ./esp32/public.der")
	#Converting the signature format to the appropriate format required by opensll 
	os.system("xxd -r -ps ./esp32/signature.der ./esp32/signature.bin")
	#The open ssl command for signature verification. Success response is Verified OK.  
	os.system("openssl dgst -sha256 -verify ./esp32/public.der -keyform DER -signature ./esp32/signature.bin ./esp32/plain_text.txt")


TCP_PORT = 6544
BUFFER_SIZE = 2048


request_accept = 'OK\r\n'
f = open("test1.json", "r")
file_name = "/" + f.name
f_content_read = f.read()      	

print("Waiting for client...")
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
s.bind(('', TCP_PORT))
s.listen(1)


conn, addr = s.accept()
print ('Connection address:', addr)
while 1:
	data = conn.recv(BUFFER_SIZE)

	if (data.decode('UTF-8') == 'exit\r\n'):
		break

	elif (data.decode('UTF-8') == 'get_file_request\r\n'):
		send_file(request_accept, f)

	elif (data.decode('UTF-8') == 'send_file_request\r\n'):
		get_file(request_accept)

	elif (data.decode('UTF-8') == 'verify_signature\r\n'):
		verify_signature()

	elif data:
		print(data) 
		conn.send(data)  # echo back
conn.close()
