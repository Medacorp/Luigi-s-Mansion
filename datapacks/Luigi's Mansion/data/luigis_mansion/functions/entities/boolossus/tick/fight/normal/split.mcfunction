scoreboard players set @s HomeY 2700
execute if entity @a[tag=same_room,tag=expelling_ice,distance=..10,limit=1] run tag @s[scores={Wave=81..599,GhostCount=..7},tag=!attack,tag=!laugh] add fleeing
execute if entity @s[scores={Sound=0,Dialog=0},tag=!frozen,tag=fleeing] run playsound luigis_mansion:entity.boo.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0,Dialog=0},tag=!frozen,tag=fleeing] Sound 40
execute if entity @s[tag=!fleeing,tag=!attack,tag=!laugh,scores={Wave=80,GhostCount=15}] run tag @e[tag=boolossus] add laugh
execute if entity @s[tag=!fleeing,tag=!attack,tag=!laugh,scores={Wave=80,GhostCount=8..14}] if predicate luigis_mansion:boolossus_laugh_chance run tag @e[tag=boolossus] add laugh
execute if entity @s[tag=laugh,scores={Dialog=0}] run function luigis_mansion:entities/boolossus/laugh

execute if entity @e[tag=same_room,tag=!spectator,distance=..0.7,limit=1] run function luigis_mansion:entities/boolossus/collide
execute if entity @s[tag=!fleeing,tag=!attack,tag=!laugh,scores={Wave=81..580,Dialog=0}] if entity @e[tag=same_room,tag=!spectator,distance=..5,limit=1] if predicate luigis_mansion:boolossus_attack_chance run tag @s add attack
execute if entity @s[tag=attack,tag=!laugh,scores={Dialog=0}] run function luigis_mansion:entities/boolossus/attack
tag @s[scores={Wave=..30}] add fleeing
tag @s[scores={Wave=..30}] add fleeing_no_target
execute if entity @s[scores={Wave=..30}] run scoreboard players set #temp Move 20

execute at @s[tag=!fleeing,tag=laugh,scores={Dialog=0,Wave=..599}] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!fleeing,tag=!attack,tag=!laugh,scores={Time=600..,Dialog=0,Wave=..599}] run function luigis_mansion:entities/boolossus/turn
execute at @s[tag=!fleeing,tag=!attack,tag=!laugh,scores={Dialog=0},tag=move_up] run function luigis_mansion:entities/boolossus/move_up_split
execute at @s[tag=!fleeing,tag=!attack,tag=!laugh,scores={Dialog=0},tag=!move_up] run function luigis_mansion:entities/boolossus/move_down_split
tag @s remove wall
scoreboard players set @s[tag=frozen,scores={Dialog=0,Wave=41..599}] Dialog 100
scoreboard players remove @s[scores={Dialog=1..}] Dialog 1
scoreboard players set @s[scores={Wave=600..}] Dialog 0
data merge entity @s[scores={Dialog=1..},tag=!vacuumable] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:47}}],HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:47}},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:47}}],Pose:{RightArm:[-90.0f,90.0f,0.0f],LeftArm:[-90.0f,-90.0f,0.0f],Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={Dialog=0},tag=vacuumable] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:48}}],HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:48}},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:48}}],Pose:{RightArm:[-90.0f,90.0f,0.0f],LeftArm:[-90.0f,-90.0f,0.0f],Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[tag=vacuumable] if block ~ ~0.8 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~-0.2 ~
tag @s[scores={Dialog=1..}] add vacuumable
tag @s[scores={Dialog=0}] remove vacuumable
tag @s remove frozen

execute if entity @s[tag=fleeing,tag=!laugh,tag=!attack,scores={Dialog=0,Wave=..599}] run function luigis_mansion:entities/boolossus/flee

execute at @s[tag=!fleeing,tag=!laugh,tag=!attack] run function luigis_mansion:animations/boo/idle

tag @s[tag=!fleeing] remove fleeing_no_target
tag @s[tag=fleeing] remove fleeing

scoreboard players add @s[scores={Wave=..80}] Wave 1
execute at @s if entity @e[tag=boolossus,distance=0.1..,limit=1] run scoreboard players add @s Wave 1
execute at @s unless entity @e[tag=boolossus,distance=0.1..,limit=1] run tag @s add portrait_ghost_pop
execute at @s[scores={Wave=600..}] unless entity @e[tag=boolossus,distance=0.1..,limit=1] run scoreboard players set @s Wave 81
execute if entity @s[scores={Wave=600}] unless entity @e[tag=to_me,limit=1] run tag @s add to_me
execute at @s[scores={Wave=600..},tag=!to_me] facing entity @e[tag=to_me,limit=1] feet run teleport @s ~ ~ ~ ~ ~
teleport @s[scores={Wave=600..},tag=to_me] ~ ~0.1 ~
execute if entity @s[scores={Wave=610..},tag=to_me] run particle minecraft:campfire_cosy_smoke ~ ~3 ~ 0.4 0.4 0.4 0 10 force
scoreboard players set @s[scores={Wave=600..}] Move 100
execute if entity @s[scores={Wave=640},tag=to_me] run function luigis_mansion:entities/boolossus/merge
