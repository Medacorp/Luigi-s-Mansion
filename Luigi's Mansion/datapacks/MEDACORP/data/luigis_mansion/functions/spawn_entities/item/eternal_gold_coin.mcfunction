summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:item.gold_coin"}',Pose:{Head:[-90.0f,0.0f,0.01f]},NoGravity:1b,Marker:1b,Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{luigis_mansion:{namespace:"luigis_mansion",id:"gold_coin",physics_offset:1.4d,pick_up_range:0.7f,particle:{chance:400,name:"minecraft:crit"}},Unbreakable:1b,Damage:5,CustomModelData:9}}],Tags:["item","coin","no_capture_sound","affected_by_vacuum","eternal_gold_coin","eternal","this_entity"],DisabledSlots:2039583}
execute if predicate luigis_mansion:50_50 run data modify entity @e[tag=this_entity,limit=1] Pose.Head[0] set value 90.0f
execute store result entity @e[tag=this_entity,limit=1] Rotation[0] float 1 run random value -180..179
execute store result entity @e[tag=this_entity,limit=1] Rotation[1] float 1 run random value -90..0
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 3
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 14
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity