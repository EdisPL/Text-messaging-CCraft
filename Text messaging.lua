rednet.open("top")
while 1 do
    reply = rednet.receive(tc)
    print(reply)
    message = read()
    print(message)
    rednet.send(id, message)
end