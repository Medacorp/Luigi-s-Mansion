summon minecraft:marker ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_mansion:furniture.lamp"}',Tags:["furniture","no_reflection","lamp","was_dark_room","dark_room","this_entity"]}
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLampForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLampUp 5
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLampModel 0
tag @e[tag=this_entity,limit=1] remove this_entity