summon minecraft:armor_stand ~ ~-0.8 ~ {CustomName:'{"translate":"luigis_mansion:item.medium_pearl"}',Pose:{Head:[0.0f,0.0f,0.01f]},Invisible:1b,Silent:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{namespace:"luigis_mansion",id:"medium_pearl",assign_rank:{namespace:"luigis_mansion",id:"null"},particle:{chance:1,name:"minecraft:crit"},Unbreakable:1b,Damage:5,CustomModelData:4}}],Tags:["item","generic","affected_by_vacuum","this_entity"],DisabledSlots:2039583}
execute if data entity @s ArmorItems[3].tag.namespace run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.assign_rank.namespace set from entity @s ArmorItems[3].tag.namespace
execute if data entity @s ArmorItems[3].tag.id run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.assign_rank.id set from entity @s ArmorItems[3].tag.id
execute store result entity @e[tag=this_entity,limit=1] Rotation[0] float 1 run random value -180..179
execute store result entity @e[tag=this_entity,limit=1] Rotation[1] float 1 run random value -90..0
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 4
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 15
playsound luigis_mansion:item.medium_pearl.spawn player @a ~ ~ ~ 1