advancement grant @s only luigis_mansion:jukebox/room_clear
function e3_demo:other/music/set/lit_room
stopsound @s[scores={Jukebox=0}] music
playsound luigis_mansion:music.cleared_room music @s[scores={Jukebox=0}] ~ ~ ~ 10000
scoreboard players set @s[scores={Jukebox=0}] Music 40