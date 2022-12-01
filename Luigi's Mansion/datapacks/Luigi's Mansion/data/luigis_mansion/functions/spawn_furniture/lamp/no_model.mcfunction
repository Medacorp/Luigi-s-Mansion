summon minecraft:marker ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_mansion:furniture.lamp"}',Tags:["furniture","lamp","was_dark_room","dark_room","scan_ignore","this_entity"]}
scoreboard players set @e[tag=this_entity,limit=1] LampForward 0
scoreboard players set @e[tag=this_entity,limit=1] LampUp 5
scoreboard players set @e[tag=this_entity,limit=1] LampModel 0
tag @e[tag=this_entity,limit=1] remove this_entity