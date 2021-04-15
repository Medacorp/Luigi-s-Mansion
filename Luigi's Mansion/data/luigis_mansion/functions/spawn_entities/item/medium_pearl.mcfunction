summon minecraft:armor_stand ~ ~-0.8 ~ {Pose:{Head:[0.0f,0.0f,0.01f]},Marker:1b,Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:5,CustomModelData:6}}],Tags:["item","medium_pearl","no_move","this_entity"],DisabledSlots:2039583}
data modify entity @e[tag=this_entity,limit=1] Tags append from entity @s Tags[]
tag @e[tag=this_entity,limit=1] remove ghost
tag @e[tag=this_entity,limit=1] remove portrait_ghost
tag @e[tag=this_entity,limit=1] remove pearl_dropper
tag @e[tag=this_entity,limit=1] remove this_entity