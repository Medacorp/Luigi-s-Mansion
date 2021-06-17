scoreboard players add @s[scores={Dialog=162..}] Dialog 1
scoreboard players add @s[scores={Dialog=161},tag=hit] Dialog 1
scoreboard players add @s[scores={Dialog=82..160}] Dialog 1
scoreboard players add @s[scores={Dialog=81},tag=hit] Dialog 1
scoreboard players add @s[scores={Dialog=2..80}] Dialog 1
scoreboard players add @s[scores={Dialog=1},tag=hit] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..2}] run function luigis_mansion:entities/biff_atlas/turn_visible
execute if entity @s[scores={Dialog=1}] at @e[tag=same_room,tag=!spectator] positioned ^ ^ ^8 if entity @s[distance=..8] run function luigis_mansion:entities/biff_atlas/turn_invisible
execute if entity @s[scores={Dialog=1}] run function luigis_mansion:entities/biff_atlas/idle
execute if entity @s[scores={Dialog=2}] as @e[tag=these_weights,limit=1] run function luigis_mansion:entities/biff_atlas/move_weights/home
scoreboard players set @s[scores={Dialog=2}] AnimationProg 0
tag @s[scores={Dialog=2}] add knocked_back
tag @s[scores={Dialog=2}] remove lift_fail
tag @s[scores={Dialog=2}] remove lift_succeed
tag @s[scores={Dialog=2}] remove strech_neck
execute if entity @s[scores={Dialog=2..21}] run teleport @s ^ ^ ^0.1
scoreboard players set @s[scores={Dialog=80}] AnimationProg 0
tag @s[scores={Dialog=80}] remove knocked_back
execute if entity @s[scores={Dialog=81}] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[scores={Dialog=81},tag=!laugh] run function luigis_mansion:entities/ghost/move
execute if entity @s[scores={Dialog=81},tag=!laugh] positioned ^ ^ ^0.7 if entity @e[tag=same_room,tag=!spectator,distance=..2,limit=1] run tag @s add attack
scoreboard players set @s[scores={Dialog=82}] AnimationProg 0
tag @s[scores={Dialog=82}] remove attack
tag @s[scores={Dialog=82}] remove laugh
tag @s[scores={Dialog=82}] add knocked_back
execute if entity @s[scores={Dialog=82..101}] run teleport @s ^ ^ ^0.1
scoreboard players set @s[scores={Dialog=2..160},tag=hit,tag=ko] Dialog 160
scoreboard players set @s[scores={Dialog=160}] AnimationProg 0
tag @s[scores={Dialog=160},tag=!ko] add ko
tag @s[scores={Dialog=160}] remove knocked_back
tag @s[scores={Dialog=161},tag=!laugh] add attack
execute if entity @s[scores={Dialog=161}] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[scores={Dialog=161},tag=!laugh] run function luigis_mansion:entities/ghost/move
scoreboard players set @s[scores={Dialog=162}] AnimationProg 0
tag @s[scores={Dialog=162}] remove attack
tag @s[scores={Dialog=162}] remove laugh
tag @s[scores={Dialog=162}] add knocked_out
execute if entity @s[scores={Dialog=162..181}] run teleport @s ^ ^ ^0.1
scoreboard players set @s[scores={Dialog=202}] VulnerableTime 80
tag @s remove hit
tag @s[scores={Dialog=292}] remove knocked_out
scoreboard players set @s[scores={Dialog=292}] Dialog 160
execute at @s[tag=laugh] run function luigis_mansion:entities/biff_atlas/laugh
execute at @s[tag=attack] run function luigis_mansion:entities/biff_atlas/attack