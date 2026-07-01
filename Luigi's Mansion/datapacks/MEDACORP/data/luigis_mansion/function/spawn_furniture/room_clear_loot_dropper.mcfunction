summon minecraft:marker ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.room_clear_loot_dropper"},Tags:["furniture","room_clear_loot_dropper","no_reflection","this_entity","dark_room","was_dark_room"],data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"room_clear_loot_dropper"}}
execute unless data storage luigis_mansion:data furniture.loot run tag @e[tag=this_entity,limit=1] add remove_from_existence
execute unless data storage luigis_mansion:data furniture.loot if score #debug_messages Selected matches 1.. run tellraw @a {type:"translatable",translate:"luigis_mansion:message.debug.format",with:[{type:"translatable",translate:"luigis_mansion:message.debug",color:"gold"},{type:"translatable",translate:"luigis_mansion:message.debug.room_clear_loot_dropper",color:"red"}]}
execute if entity @e[tag=this_entity,tag=!remove_from_existence,limit=1] run function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove static
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture