summon minecraft:armor_stand ~ ~-1.3 ~ {CustomName:'{"translate":"luigis_mansion:entity.cobweb"}',Pose:{Head:[0.01f,0.0f,0.0f]},Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:19,CustomModelData:0}}],Tags:["cobweb","this_entity","scan_ignore"],DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.3 ~ ~ ~
execute as @e[tag=this_entity,limit=1] run data modify entity @s Pose.Head[0] set from entity @s Rotation[1]
scoreboard players set @e[tag=this_entity,limit=1] VacuumTime 0
tag @e[tag=this_entity,limit=1] remove this_entity