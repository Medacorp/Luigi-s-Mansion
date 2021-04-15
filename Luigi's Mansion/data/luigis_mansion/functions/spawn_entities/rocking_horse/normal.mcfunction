summon minecraft:armor_stand ~ ~-1.4 ~ {Tags:["rocking_horse","scan_ignore","this_entity"],Pose:{Head:[0.0f,0.0f,0.01f]},NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:35}}],Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ ~
tag @e[tag=this_entity,limit=1] remove this_entity