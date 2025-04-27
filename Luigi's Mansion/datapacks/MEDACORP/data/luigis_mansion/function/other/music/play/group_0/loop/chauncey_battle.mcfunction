execute if entity @a[tag=vacuuming_ghost,tag=same_room,limit=1] run tag @s add catching
execute if entity @e[tag=ball,tag=same_room,tag=can_spit,limit=1] run tag @s add ball
scoreboard players operation #temp GradualMusic = @s GradualMusic
scoreboard players add #temp GradualMusic 1
#reduction of 1 is built in
scoreboard players remove @s[tag=!catching] GradualMusic 8570
scoreboard players remove @s[tag=catching] GradualMusic 9999
execute if entity @s[scores={GradualMusic=..0}] run scoreboard players add #temp GradualMusic 8506203
scoreboard players add @s[scores={GradualMusic=..0}] GradualMusic 8506203
execute if entity @s[tag=!catching,tag=!ball] run function luigis_mansion:other/music/play/group_0/loop/chauncey_battle/normal
execute if entity @s[tag=!catching,tag=ball] run function luigis_mansion:other/music/play/group_0/loop/chauncey_battle/ball
execute if entity @s[tag=catching] run function luigis_mansion:other/music/play/group_0/loop/chauncey_battle/catching
scoreboard players reset #temp GradualMusic
tag @s remove catching
tag @s remove ball