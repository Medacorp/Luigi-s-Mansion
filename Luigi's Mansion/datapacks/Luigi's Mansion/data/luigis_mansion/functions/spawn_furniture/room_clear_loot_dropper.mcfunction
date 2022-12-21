summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_mansion:furniture.room_clear_loot_dropper"}',Tags:["furniture","no_reflection","this_entity","room_clear_loot_dropper","dark_room","was_dark_room"],Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{}}],NoGravity:1b,Invisible:1b,DisabledSlots:2039583}
function luigis_mansion:spawn_furniture/setup/loot
execute unless data storage luigis_mansion:data furniture.loot run tag @e[tag=this_entity,limit=1] add remove_from_existence
execute unless data storage luigis_mansion:data furniture.loot if score #debug_messages Selected matches 1.. run tellraw @a {"translate":"luigis_mansion:message.debug.format","with":[{"translate":"luigis_mansion:message.debug","color":"gold"},{"translate":"luigis_mansion:message.debug.room_clear_loot_dropper","color":"red"}]}
scoreboard players set @e[tag=this_entity,limit=1] FurnitureUp 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureForward 0
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture