summon minecraft:armor_stand ~ ~-1 ~ {CustomName:'{"translate":"luigis_mansion:item.gold_coin"}',Pose:{Head:[0.0f,0.0f,0.01f]},Invisible:1b,Silent:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:5,CustomModelData:9}}],Tags:["item","affected_by_vacuum","gold_coin","this_entity"],DisabledSlots:2039583}
execute store result entity @e[tag=this_entity,limit=1] Rotation[0] float 1 run random value -180..179
execute store result entity @e[tag=this_entity,limit=1] Rotation[1] float 1 run random value -90..0
execute as @e[tag=this_entity,limit=1] store result entity @s Rotation[1] float 1 run data get entity @s Pose.Head[0]
execute if predicate luigis_mansion:50_50 as @e[tag=this_entity,limit=1] store result entity @s Pose.Head[0] float -1 run data get entity @s Pose.Head[0]
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 3
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 14