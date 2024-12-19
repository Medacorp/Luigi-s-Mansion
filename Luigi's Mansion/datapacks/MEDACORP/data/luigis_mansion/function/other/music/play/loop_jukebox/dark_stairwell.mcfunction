scoreboard players add @s[scores={HealthMusic=..0}] LastHealthMusic 480000
scoreboard players add @s[scores={HealthMusic=..0}] HealthMusic 480000
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{humming:1b} at @s run function luigis_mansion:other/music/play/group_0/loop/hum/high
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{humming:2b} at @s run function luigis_mansion:other/music/play/group_0/loop/hum/high_shrunk
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{humming:3b} at @s run function luigis_mansion:other/music/play/group_0/loop/hum/medium
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{humming:4b} at @s run function luigis_mansion:other/music/play/group_0/loop/hum/medium_shrunk
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{humming:5b} at @s run function luigis_mansion:other/music/play/group_0/loop/hum/low
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{humming:6b} at @s run function luigis_mansion:other/music/play/group_0/loop/hum/low_shrunk