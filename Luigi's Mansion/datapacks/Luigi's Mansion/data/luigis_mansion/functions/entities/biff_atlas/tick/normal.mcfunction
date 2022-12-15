execute store result entity @s[scores={Dialog=241},tag=hit_by_swinging_furniture] Rotation[0] float 1 run scoreboard players get @s HitFurnitureDir
execute store result entity @s[scores={Dialog=121},tag=hit_by_swinging_furniture] Rotation[0] float 1 run scoreboard players get @s HitFurnitureDir
execute store result entity @s[scores={Dialog=1},tag=hit_by_swinging_furniture] Rotation[0] float 1 run scoreboard players get @s HitFurnitureDir
scoreboard players add @s[scores={Dialog=242..},tag=!vanish] Dialog 1
scoreboard players add @s[scores={Dialog=241},tag=!vanish,tag=hit_by_swinging_furniture] Dialog 1
scoreboard players add @s[scores={Dialog=122..240},tag=!vanish] Dialog 1
scoreboard players add @s[scores={Dialog=121},tag=!vanish,tag=hit_by_swinging_furniture] Dialog 1
scoreboard players add @s[scores={Dialog=2..120},tag=!vanish] Dialog 1
scoreboard players add @s[scores={Dialog=1},tag=!vanish,tag=hit_by_swinging_furniture] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..2}] run function luigis_mansion:entities/biff_atlas/turn_visible
execute if entity @s[scores={Dialog=1}] at @e[tag=same_room,tag=!spectator,tag=player] positioned ^ ^ ^8 if entity @s[distance=..8] run function luigis_mansion:entities/biff_atlas/turn_invisible
execute if entity @s[scores={Dialog=1}] run function luigis_mansion:entities/biff_atlas/idle
execute if entity @s[scores={Dialog=2}] as @e[tag=these_weights,limit=1] run function luigis_mansion:entities/biff_atlas/move_weights/home
scoreboard players set @s[scores={Dialog=2}] AnimationProg 0
tag @s[scores={Dialog=2}] add knocked_back
tag @s[scores={Dialog=2}] remove lift_fail
tag @s[scores={Dialog=2}] remove lift_succeed
tag @s[scores={Dialog=2}] remove strech_neck
execute if entity @s[scores={Dialog=2..21}] run teleport @s ^ ^ ^0.1
scoreboard players set @s[scores={Dialog=120}] AnimationProg 0
tag @s[scores={Dialog=120}] remove knocked_back
execute if entity @s[scores={Dialog=120}] run playsound luigis_mansion:entity.biff_atlas.pant hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=121}] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[scores={Dialog=121},tag=!laugh] run function luigis_mansion:entities/ghost/move_forward
execute if entity @s[scores={Dialog=121},tag=!laugh] positioned ^ ^ ^0.7 if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..2,limit=1] run tag @s add attack
execute if entity @s[scores={Dialog=121},tag=!angry,tag=!attack,tag=!laugh] run playsound luigis_mansion:entity.biff_atlas.complain hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={Dialog=121},tag=!angry,tag=!attack,tag=!laugh] add angry
scoreboard players set @s[scores={Dialog=122}] AnimationProg 0
tag @s[scores={Dialog=122}] remove attack
tag @s[scores={Dialog=122}] remove laugh
tag @s[scores={Dialog=122}] add knocked_back
execute if entity @s[scores={Dialog=122..141}] run teleport @s ^ ^ ^0.1
scoreboard players set @s[scores={Dialog=2..241},tag=hit_by_swinging_furniture,tag=ko] Dialog 242
scoreboard players set @s[scores={Dialog=240}] AnimationProg 0
tag @s[scores={Dialog=240},tag=!ko] add ko
tag @s[scores={Dialog=240}] remove knocked_back
tag @s[scores={Dialog=241},tag=!laugh] add attack
execute if entity @s[scores={Dialog=241}] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[scores={Dialog=241},tag=!laugh] run function luigis_mansion:entities/ghost/move_forward
scoreboard players set @s[scores={Dialog=242}] AnimationProg 0
tag @s[scores={Dialog=242}] remove knocked_back
tag @s[scores={Dialog=242}] remove attack
tag @s[scores={Dialog=242}] remove laugh
tag @s[scores={Dialog=242}] add knocked_out
execute if entity @s[scores={Dialog=242..261}] run teleport @s ^ ^ ^0.1
scoreboard players set @s[scores={Dialog=282},tag=!vanish] VulnerableTime 80
tag @s remove hit_by_swinging_furniture
tag @s[scores={Dialog=372}] remove knocked_out
scoreboard players set @s[scores={Dialog=372}] Dialog 240

tag @s[tag=angry,tag=attack] remove angry
execute at @s[tag=laugh] run function luigis_mansion:entities/biff_atlas/laugh
execute at @s[tag=attack] run function luigis_mansion:entities/biff_atlas/attack
execute at @s[tag=knocked_back] run function luigis_mansion:animations/biff_atlas/knocked_back
execute at @s[tag=!knocked_back,tag=!knocked_out,tag=!attack,tag=!laugh,tag=!strech_neck,tag=!lift_succeed,tag=!lift_fail] run function luigis_mansion:animations/biff_atlas/idle
execute at @s[tag=knocked_out,tag=!attack,tag=!vanish] run function luigis_mansion:animations/biff_atlas/ko
execute at @s[tag=lift_fail] run function luigis_mansion:animations/biff_atlas/lift_fail
execute at @s[tag=lift_succeed] run function luigis_mansion:animations/biff_atlas/lift_succeed
execute at @s[tag=strech_neck] run function luigis_mansion:animations/biff_atlas/strech_neck