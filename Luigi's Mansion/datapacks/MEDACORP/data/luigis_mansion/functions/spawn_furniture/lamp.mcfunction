summon minecraft:marker ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_mansion:furniture.lamp"}',Tags:["furniture","no_reflection","lamp","was_dark_room","dark_room","this_entity"]}
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightUp 5
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightStrength 15
execute if entity @e[tag=this_entity,limit=1] if score #debug_messages Selected matches 2.. run tellraw @a {"translate":"luigis_mansion:message.debug.format","with":[{"translate":"luigis_mansion:message.debug","color":"gold"},{"translate":"luigis_mansion:message.debug.spawned_furniture","with":[{"selector":"@e[tag=this_entity,limit=1]"}]}]}
tag @e[tag=this_entity,limit=1] remove this_entity