scoreboard players operation #temp GradualMusic = @s GradualMusic
scoreboard players add #temp GradualMusic 1
#reduction of 1 is built in
execute unless data storage luigis_mansion:data my_memory.music.jukebox_flags.variant run scoreboard players remove @s GradualMusic 6999
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:1} run scoreboard players remove @s GradualMusic 6999
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:2} run scoreboard players remove @s GradualMusic 6999
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:3} run scoreboard players remove @s GradualMusic 7229
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:4} run scoreboard players remove @s GradualMusic 7460
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:5} run scoreboard players remove @s GradualMusic 7691
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:6} run scoreboard players remove @s GradualMusic 7922
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:7} run scoreboard players remove @s GradualMusic 8152
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:8} run scoreboard players remove @s GradualMusic 8383
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:9} run scoreboard players remove @s GradualMusic 8614
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:10} run scoreboard players remove @s GradualMusic 8845
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:11} run scoreboard players remove @s GradualMusic 9075
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:12} run scoreboard players remove @s GradualMusic 9306
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:13} run scoreboard players remove @s GradualMusic 9537
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:14} run scoreboard players remove @s GradualMusic 9768
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:15} run scoreboard players remove @s GradualMusic 9999
execute if entity @s[scores={GradualMusic=..0}] run scoreboard players add #temp GradualMusic 4800180
scoreboard players add @s[scores={GradualMusic=..0}] GradualMusic 4800180
execute unless data storage luigis_mansion:data my_memory.music.jukebox_flags.variant run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/merged_initial
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:1} run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/merged
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:2} run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/split_15
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:3} run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/split_14
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:4} run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/split_13
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:5} run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/split_12
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:6} run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/split_11
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:7} run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/split_10
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:8} run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/split_9
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:9} run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/split_8
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:10} run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/split_7
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:11} run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/split_6
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:12} run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/split_5
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:13} run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/split_4
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:14} run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/split_3
execute if data storage luigis_mansion:data my_memory.music.jukebox_flags{variant:15} run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/split_2
scoreboard players reset #temp GradualMusic