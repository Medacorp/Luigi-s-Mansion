summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:furniture.elemental_source"}',Marker:1b,Tags:["furniture","elemental_source","can_be_fire_elemental_source","can_be_water_elemental_source","can_be_ice_elemental_source","no_reflection","this_entity"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"empty"}}}],NoGravity:1b,Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElementLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElementUp 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElementForward 0
function luigis_mansion:spawn_furniture/setup/fire_elemental_source
function luigis_mansion:spawn_furniture/setup/water_elemental_source
function luigis_mansion:spawn_furniture/setup/ice_elemental_source
function luigis_mansion:spawn_furniture/setup/particles
function luigis_mansion:spawn_furniture/setup/room
function luigis_mansion:spawn_furniture/setup/tags
function luigis_mansion:spawn_furniture/setup/position
execute unless data storage luigis_mansion:data furniture.fire_elemental_source unless data storage luigis_mansion:data furniture.water_elemental_source unless data storage luigis_mansion:data furniture.ice_elemental_source run tag @e[tag=this_entity,limit=1] add remove_from_existence
execute if data storage luigis_mansion:data furniture.fire_elemental_source if data storage luigis_mansion:data furniture.water_elemental_source run tag @e[tag=this_entity,limit=1] add remove_from_existence
execute if data storage luigis_mansion:data furniture.fire_elemental_source if data storage luigis_mansion:data furniture.ice_elemental_source run tag @e[tag=this_entity,limit=1] add remove_from_existence
execute if data storage luigis_mansion:data furniture.water_elemental_source if data storage luigis_mansion:data furniture.ice_elemental_source run tag @e[tag=this_entity,limit=1] add remove_from_existence
execute if entity @e[tag=this_entity,tag=remove_from_existence,limit=1] if score #debug_messages Selected matches 1.. run tellraw @a {"type":"translatable","translate":"luigis_mansion:message.debug.format","with":[{"type":"translatable","translate":"luigis_mansion:message.debug","color":"gold"},{"type":"translatable","translate":"luigis_mansion:message.debug.elemental_source","color":"red"}]}
execute if data storage luigis_mansion:data furniture.hitbox.radius store result score @e[tag=this_entity,limit=1] FurnitureSizeRadius run data get storage luigis_mansion:data furniture.hitbox.radius
execute if data storage luigis_mansion:data furniture.hitbox.box store result score @e[tag=this_entity,limit=1] FurnitureSizeWidth run data get storage luigis_mansion:data furniture.hitbox.box.width
execute if data storage luigis_mansion:data furniture.hitbox.box store result score @e[tag=this_entity,limit=1] FurnitureSizeHeight run data get storage luigis_mansion:data furniture.hitbox.box.height
execute if data storage luigis_mansion:data furniture.hitbox.rotated_box store result score @e[tag=this_entity,limit=1] FurnitureSizeLeft run data get storage luigis_mansion:data furniture.hitbox.rotated_box.left
execute if data storage luigis_mansion:data furniture.hitbox.rotated_box store result score @e[tag=this_entity,limit=1] FurnitureSizeUp run data get storage luigis_mansion:data furniture.hitbox.rotated_box.up
execute if data storage luigis_mansion:data furniture.hitbox.rotated_box store result score @e[tag=this_entity,limit=1] FurnitureSizeForward run data get storage luigis_mansion:data furniture.hitbox.rotated_box.forward
execute if data storage luigis_mansion:data furniture.hitbox{type:"hanging"} run tag @e[tag=this_entity,limit=1] add hanging_furniture
execute if data storage luigis_mansion:data furniture.hitbox{type:"standing"} run tag @e[tag=this_entity,limit=1] add standing_furniture
# type hanging -> align the top of the area with the provided coordinate, type standing -> same but bottom, other/none provided -> area is centered in height
execute unless data storage luigis_mansion:data furniture.hitbox.radius unless data storage luigis_mansion:data furniture.hitbox.box unless data storage luigis_mansion:data furniture.hitbox.rotated_box run tag @e[tag=this_entity,limit=1] add remove_from_existence
execute unless data storage luigis_mansion:data furniture.hitbox.radius unless data storage luigis_mansion:data furniture.hitbox.box unless data storage luigis_mansion:data furniture.hitbox.rotated_box if score #debug_messages Selected matches 1.. run tellraw @a {"type":"translatable","translate":"luigis_mansion:message.debug.format","with":[{"type":"translatable","translate":"luigis_mansion:message.debug","color":"gold"},{"type":"translatable","translate":"luigis_mansion:message.debug.elemental_source.hitbox","color":"red"}]}
execute if entity @e[tag=this_entity,tag=!remove_from_existence,limit=1] run function luigis_mansion:spawn_furniture/setup/debug_spawn
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture