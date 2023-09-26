summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_mansion:item.gold_coin"}',Pose:{Head:[-90.0f,0.0f,0.01f]},NoGravity:1b,Marker:1b,Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:5,CustomModelData:9}}],Tags:["item","affected_by_vacuum","eternal_gold_coin","gold_coin","bounce","eternal","this_entity"],DisabledSlots:2039583}
execute if predicate luigis_mansion:50_50 run data modify entity @e[tag=this_entity,limit=1] Pose.Head[0] set value 90.0f
execute store result entity @e[tag=this_entity,limit=1] Rotation[0] float 1 run random value -180..179
scoreboard players set @e[tag=this_entity,limit=1] ActionTime 4
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 3
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 14
tag @e[tag=this_entity,limit=1] remove this_entity