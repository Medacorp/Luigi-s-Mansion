advancement grant @s only luigis_mansion:jukebox/room_clear
function e3_demo:other/music/set/lit_room
stopsound @s music
playsound luigis_mansion:music.cleared_room music @s ~ ~ ~ 10000
scoreboard players set @s Music 40