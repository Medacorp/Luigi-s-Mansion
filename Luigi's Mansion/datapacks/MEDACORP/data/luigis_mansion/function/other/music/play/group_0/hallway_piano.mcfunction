advancement grant @s only luigis_mansion:jukebox/hallway_piano
execute at @s run playsound luigis_mansion:music.mansion.melody ambient @s[scores={Jukebox=0}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=0}] RoomNoise 850