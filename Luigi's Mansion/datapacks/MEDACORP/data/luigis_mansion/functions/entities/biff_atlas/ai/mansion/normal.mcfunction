execute store result entity @s[scores={Dialog=241},tag=hit_by_swinging_furniture] Rotation[0] float 1 run scoreboard players get @s FurnitureHitDirection
execute store result entity @s[scores={Dialog=121},tag=hit_by_swinging_furniture] Rotation[0] float 1 run scoreboard players get @s FurnitureHitDirection
execute store result entity @s[scores={Dialog=1},tag=hit_by_swinging_furniture] Rotation[0] float 1 run scoreboard players get @s FurnitureHitDirection
scoreboard players add @s[scores={Dialog=242..}] Dialog 1
scoreboard players add @s[scores={Dialog=241},tag=hit_by_swinging_furniture] Dialog 1
scoreboard players add @s[scores={Dialog=122..240}] Dialog 1
scoreboard players add @s[scores={Dialog=121},tag=hit_by_swinging_furniture] Dialog 1
scoreboard players add @s[scores={Dialog=2..120}] Dialog 1
scoreboard players add @s[scores={Dialog=1},tag=hit_by_swinging_furniture] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
tag @s[scores={Dialog=1..2}] addvisible
execute if entity @s[scores={Dialog=1}] at @e[tag=same_room,tag=!spectator,tag=player] positioned ^ ^ ^8 run tag @s[distance=..8] remove visible
execute if entity @s[scores={Dialog=1}] run function luigis_mansion:entities/biff_atlas/ai/mansion/normal/idle
execute if entity @s[scores={Dialog=2}] as @e[tag=biff_atlas_weights,limit=1] run function luigis_mansion:entities/biff_atlas/ai/mansion/normal/move_weights/home
data modify entity @s[scores={Dialog=2}] data.animation set value {namespace:"luigis_mansion",id:"knocked_back"}
execute if entity @s[scores={Dialog=2..21}] run teleport @s ^ ^ ^0.1
data remove entity @s[scores={Dialog=120}] data.animation
execute if entity @s[scores={Dialog=120}] run playsound luigis_mansion:entity.biff_atlas.pant hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=121}] TargetTask 1
execute if entity @s[scores={Dialog=121},tag=!laugh] positioned ^ ^ ^0.7 at @e[tag=same_room,tag=!spectator,tag=player,distance=..2,limit=1] run function luigis_mansion:entities/ghost/set_target_to_attack
execute if entity @s[scores={Dialog=121},tag=!angry,tag=!attack,tag=!laugh] run playsound luigis_mansion:entity.biff_atlas.complain hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={Dialog=121},tag=!angry,tag=!attack,tag=!laugh] add angry
tag @s[scores={Dialog=122}] remove attack
tag @s[scores={Dialog=122}] remove laugh
data modify entity @s[scores={Dialog=122}] data.animation set value {namespace:"luigis_mansion",id:"knocked_back"}
execute if entity @s[scores={Dialog=122..141}] run teleport @s ^ ^ ^0.1
scoreboard players set @s[scores={Dialog=2..241},tag=hit_by_swinging_furniture,tag=ko] Dialog 242
tag @s[scores={Dialog=240},tag=!ko] add ko
tag @s[scores={Dialog=240..241},tag=!laugh] add attack
scoreboard players set @s[scores={Dialog=241}] TargetTask 1
execute if entity @s[scores={Dialog=241}] facing entity @e[tag=same_room,tag=target,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
data modify entity @s[scores={Dialog=242}] data.animation set value {namespace:"luigis_mansion",id:"knocked_out"}
execute if entity @s[scores={Dialog=242..261}] run teleport @s ^ ^ ^0.1
scoreboard players set @s[scores={Dialog=282}] VulnerableTime 80
scoreboard players set @s[scores={Dialog=371}] Dialog 240
tag @s remove hit_by_swinging_furniture

tag @s[tag=angry,tag=attack] remove angry