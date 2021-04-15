scoreboard players remove @s[scores={Music=1..}] Music 1

execute if entity @s[gamemode=!spectator] run function luigis_mansion:other/music/correction

execute if entity @s[scores={Music=0,MusicType=0..}] run function luigis_mansion:other/music/play