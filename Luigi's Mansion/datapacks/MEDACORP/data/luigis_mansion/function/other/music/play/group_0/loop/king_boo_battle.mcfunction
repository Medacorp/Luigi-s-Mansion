execute if entity @e[tag=show_health,tag=same_room] run tag @s add catching
scoreboard players operation #temp GradualMusic = @s GradualMusic
scoreboard players add #temp GradualMusic 1
#reduction of 1 is built in
scoreboard players remove @s[tag=!catching] GradualMusic 680
scoreboard players remove @s[tag=catching] GradualMusic 999
execute if entity @s[scores={GradualMusic=..0}] run scoreboard players add #temp GradualMusic 768686
scoreboard players add @s[scores={GradualMusic=..0}] GradualMusic 768686
execute if entity @s[tag=!catching] run function luigis_mansion:other/music/play/group_0/loop/king_boo_battle/normal
execute if entity @s[tag=catching] run function luigis_mansion:other/music/play/group_0/loop/king_boo_battle/catching
scoreboard players reset #temp GradualMusic
tag @s remove catching