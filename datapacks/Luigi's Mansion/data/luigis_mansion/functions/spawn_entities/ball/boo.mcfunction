summon minecraft:armor_stand ~ ~-1 ~ {CustomName:'{"translate":"luigis_mansion:entity.boo_ball"}',Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["boo","ball","vacuumable","this_entity"],ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:4}}],Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1 ~ facing entity @e[tag=!spectator,tag=same_room,limit=1]
tag @e[tag=this_entity,limit=1] remove this_entity
playsound luigis_mansion:entity.boo.trap hostile @a ~ ~ ~ 1
