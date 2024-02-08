summon minecraft:marker ^ ^ ^2.5 {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.boolossus"}',Tags:["ghost","portrait_ghost","visible","affected_by_vacuum","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"boolossus"}}}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.boolossus"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:48,luigis_mansion:{model_data:{default:{tag:{CustomModelData:48}},attacking:{tag:{CustomModelData:63}}}}}}],Pose:{Head:[0.0f,0.0f,0.0f]},Tags:["model_piece","boo_model","found_owner","head","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.boolossus"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:48,luigis_mansion:{mirror:{tag:{Damage:3}},model_data:{default:{id:"minecraft:diamond_pickaxe"},attacking:{id:"minecraft:stone_button"}}}}}],Pose:{Head:[0.0f,0.0f,0.0f]},Tags:["model_piece","boo_model","found_owner","right_arm","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.boolossus"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:48,luigis_mansion:{mirror:{tag:{Damage:2}},model_data:{default:{id:"minecraft:diamond_pickaxe"},attacking:{id:"minecraft:stone_button"}}}}}],Pose:{Head:[0.0f,0.0f,0.0f]},Tags:["model_piece","boo_model","found_owner","left_arm","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data unique_id.ghost
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result storage luigis_mansion:data unique_id.ghost int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=this_entity,tag=model_piece] GhostNr = @e[tag=this_entity,tag=!model_piece,limit=1] GhostNr
tag @e[tag=this_entity,tag=model_piece] remove this_entity
execute as @e[tag=this_entity,limit=1] positioned as @s facing ^ ^ ^-2.5 run teleport @s ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] Wave 0
scoreboard players set @e[tag=this_entity,limit=1] Dialog 0
scoreboard players set @e[tag=this_entity,limit=1] Move 15
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
scoreboard players add #temp Boos 1
execute if score #temp Boos matches ..14 rotated ~24 ~ run function luigis_mansion:spawn_entities/portrait_ghost/boolossus/intro
scoreboard players reset #temp Boos
data remove storage luigis_mansion:data entity