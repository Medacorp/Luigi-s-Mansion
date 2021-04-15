summon minecraft:armor_stand ~ ~-0.4 ~ {Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["chauncey","ball","big","real","this_entity"],ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:3}}],Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-0.4 ~ ~ ~
tag @e[tag=this_entity,limit=1] remove this_entity