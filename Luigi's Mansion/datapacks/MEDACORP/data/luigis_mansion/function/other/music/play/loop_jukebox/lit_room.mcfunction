scoreboard players add @s[scores={HealthMusic=..0}] LastHealthMusic 480000
scoreboard players add @s[scores={HealthMusic=..0}] HealthMusic 480000
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{whistling:1b} at @s run function luigis_mansion:other/music/play/group_0/loop/whistle/normal
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{whistling:2b} at @s run function luigis_mansion:other/music/play/group_0/loop/whistle/shrunk