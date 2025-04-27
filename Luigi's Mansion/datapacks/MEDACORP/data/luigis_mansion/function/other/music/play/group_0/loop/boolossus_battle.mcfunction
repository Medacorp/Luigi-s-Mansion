execute if entity @e[tag=split,tag=same_room,limit=1] run tag @s add split
execute if entity @s[tag=split] unless entity @s[scores={MusicSpeed=1..}] store result score @s MusicSpeed if entity @e[tag=split,tag=same_room,type=!minecraft:player]
scoreboard players reset @s[tag=!split,scores={MusicSpeed=1..}] MusicSpeed
scoreboard players operation #temp GradualMusic = @s GradualMusic
scoreboard players add #temp GradualMusic 1
#reduction of 1 is built in
scoreboard players remove @s[tag=!split] GradualMusic 6999
scoreboard players remove @s[scores={MusicSpeed=15..}] GradualMusic 6999
scoreboard players remove @s[scores={MusicSpeed=14}] GradualMusic 7229
scoreboard players remove @s[scores={MusicSpeed=13}] GradualMusic 7460
scoreboard players remove @s[scores={MusicSpeed=12}] GradualMusic 7691
scoreboard players remove @s[scores={MusicSpeed=11}] GradualMusic 7922
scoreboard players remove @s[scores={MusicSpeed=10}] GradualMusic 8152
scoreboard players remove @s[scores={MusicSpeed=9}] GradualMusic 8383
scoreboard players remove @s[scores={MusicSpeed=8}] GradualMusic 8614
scoreboard players remove @s[scores={MusicSpeed=7}] GradualMusic 8845
scoreboard players remove @s[scores={MusicSpeed=6}] GradualMusic 9075
scoreboard players remove @s[scores={MusicSpeed=5}] GradualMusic 9306
scoreboard players remove @s[scores={MusicSpeed=4}] GradualMusic 9537
scoreboard players remove @s[scores={MusicSpeed=3}] GradualMusic 9768
scoreboard players remove @s[scores={MusicSpeed=1..2}] GradualMusic 9999
execute if entity @s[scores={GradualMusic=..0}] run scoreboard players add #temp GradualMusic 4800180
scoreboard players add @s[scores={GradualMusic=..0}] GradualMusic 4800180
execute if entity @s[scores={MusicSpeed=-1}] run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/merged_initial
execute unless entity @s[scores={MusicSpeed=-1..}] run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/merged
execute if entity @s[scores={MusicSpeed=15..}] run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/split_15
execute if entity @s[scores={MusicSpeed=14}] run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/split_14
execute if entity @s[scores={MusicSpeed=13}] run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/split_13
execute if entity @s[scores={MusicSpeed=12}] run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/split_12
execute if entity @s[scores={MusicSpeed=11}] run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/split_11
execute if entity @s[scores={MusicSpeed=10}] run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/split_10
execute if entity @s[scores={MusicSpeed=9}] run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/split_9
execute if entity @s[scores={MusicSpeed=8}] run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/split_8
execute if entity @s[scores={MusicSpeed=7}] run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/split_7
execute if entity @s[scores={MusicSpeed=6}] run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/split_6
execute if entity @s[scores={MusicSpeed=5}] run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/split_5
execute if entity @s[scores={MusicSpeed=4}] run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/split_4
execute if entity @s[scores={MusicSpeed=3}] run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/split_3
execute if entity @s[scores={MusicSpeed=1..2}] run function luigis_mansion:other/music/play/group_0/loop/boolossus_battle/split_2
scoreboard players reset #temp GradualMusic
tag @s remove split