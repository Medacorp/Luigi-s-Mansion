summon minecraft:armor_stand ~ ~-1 ~ {CustomName:'{"translate":"3ds_remake:item.game_boy_horror_part"}',Pose:{Head:[0.0f,0.0f,0.01f]},Invisible:1b,Silent:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{namespace:"3ds_remake",id:"gameboy_horror_part",Unbreakable:1b,Damage:5,CustomModelData:31}}],Tags:["item","generic","no_gooigi","affected_by_vacuum","eternal","this_entity"],DisabledSlots:2039583}
execute store result entity @e[tag=this_entity,limit=1] Rotation[0] float 1 run random value -180..179
execute store result entity @e[tag=this_entity,limit=1] Rotation[1] float 1 run random value -90..0
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 4
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 14
playsound 3ds_remake:item.game_boy_horror_part.spawn player @a ~ ~ ~ 1