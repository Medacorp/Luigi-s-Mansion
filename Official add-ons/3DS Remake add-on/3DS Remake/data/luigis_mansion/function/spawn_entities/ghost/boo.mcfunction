summon minecraft:marker ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.boo"}',Tags:["affected_by_vacuum","affected_by_ice","ghost","appear","show_health","boo","visible","same_room_players_only","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"boo"},boo:{namespace:"luigis_mansion",id:"null"}}}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.boo"}',Invisible:1b,NoGravity:1b,Marker:1b,HasVisualFire:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":1,"minecraft:custom_model_data":145,"minecraft:custom_data":{model_data:{default:{id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":145}},attacking:{id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":146}},invisible:{id:"minecraft:stone_button"}}}}}],Pose:{Head:[0.0f,0.0f,0.0f]},Tags:["model_piece","boo_model","found_owner","head","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.boo"}',Invisible:1b,NoGravity:1b,Marker:1b,HasVisualFire:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":2,"minecraft:custom_model_data":145,"minecraft:custom_data":{mirror:{components:{"minecraft:damage":3}},model_data:{default:{id:"minecraft:diamond_pickaxe"},attacking:{id:"minecraft:stone_button"},invisible:{id:"minecraft:stone_button"}}}}}],Pose:{Head:[0.0f,0.0f,0.0f]},Tags:["model_piece","boo_model","found_owner","right_arm","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.boo"}',Invisible:1b,NoGravity:1b,Marker:1b,HasVisualFire:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":3,"minecraft:custom_model_data":145,"minecraft:custom_data":{mirror:{components:{"minecraft:damage":2}},model_data:{default:{id:"minecraft:diamond_pickaxe"},attacking:{id:"minecraft:stone_button"},invisible:{id:"minecraft:stone_button"}}}}}],Pose:{Head:[0.0f,0.0f,0.0f]},Tags:["model_piece","boo_model","found_owner","left_arm","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data unique_id.ghost
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result storage luigis_mansion:data unique_id.ghost int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=this_entity,tag=model_piece] GhostNr = @e[tag=this_entity,tag=!model_piece,limit=1] GhostNr
tag @e[tag=this_entity,tag=model_piece] remove this_entity
execute as @e[tag=this_entity,limit=1] store result score @s Health store result score @s LastHealth run scoreboard players set @s MaxHealth 1
scoreboard players set @e[tag=this_entity,limit=1] Dialog 0
scoreboard players set @e[tag=this_entity,limit=1] Move 0
scoreboard players set @e[tag=this_entity,limit=1] HurtTime 0
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players operation @e[tag=this_entity,limit=1] HomeX = @s HomeX
scoreboard players operation @e[tag=this_entity,limit=1] HomeY = @s HomeY
scoreboard players operation @e[tag=this_entity,limit=1] HomeZ = @s HomeZ
scoreboard players set @e[tag=this_entity,limit=1] HeartOffset -2
scoreboard players set @e[tag=this_entity,limit=1] SecondFleeDamage -1
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 5
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 14
execute if data storage luigis_mansion:data entity{say_message:1b} run tag @e[tag=this_entity,limit=1] add say_message
data modify entity @e[tag=this_entity,limit=1] data.boo.namespace set from storage luigis_mansion:data entity.boo.namespace
data modify entity @e[tag=this_entity,limit=1] data.boo.id set from storage luigis_mansion:data entity.boo.id
data modify entity @e[tag=this_entity,limit=1] CustomName set from storage luigis_mansion:data entity.name
function luigis_mansion:spawn_entities/setup/mansion_behavior
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity