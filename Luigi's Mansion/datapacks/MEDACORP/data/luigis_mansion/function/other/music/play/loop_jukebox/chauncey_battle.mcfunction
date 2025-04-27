scoreboard players operation #temp GradualMusic = @s GradualMusic
scoreboard players add #temp GradualMusic 1
#reduction of 1 is built in
execute unless data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:2} run scoreboard players remove @s GradualMusic 8570
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:2} run scoreboard players remove @s GradualMusic 9999
execute if entity @s[scores={GradualMusic=..0}] run scoreboard players add #temp GradualMusic 8506203
scoreboard players add @s[scores={GradualMusic=..0}] GradualMusic 8506203
execute unless data storage luigis_mansion:data my_memory.music.jukebox_flags.variant run function luigis_mansion:other/music/play/group_0/loop/chauncey_battle/normal
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:1} run function luigis_mansion:other/music/play/group_0/loop/chauncey_battle/ball
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:2} run function luigis_mansion:other/music/play/group_0/loop/chauncey_battle/catching
scoreboard players reset #temp GradualMusic