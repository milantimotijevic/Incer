SLASH_INCER1 = "/incer"
local timer;
local counter = 0;

SlashCmdList["INCER"] = function(inp)
    if inp == "inc" then

        if timer then
            timer:Cancel();
            timer = nil;
        end

        counter = counter + 1;

        timer = C_Timer.NewTimer(2, function()
            local msg = "INC " .. counter .. " - " .. GetMinimapZoneText();
            SendChatMessage(msg, "INSTANCE_CHAT");
            --print(msg);
            counter = 0;
        end);

    elseif inp == "safe" then

        if timer then
            timer:Cancel();
            timer = nil;
            counter = 0;
        return end

        local msg = "SAFE - " .. GetMinimapZoneText();
        SendChatMessage(msg, "INSTANCE_CHAT");
        --print(msg);

    end
end
