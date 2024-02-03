local ws = http.websocket("192.168.0.188:42069")

print(ws)

ws.send("test")

ws.close()