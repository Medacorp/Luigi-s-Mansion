summon minecraft:armor_stand ^ ^ ^2.5 {CustomName:'{"translate":"luigis_mansion:entity.boolossus"}',Invisible:1b,NoGravity:1b,CustomNameVisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:65}}],HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:65}},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:65}}],Pose:{RightArm:[-90.0f,90.0f,0.0f],LeftArm:[-90.0f,-90.0f,0.0f],Head:[0.0f,0.0f,0.0f]},Tags:["boolossus","ghost","this_entity"]}
execute as @e[tag=this_entity,limit=1] positioned as @s facing ^ ^ ^-3 run teleport @s ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] Wave 0
scoreboard players set @e[tag=this_entity,limit=1] Dialog 0
scoreboard players set @e[tag=this_entity,limit=1] Move 3
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
tag @e[tag=this_entity,limit=1] remove this_entity
scoreboard players add #temp Boos 1
execute if score #temp Boos matches ..14 rotated ~24 ~ run function luigis_mansion:spawn_entities/portrait_ghost/boolossus/intro
scoreboard players reset #temp Boos