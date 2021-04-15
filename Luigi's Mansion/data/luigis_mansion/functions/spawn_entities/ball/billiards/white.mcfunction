summon minecraft:armor_stand ~ ~-1.1875 ~ {Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["ball","billiards_ball","white","this_entity"],ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:21}}],NoGravity:1b,Invisible:1b,DisabledSlots:2039583}
execute as @e[tag=this_entity,limit=1] positioned as @s run teleport @s ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] SpawnTime 0
tag @e[tag=this_entity,limit=1] remove this_entity