summon minecraft:marker ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_mansion:furniture.elemental_source"}',Tags:["furniture","elemental_source","can_be_fire_elemental_source","can_be_water_elemental_source","can_be_ice_elemental_source","no_reflection","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ 0
function luigis_mansion:spawn_furniture/setup/fire_elemental_source
function luigis_mansion:spawn_furniture/setup/water_elemental_source
function luigis_mansion:spawn_furniture/setup/ice_elemental_source
function luigis_mansion:spawn_furniture/setup/tags
function luigis_mansion:spawn_furniture/setup/position
execute unless data storage luigis_mansion:data furniture.fire_elemental_source unless data storage luigis_mansion:data furniture.water_elemental_source unless data storage luigis_mansion:data furniture.ice_elemental_source run tag @e[tag=this_entity,limit=1] add remove_from_existence
execute if data storage luigis_mansion:data furniture.fire_elemental_source if data storage luigis_mansion:data furniture.water_elemental_source run tag @e[tag=this_entity,limit=1] add remove_from_existence
execute if data storage luigis_mansion:data furniture.fire_elemental_source if data storage luigis_mansion:data furniture.ice_elemental_source run tag @e[tag=this_entity,limit=1] add remove_from_existence
execute if data storage luigis_mansion:data furniture.water_elemental_source if data storage luigis_mansion:data furniture.ice_elemental_source run tag @e[tag=this_entity,limit=1] add remove_from_existence
execute if entity @e[tag=this_entity,tag=remove_from_existence,limit=1] if score #debug_messages Selected matches 1 run tellraw @a {"translate":"luigis_mansion:message.debug.format","with":[{"translate":"luigis_mansion:message.debug","color":"gold"},{"translate":"luigis_mansion:message.debug.elemental_source","color":"red"}]}
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeRange 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElementLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElementUp 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElementForward 0
execute if entity @e[tag=this_entity,tag=!remove_from_existence,limit=1] if score #debug_messages Selected matches 1 run tellraw @a {"translate":"luigis_mansion:message.debug.format","with":[{"translate":"luigis_mansion:message.debug","color":"gold"},{"translate":"luigis_mansion:message.debug.spawned_furniture","with":[{"selector":"@e[tag=this_entity,limit=1]"}]}]}
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture