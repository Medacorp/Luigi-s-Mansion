summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"translate":"e3_demo:item.ghost_coin"}',Pose:{Head:[0.0f,0.0f,0.01f]},Invisible:1b,Silent:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{luigis_mansion:{namespace:"e3_demo",id:"ghost_coin",physics_offset:1.1d,pick_up_range:0.7f,particle:{chance:400,name:"minecraft:crit"}},Unbreakable:1b,Damage:5,CustomModelData:34}}],Tags:["item","generic","no_capture_sound","affected_by_vacuum","this_entity"],DisabledSlots:2039583}
execute store result entity @e[tag=this_entity,limit=1] Rotation[0] float 1 run random value -180..179
execute store result entity @e[tag=this_entity,limit=1] Rotation[1] float 1 run random value -90..0
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 7
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 14
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity