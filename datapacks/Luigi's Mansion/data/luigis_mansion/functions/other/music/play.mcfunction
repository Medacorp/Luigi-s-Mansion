stopsound @s[scores={HealthMusic=0}] music
function #luigis_mansion:play_music
scoreboard players operation @s PrevMusicType = @s MusicType
