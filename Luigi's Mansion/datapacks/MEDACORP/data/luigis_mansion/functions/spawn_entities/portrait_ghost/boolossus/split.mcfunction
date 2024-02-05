summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.boolossus"}',Invisible:1b,NoGravity:1b,Marker:0b,CustomNameVisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:48,luigis_mansion:{entity:{namespace:"luigis_mansion",id:"boolossus"},model_data:{default:{tag:{CustomModelData:48}},attacking:{tag:{CustomModelData:63}},frozen:{tag:{CustomModelData:47}}}}}}],HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{invisible:"minecraft:stone_button",visible:"minecraft:diamond_pickaxe",Unbreakable:1b,Damage:2,CustomModelData:48,luigis_mansion:{mirror:{tag:{Damage:3}},model_data:{default:{tag:{CustomModelData:48}},frozen:{tag:{CustomModelData:47}}}}}},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{invisible:"minecraft:stone_button",visible:"minecraft:diamond_pickaxe",Unbreakable:1b,Damage:3,CustomModelData:48,luigis_mansion:{mirror:{tag:{Damage:2}},model_data:{default:{tag:{CustomModelData:48}},frozen:{tag:{CustomModelData:47}}}}}}],Pose:{RightArm:[0.0f,0.0f,90.0f],RightArm:[0.0f,0.0f,-90.0f],Head:[0.0f,0.0f,0.0f]},Tags:["affected_by_vacuum","affected_by_ice","ghost","portrait_ghost","visible","split","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] Wave 0
scoreboard players set @e[tag=this_entity,limit=1] VanishTime -1
execute as @e[tag=this_entity,limit=1] store result score @s MaxHealth run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.boolossus.max_health
scoreboard players set @e[tag=this_entity,limit=1] ActionTime 1
scoreboard players operation @e[tag=this_entity,limit=1] Room = #temp Room
scoreboard players set @e[tag=this_entity,limit=1] Dialog 0
execute as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.boolossus.speed
data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.luigis_mansion.loot set from storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.boolossus.loot
data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.luigis_mansion.damage set from storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.boolossus.damage
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 5
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 14
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity