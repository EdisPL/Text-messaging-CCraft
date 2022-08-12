shell.run("label","set","Edvards")
print("Initialzing")
textutils.slowPrint("-------------------------------")
shell.run("attach","top","modem")
if peripheral.isPresent("top") then
else
    error("No modem found. Modem must be on top.")
end
if os.getComputerLabel then
else
    error("No label set. Please set a label.")
end
rednet.open("top")
ThisID = os.getComputerID()
write("This PC's ID is: ")
print(ThisID)
ThisLabel = os.getComputerLabel()
write("This PC's Label is: ")
print(ThisLabel)
textutils.slowPrint("-------------------------------")
write("Please enter other PC's ID:")
idString = read()
ID = tonumber(idString)
textutils.slowPrint("-------------------------------")
print("ID saved")
print(" ")
write("Please enter other PC's Label:")
LabelString = read()
Label = tonumber(idString)
textutils.slowPrint("-------------------------------")
print("Label saved")
print(" ")
write("Press enter to continue")
continue = read()
if continue == "" then
    print("Activating texting")
    textutils.slowPrint("-------------------------------")
    print("Press enter to start texting, then press enter again to send.")
    while 1 do
        start = read()
        if start == "" then
            write(ThisLabel)
            write(": ")
            input = read()
        end
    end
end
