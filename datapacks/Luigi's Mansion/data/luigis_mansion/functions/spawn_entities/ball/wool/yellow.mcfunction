summon minecraft:armor_stand ~ ~-1.1875 ~ {CustomName:'{"translate":"luigis_mansion:entity.wool"}',Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["ball","wool","scan_ignore","this_entity"],ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:16}}],NoGravity:1b,Marker:1b,Invisible:1b,DisabledSlots:2039583}
scoreboard players operation @e[tag=this_entity,limit=1] Wool > @e[tag=wool] Wool
scoreboard players add @e[tag=this_entity,limit=1] Wool 1
tag @e[tag=this_entity,limit=1] remove this_entity