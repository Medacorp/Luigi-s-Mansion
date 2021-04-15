summon minecraft:armor_stand ^ ^1 ^0.3 {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:0}}],Small:1b,Invisible:1b,Tags:["banana_peel","new"]}
summon minecraft:area_effect_cloud ^ ^1 ^0.4 {Duration:1,Tags:["new"]}
execute as @e[type=minecraft:armor_stand,tag=new,limit=1] run function luigis_mansion:entities/garbage_can_ghost/throw_bannana_motion
kill @e[type=minecraft:area_effect_cloud,tag=new,limit=1]