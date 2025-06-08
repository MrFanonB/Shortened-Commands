require "lib.moonloader"

function main()
    if not isSampfuncsLoaded() or not isSampLoaded() then
        return
    end
    while not isSampAvailable() do
        wait(0)
    end
    sampAddChatMessage("{2245DE}[Сокращенные команды] {FFF423FE}Ver: 1.2", 0xFFF423FE)
    sampRegisterChatCommand("wa", wanted)
    sampRegisterChatCommand("ma", mask)
    sampRegisterChatCommand("h", healme)
    sampRegisterChatCommand("ar", arrest)


    while true do
        wait(0)
    end
end

function wanted()
    sampSendChat("/wanted")
    sampAddChatMessage("Успешно!", 0xFF23FFFF)
end

function mask()
    sampSendChat("/mask")
end

function healme()
    sampSendChat("/healme")
end

function arrest(arg)
    if #arg == 0 then
        sampAddChatMessage("Ошибка", 0xFF0000)
    else
        sampSendChat("/arrest #arg", 0x008000)
    end
end