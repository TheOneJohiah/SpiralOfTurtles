local ws = http.websocket("192.168.0.121:42069")

print(ws)

ws.send("test")

ws.close()