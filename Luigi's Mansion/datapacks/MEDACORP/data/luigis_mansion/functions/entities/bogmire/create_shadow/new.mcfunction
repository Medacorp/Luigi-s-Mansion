summon minecraft:armor_stand ~ ~-1.43 ~ {Tags:["bogmires_shadow","new_shadow"],Invisible:1b,Pose:{Head:[90.0f,0.0f,0.0f]},NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:36}}]}
teleport @e[tag=new_shadow,limit=1] ~ ~-1.43 ~ ~ ~
scoreboard players operation @e[tag=new_shadow,limit=1] Steps = #temp Steps
tag @e[tag=new_shadow,limit=1] remove new_shadow