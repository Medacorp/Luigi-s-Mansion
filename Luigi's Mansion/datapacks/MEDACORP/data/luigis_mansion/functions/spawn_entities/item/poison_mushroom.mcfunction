summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_mansion:item.poison_mushroom"}',Pose:{Head:[0.0f,0.0f,0.01f]},Invisible:1b,Silent:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{luigis_mansion:{namespace:"luigis_mansion",id:"poison_mushroom",physics_offset:1.4d,pick_up_range:0.7f,particle_trail:"minecraft:dust 0.8 0.09 0.7 1"},Unbreakable:1b,Damage:5,CustomModelData:20}}],Tags:["item","generic","wall_bounce","keep_bouncing","random_turn_on_bounce","affected_by_vacuum","this_entity"],DisabledSlots:2039583}
execute store result entity @e[tag=this_entity,limit=1] Rotation[0] float 1 run random value -180..179
execute store result entity @e[tag=this_entity,limit=1] Rotation[1] float 1 run random value -90..0
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 2
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 15
playsound luigis_mansion:item.poison_mushroom.spawn player @a ~ ~ ~ 1