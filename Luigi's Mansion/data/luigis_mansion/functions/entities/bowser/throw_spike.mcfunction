summon minecraft:armor_stand ~ ~-0.4 ~ {Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["spike_ball","this_entity","ball","big","vacuumable"],ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:8}}],Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-0.4 ~ facing ^ ^ ^2
scoreboard players set @e[tag=this_entity,limit=1] ActionTime 0
scoreboard players set @e[tag=this_entity,limit=1] Move 50
tag @e[tag=this_entity,limit=1] remove this_entity