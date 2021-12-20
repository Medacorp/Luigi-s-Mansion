scoreboard players remove @s[scores={Music=1..}] Music 1

execute if entity @s[gamemode=!spectator] run function #luigis_mansion:correct_music

execute if entity @s[scores={Music=0}] run function luigis_mansion:other/music/play