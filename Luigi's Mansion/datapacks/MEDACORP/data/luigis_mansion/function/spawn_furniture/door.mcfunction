execute if data storage luigis_mansion:data furniture.door{left_hinge:1b} run summon minecraft:armor_stand ^ ^ ^0.44 {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.door"},Pose:{Head:[0.0f,0.0f,0.0f]},Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"door",key_model:{"minecraft:item_model":"luigis_mansion:key","minecraft:custom_model_data":{strings:["default"]}}},equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/door_frame/none"}}},Tags:["furniture","affected_by_interact","affected_by_vacuum","shaken_by_vacuum","standing_furniture","left_hinge","door","no_dust","no_loot","same_room_players_only","this_entity"],DisabledSlots:2039583}
execute if data storage luigis_mansion:data furniture.door{left_hinge:1b} run summon minecraft:armor_stand ^ ^ ^0.44 {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.door"},Pose:{Head:[0.0f,90.0f,0.0f]},Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:empty","minecraft:custom_model_data":{strings:["normal"]}}}},Tags:["model_piece","door_model","found_owner","left","dead","this_entity"],DisabledSlots:2039583}
execute unless data storage luigis_mansion:data furniture.door{left_hinge:1b} run summon minecraft:armor_stand ^ ^ ^0.44 {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.door"},Pose:{Head:[0.0f,0.0f,0.0f]},Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"door",key_model:{"minecraft:item_model":"luigis_mansion:key","minecraft:custom_model_data":{strings:["default"]}}},equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/door_frame/none"}}},Tags:["furniture","affected_by_interact","affected_by_vacuum","shaken_by_vacuum","standing_furniture","door","no_dust","no_loot","same_room_players_only","this_entity"],DisabledSlots:2039583}
execute unless data storage luigis_mansion:data furniture.door{left_hinge:1b} run summon minecraft:armor_stand ^ ^ ^0.44 {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.door"},Pose:{Head:[0.0f,-90.0f,0.0f]},Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:empty","minecraft:custom_model_data":{strings:["normal"]}}}},Tags:["model_piece","door_model","found_owner","right","dead","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity] positioned as @s run teleport @s ~ ~ ~ ~ 0
execute as @e[tag=this_entity,tag=model_piece,limit=1] run function luigis_mansion:spawn_furniture/door/model with storage luigis_mansion:data furniture.door.model
execute if entity @e[tag=this_entity,tag=model_piece,tag=dead,limit=1] run tag @e[tag=this_entity] add dead
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result score @s PassiveNr run data get storage luigis_mansion:data unique_id.passive
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result storage luigis_mansion:data unique_id.passive int 1 run scoreboard players add @s PassiveNr 1
scoreboard players operation @e[tag=this_entity,tag=model_piece] PassiveNr = @e[tag=this_entity,tag=!model_piece,limit=1] PassiveNr
execute if data storage luigis_mansion:data furniture.door{push:1b} run tag @e[tag=this_entity] add push
tag @e[tag=this_entity,tag=model_piece] remove this_entity
scoreboard players set @e[tag=this_entity,limit=1] AnimationProgress 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 12
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 20
execute if data storage luigis_mansion:data furniture.door.frame as @e[tag=this_entity,limit=1] run function luigis_mansion:spawn_furniture/door/frame with storage luigis_mansion:data furniture.door.frame
execute if data storage luigis_mansion:data furniture.door{blocked:1b} run tag @e[tag=this_entity,limit=1] add blockade
execute if data storage luigis_mansion:data furniture.door{blocked:2b} run tag @e[tag=this_entity,limit=1] add area_blockade
execute if data storage luigis_mansion:data furniture.door{blocked:3b} run tag @e[tag=this_entity,limit=1] add barricade
execute if data storage luigis_mansion:data furniture.door{blocked:4b} run tag @e[tag=this_entity,limit=1] add unopenable
execute if data storage luigis_mansion:data furniture.door.burning as @e[tag=this_entity,limit=1] run function luigis_mansion:spawn_furniture/door/burning with storage luigis_mansion:data furniture.door
execute if data storage luigis_mansion:data furniture.door.key as @e[tag=this_entity,limit=1] run function luigis_mansion:spawn_furniture/door/key with storage luigis_mansion:data furniture.door
execute if data storage luigis_mansion:data furniture.door.key_model as @e[tag=this_entity,limit=1] run function luigis_mansion:spawn_furniture/door/key_model with storage luigis_mansion:data furniture.door
execute if data storage luigis_mansion:data furniture.door.other_end run data modify entity @e[tag=this_entity,limit=1] data.other_end set from storage luigis_mansion:data furniture.door.other_end
execute if data storage luigis_mansion:data furniture.door.go_through_command run data modify entity @e[tag=this_entity,limit=1] data.go_through_command set from storage luigis_mansion:data furniture.door.go_through_command
function luigis_mansion:spawn_furniture/setup/sound
function luigis_mansion:spawn_furniture/setup/scan_result
function luigis_mansion:spawn_furniture/setup/room
function luigis_mansion:spawn_furniture/setup/tags
execute as @e[tag=this_entity,limit=1] store result score @s PositionX run data get entity @s Pos[0] 10
execute as @e[tag=this_entity,limit=1] store result score @s PositionY run data get entity @s Pos[1] 10
execute as @e[tag=this_entity,limit=1] store result score @s PositionZ run data get entity @s Pos[2] 10
#scoreboard players add @e[tag=this_entity,type=minecraft:armor_stand,limit=1] PositionY 14
execute if entity @e[tag=this_entity,tag=dead,limit=1] if score #debug_messages Selected matches 1.. run tellraw @a {type:"translatable",translate:"luigis_mansion:message.debug.format",with:[{type:"translatable",translate:"luigis_mansion:message.debug",color:"gold"},{type:"translatable",translate:"luigis_mansion:message.debug.door",with:[{type:"selector",selector:"@e[tag=this_entity,limit=1]"},{type:"selector",selector:"@e[tag=this_entity,limit=1]"}]}]}
execute unless entity @e[tag=this_entity,tag=dead,limit=1] run function luigis_mansion:spawn_furniture/setup/debug_spawn
data remove storage luigis_mansion:data furniture
tag @e[tag=this_entity,limit=1] remove this_entity