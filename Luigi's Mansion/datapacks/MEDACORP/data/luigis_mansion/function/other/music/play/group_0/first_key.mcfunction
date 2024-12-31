advancement grant @s only luigis_mansion:jukebox/first_key
execute at @s run playsound luigis_mansion:music.first_key ambient @s[scores={Jukebox=0}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=0}] RoomNoise 500