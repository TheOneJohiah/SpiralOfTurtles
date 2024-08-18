--Intended for use with releases past 0.1.0
local ws = http.websocket("192.168.0.188:42069")

print(ws)

ws.send("ping")

local incoming = ws.receive()

print(incoming)

local choiceTable =
{
    [1] = forward,
    [2] = back,
    [3] = up,
    [4] = down,
    [5] = left,
    [6] = right,
    [7] = scanFront
}
while true do
    incoming = ws.receive()

end

ws.close()