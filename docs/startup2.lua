--Intended for use with releases past 0.1.0
local ws = http.websocket("192.168.0.188:42069")

print(ws)

ws.send("ping")

local incoming = ws.receive()

print(incoming)

ws.close()