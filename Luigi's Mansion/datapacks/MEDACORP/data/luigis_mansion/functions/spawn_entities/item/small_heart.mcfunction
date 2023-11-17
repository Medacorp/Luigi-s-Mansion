function #luigis_mansion:items/get_money_count
execute unless score #temp Money >= #heart_money_count Selected run summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_mansion:item.heart"}',Pose:{Head:[0.0f,0.0f,0.01f]},Invisible:1b,Silent:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{luigis_mansion:{namespace:"luigis_mansion",id:"heart",physics_offset:1.4d,pick_up_range:0.7f,variant:10},Unbreakable:1b,Damage:5,CustomModelData:13}}],Tags:["item","generic","wall_bounce","keep_bouncing","random_turn_on_bounce","affected_by_vacuum","this_entity"],DisabledSlots:2039583}
execute if score #temp Money >= #heart_money_count Selected run summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_mansion:item.heart"}',Pose:{Head:[0.0f,0.0f,0.01f]},Invisible:1b,Silent:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{luigis_mansion:{namespace:"luigis_mansion",id:"heart",physics_offset:1.4d,pick_up_range:0.7f,variant:20},Unbreakable:1b,Damage:5,CustomModelData:30}}],Tags:["item","generic","wall_bounce","keep_bouncing","random_turn_on_bounce","affected_by_vacuum","this_entity"],DisabledSlots:2039583}
scoreboard players reset #temp Money
execute store result entity @e[tag=this_entity,limit=1] Rotation[0] float 1 run random value -180..179
execute store result entity @e[tag=this_entity,limit=1] Rotation[1] float 1 run random value -90..0
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 7
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 14
playsound luigis_mansion:item.heart.spawn player @a ~ ~ ~ 1
scoreboard players reset #temp Money