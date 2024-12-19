stopsound @s[scores={HealthMusic=0,GradualMusic=0}] music
function #luigis_mansion:other/music/play
execute if score @s PreviousMusicType = @s MusicType if score @s MusicType matches ..-1 unless entity @s[scores={MusicType=-1000,MusicGroup=0}] run function luigis_mansion:other/music/set/force/silence
scoreboard players operation @s PreviousMusicType = @s MusicType
