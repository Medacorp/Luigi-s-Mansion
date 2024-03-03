summon minecraft:marker ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.fake_door"}',Tags:["door","affected_by_interact","affected_by_fire","affected_by_water","hurt_by_fire","ghost","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"fake_door"}}}
execute if data storage luigis_mansion:data entity.door{left_hinge:1b} run summon minecraft:armor_stand ^0.125 ^ ^0.44 {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.fake_door"}',Pose:{Head:[0.0f,0.0f,0.0f]},Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,HandItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:16,CustomModelData:0}}],Tags:["fake_door_model","found_owner","frame","left_hinge","this_entity"],DisabledSlots:2039583}
execute if data storage luigis_mansion:data entity.door{left_hinge:1b} run summon minecraft:armor_stand ^0.125 ^ ^0.44 {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.fake_door"}',Pose:{Head:[0.0f,0.0f,0.0f]},Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,HandItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],Tags:["fake_door_model","found_owner","left","this_entity"],DisabledSlots:2039583}
execute unless data storage luigis_mansion:data entity.door{left_hinge:1b} run summon minecraft:armor_stand ^-0.125 ^ ^0.44 {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.fake_door"}',Pose:{Head:[0.0f,0.0f,0.0f]},Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,HandItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:16,CustomModelData:0}}],Tags:["fake_door_model","found_owner","frame","this_entity"],DisabledSlots:2039583}
execute unless data storage luigis_mansion:data entity.door{left_hinge:1b} run summon minecraft:armor_stand ^-0.125 ^ ^0.44 {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.fake_door"}',Pose:{Head:[0.0f,0.0f,0.0f]},Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,HandItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],Tags:["fake_door_model","found_owner","right","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity] positioned as @s run teleport @s ~ ~ ~ ~ 0
execute as @e[tag=this_entity,tag=model_piece,tag=!frame,limit=1] run function luigis_mansion:spawn_furniture/door/model with storage luigis_mansion:data entity.door.model
execute if entity @e[tag=this_entity,tag=model_piece,tag=!frame,tag=dead,limit=1] run tag @e[tag=this_entity] add dead
execute if data storage luigis_mansion:data entity.door.frame as @e[tag=this_entity,tag=model_piece,tag=frame,limit=1] run function luigis_mansion:spawn_furniture/door/frame with storage luigis_mansion:data entity.door.frame
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data unique_id.ghost
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result storage luigis_mansion:data unique_id.ghost int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=this_entity,tag=model_piece] GhostNr = @e[tag=this_entity,tag=!model_piece,limit=1] GhostNr
tag @e[tag=this_entity,tag=model_piece,limit=1] remove this_entity
execute if data storage luigis_mansion:data entity.door{left_hinge:1b} run tag @e[tag=this_entity,limit=1] add left
execute as @e[tag=this_entity,limit=1] store result score @s Health store result score @s LastHealth run data get storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.fake_door.health
data modify entity @e[tag=this_entity,limit=1] data.loot set from storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.fake_door.loot
data modify entity @e[tag=this_entity,limit=1] data.damage set from storage luigis_mansion:data current_state.current_data.ghosts.luigis_mansion.fake_door.damage
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] AnimationProgress 0
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeWidth 12
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeHeight 20
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 10
scoreboard players set @e[tag=this_entity,limit=1] ElementHurtTime 0
function luigis_mansion:spawn_entities/setup/scan_message
function luigis_mansion:spawn_entities/setup/health
function luigis_mansion:spawn_entities/setup/loot
function luigis_mansion:spawn_entities/setup/damage
function luigis_mansion:spawn_entities/setup/tags
execute if entity @e[tag=this_entity,tag=dead,limit=1] if score #debug_messages Selected matches 1.. run tellraw @a {"type":"translatable","translate":"luigis_mansion:message.debug.format","with":[{"type":"translatable","translate":"luigis_mansion:message.debug","color":"gold"},{"type":"translatable","translate":"luigis_mansion:message.debug.door","with":[{"type":"selector","selector":"@e[tag=this_entity,limit=1]"},{"type":"selector","selector":"@e[tag=this_entity,limit=1]"}]}]}
execute unless entity @e[tag=this_entity,tag=dead,limit=1] run function luigis_mansion:spawn_entities/setup/debug_spawn
data remove storage luigis_mansion:data entity
tag @e[tag=this_entity] remove this_entity