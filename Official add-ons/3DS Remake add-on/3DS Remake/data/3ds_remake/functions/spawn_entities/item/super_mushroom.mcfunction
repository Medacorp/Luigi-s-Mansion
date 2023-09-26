summon minecraft:armor_stand ~ ~-1 ~ {CustomName:'{"translate":"3ds_remake:item.super_mushroom"}',Pose:{Head:[0.0f,0.0f,0.01f]},Invisible:1b,Silent:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:5,CustomModelData:32}}],Tags:["item","affected_by_vacuum","super_mushroom","this_entity"],DisabledSlots:2039583}
execute store result entity @e[tag=this_entity,limit=1] Rotation[0] float 1 run random value -180..179
execute store result entity @e[tag=this_entity,limit=1] Rotation[1] float 1 run random value -90..0
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 2
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 15
playsound 3ds_remake:item.super_mushroom.spawn player @a ~ ~ ~ 1