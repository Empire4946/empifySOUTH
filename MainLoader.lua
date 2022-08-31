local link = "https://raw.githubusercontent.com/Empire4946/empifySOUTH/main/scripts"

local games = {
    [137877687] = "RoCitizens";
    [5890116343] = "Age_Simulator";
}

for i,v in next, games do
    games[i] = table.concat(v:split(' '), '_')
end

local name = games[game.PlaceId] or games[game.GameId]
return loadstring(game:HttpGet(link.. "/"..(name or "Universal")..".lua"))()
