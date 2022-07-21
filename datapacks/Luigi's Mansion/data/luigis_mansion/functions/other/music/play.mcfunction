stopsound @s[scores={HealthMusic=0,GradualMusic=0}] music
function #luigis_mansion:other/music/play
scoreboard players operation @s PrevMusicType = @s MusicType
