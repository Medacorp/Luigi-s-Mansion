execute if data storage luigis_mansion:data furniture.door.left_hinge run summon minecraft:armor_stand ^0.125 ^ ^0.44 {CustomName:'{"translate":"luigis_mansion:furniture.door"}',Pose:{RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f]},Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:16,CustomModelData:0}},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:16,CustomModelData:0}}],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{}}],Tags:["furniture","door","affected_by_interact","affected_by_vacuum","searchable_by_vacuum","standing_furniture","left","this_entity"],DisabledSlots:2039583}
execute unless data storage luigis_mansion:data furniture.door.left_hinge run summon minecraft:armor_stand ^-0.125 ^ ^0.44 {CustomName:'{"translate":"luigis_mansion:furniture.door"}',Pose:{RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f]},Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:16,CustomModelData:0}},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:16,CustomModelData:0}}],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{}}],Tags:["furniture","door","affected_by_interact","affected_by_vacuum","searchable_by_vacuum","standing_furniture","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,limit=1] positioned as @s run teleport @s ~ ~ ~ ~ 0
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] AnimationProgress 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 12
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 20
execute if data storage luigis_mansion:data furniture.door.push run tag @e[tag=this_entity,limit=1] add push
execute as @e[tag=this_entity,limit=1] run function luigis_mansion:spawn_furniture/door/model with storage luigis_mansion:data furniture.door.model
execute if data storage luigis_mansion:data furniture.door.frame as @e[tag=this_entity,limit=1] run function luigis_mansion:spawn_furniture/door/frame with storage luigis_mansion:data furniture.door.frame
execute if data storage luigis_mansion:data furniture.door{blocked:1b} run tag @e[tag=this_entity,limit=1] add blockade
execute if data storage luigis_mansion:data furniture.door{blocked:2b} run tag @e[tag=this_entity,limit=1] add area_blockade
execute if data storage luigis_mansion:data furniture.door{blocked:3b} run tag @e[tag=this_entity,limit=1] add barricade
execute if data storage luigis_mansion:data furniture.door{blocked:4b} run tag @e[tag=this_entity,limit=1] add unopenable
execute if data storage luigis_mansion:data furniture.door.burning as @e[tag=this_entity,limit=1] run function luigis_mansion:spawn_furniture/door/burning with storage luigis_mansion:data furniture.door
execute if data storage luigis_mansion:data furniture.door.key as @e[tag=this_entity,limit=1] run function luigis_mansion:spawn_furniture/door/key with storage luigis_mansion:data furniture.door
execute if data storage luigis_mansion:data furniture.door.other_end run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.other_end set from storage luigis_mansion:data furniture.door.other_end
execute if data storage luigis_mansion:data furniture.door.go_through_command run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.go_through_command set from storage luigis_mansion:data furniture.door.go_through_command
function luigis_mansion:spawn_furniture/setup/sound
function luigis_mansion:spawn_furniture/setup/scan_message
function luigis_mansion:spawn_furniture/setup/tags
execute as @e[tag=this_entity,limit=1] store result score @s PositionX run data get entity @s Pos[0] 10
execute as @e[tag=this_entity,limit=1] store result score @s PositionY run data get entity @s Pos[1] 10
execute as @e[tag=this_entity,limit=1] store result score @s PositionZ run data get entity @s Pos[2] 10
#scoreboard players add @e[tag=this_entity,type=minecraft:armor_stand,limit=1] PositionY 14
execute if entity @e[tag=this_entity,tag=dead,limit=1] if score #debug_messages Selected matches 1.. run tellraw @a {"translate":"luigis_mansion:message.debug.format","with":[{"translate":"luigis_mansion:message.debug","color":"gold"},{"translate":"luigis_mansion:message.debug.door","with":[{"selector":"@e[tag=this_entity,limit=1]"},{"selector":"@e[tag=this_entity,limit=1]"}]}]}
execute unless entity @e[tag=this_entity,tag=dead,limit=1] if score #debug_messages Selected matches 2.. run tellraw @a {"translate":"luigis_mansion:message.debug.format","with":[{"translate":"luigis_mansion:message.debug","color":"gold"},{"translate":"luigis_mansion:message.debug.spawned_furniture","with":[{"selector":"@e[tag=this_entity,limit=1]"}]}]}
data remove storage luigis_mansion:data furniture
tag @e[tag=this_entity,limit=1] remove this_entity