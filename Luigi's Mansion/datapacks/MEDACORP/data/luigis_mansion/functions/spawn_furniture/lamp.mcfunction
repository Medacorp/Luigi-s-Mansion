summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:furniture.lamp"}',Marker:1b,Tags:["furniture","no_reflection","lamp","was_dark_room","dark_room","this_entity"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"empty"}}],NoGravity:1b,Invisible:1b,DisabledSlots:2039583}
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightUp 5
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightStrength 15
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightModel 0
function luigis_mansion:spawn_furniture/setup/debug_spawn
tag @e[tag=this_entity,limit=1] remove this_entity