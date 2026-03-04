import sys

payload = b""
for i in range (65,90):
    payload += bytes([i]) * 4

sys.stdout.buffer.write(payload)