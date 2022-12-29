summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_mansion:furniture.scan_area"}',Tags:["furniture","no_reflection","scan_area","this_entity"],Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{}}],NoGravity:1b,Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ ~
function luigis_mansion:spawn_furniture/setup/scan_message
execute if data storage luigis_mansion:data furniture.scan_area.radius store result score @e[tag=this_entity,limit=1] FurnitureRadius run data get storage luigis_mansion:data furniture.scan_area.radius
execute if data storage luigis_mansion:data furniture.scan_area.box store result score @e[tag=this_entity,limit=1] FurnitureSizeW run data get storage luigis_mansion:data furniture.scan_area.box.width
execute if data storage luigis_mansion:data furniture.scan_area.box store result score @e[tag=this_entity,limit=1] FurnitureSizeH run data get storage luigis_mansion:data furniture.scan_area.box.height
execute if data storage luigis_mansion:data furniture.scan_area.rotated_box store result score @e[tag=this_entity,limit=1] FurnitureSizeL run data get storage luigis_mansion:data furniture.scan_area.rotated_box.left
execute if data storage luigis_mansion:data furniture.scan_area.rotated_box store result score @e[tag=this_entity,limit=1] FurnitureSizeU run data get storage luigis_mansion:data furniture.scan_area.rotated_box.up
execute if data storage luigis_mansion:data furniture.scan_area.rotated_box store result score @e[tag=this_entity,limit=1] FurnitureSizeF run data get storage luigis_mansion:data furniture.scan_area.rotated_box.forward
execute if data storage luigis_mansion:data furniture.scan_area{type:"hanging"} run tag @e[tag=this_entity,limit=1] add hanging_furniture
execute if data storage luigis_mansion:data furniture.scan_area{type:"standing"} run tag @e[tag=this_entity,limit=1] add standing_furniture
# type hanging -> align the top of the area with the provided coordinate, type standing -> same but bottom, other/none provided -> area is centered in height
execute unless data storage luigis_mansion:data furniture.scan_area.radius unless data storage luigis_mansion:data furniture.scan_area.box unless data storage luigis_mansion:data furniture.scan_area.rotated_box run tag @e[tag=this_entity,limit=1] add remove_from_existence
execute unless data storage luigis_mansion:data furniture.scan_area.radius unless data storage luigis_mansion:data furniture.scan_area.box unless data storage luigis_mansion:data furniture.scan_area.rotated_box if score #debug_messages Selected matches 1.. run tellraw @a {"translate":"luigis_mansion:message.debug.format","with":[{"translate":"luigis_mansion:message.debug","color":"gold"},{"translate":"luigis_mansion:message.debug.scan_area","color":"red"}]}
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture