summon minecraft:armor_stand ~ ~-0.8 ~ {CustomName:'{"translate":"luigis_mansion:item.small_pearl"}',Pose:{Head:[0.0f,0.0f,0.01f]},Invisible:1b,Silent:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{assign_rank:{namespace:"luigis_mansion",id:"null"},Unbreakable:1b,Damage:5,CustomModelData:3}}],Tags:["item","affected_by_vacuum","small_pearl","no_move","this_entity"],DisabledSlots:2039583}
execute if entity @s ArmorItems[3].tag.namespace run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.assign_rank.namespace set from entity @s ArmorItems[3].tag.namespace
execute if entity @s ArmorItems[3].tag.id run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.assign_rank.id set from entity @s ArmorItems[3].tag.id
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 3
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 14
playsound luigis_mansion:item.small_pearl.spawn player @a ~ ~ ~ 1