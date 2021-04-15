summon minecraft:armor_stand ~ ~-1.25 ~ {Tags:["rocking_chair","scan_ignore","this_entity"],ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:34}}],Pose:{Head:[-10.0f,0.0f,0.01f]},NoGravity:1b,Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.25 ~ ~ ~
tag @e[tag=this_entity,limit=1] remove this_entity