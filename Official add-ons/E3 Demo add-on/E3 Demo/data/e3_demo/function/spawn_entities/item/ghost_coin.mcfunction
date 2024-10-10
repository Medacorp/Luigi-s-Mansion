summon minecraft:armor_stand ~ ~-1.1 ~ {CustomName:'{"type":"translatable","translate":"e3_demo:item.ghost_coin"}',Pose:{Head:[0.0f,0.0f,0.01f]},Invisible:1b,Silent:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:custom_data":{entity:{namespace:"luigis_mansion",id:"item"},physics:{namespace:"luigis_mansion",id:"generic"},item:{namespace:"e3_demo",id:"ghost_coin"},physics_offset:1.1d,pick_up_range:0.7f,particle:{chance:400,name:"minecraft:crit"}},"minecraft:unbreakable":{},"minecraft:item_model":"luigis_mansion:entity/ghost_coin"}}],Tags:["item","no_capture_sound","affected_by_vacuum","same_room_players_only","this_entity"],DisabledSlots:2039583}
execute store result entity @e[tag=this_entity,limit=1] Rotation[0] float 1 run random value -180..179
execute store result entity @e[tag=this_entity,limit=1] Rotation[1] float 1 run random value -90..0
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 3
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 14
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity