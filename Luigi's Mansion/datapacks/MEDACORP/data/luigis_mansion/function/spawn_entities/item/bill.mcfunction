summon minecraft:armor_stand ~ ~-1.6 ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:item.bill"}',Pose:{Head:[0.0f,0.0f,0.01f]},Invisible:1b,Silent:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:custom_data":{entity:{namespace:"luigis_mansion",id:"item"},physics:{namespace:"luigis_mansion",id:"paper"},item:{namespace:"luigis_mansion",id:"bill"},physics_offset:1.6d,pick_up_range:0.7f},"minecraft:unbreakable":{},"minecraft:item_model":"luigis_mansion:entity/bill","minecraft:custom_model_data":0}}],Tags:["item","no_capture_sound","affected_by_vacuum","same_room_players_only","this_entity"],DisabledSlots:2039583}
execute if predicate luigis_mansion:50_50 run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].components."minecraft:custom_model_data" set value 1
execute store result entity @e[tag=this_entity,limit=1] Rotation[0] float 1 run random value -180..179
execute store result entity @e[tag=this_entity,limit=1] Rotation[1] float 1 run random value -80..0
execute store result entity @e[tag=this_entity,limit=1] Pose.Head[2] float 1 run random value -180..179
execute at @e[tag=this_entity,limit=1] positioned ~ ~0.01 ~ align y unless block ~ ~ ~ #luigis_mansion:items_ignore unless block ~ ~ ~ #minecraft:slabs run tag @s add in_block
execute as @e[tag=this_entity,tag=!in_block,limit=1] at @s positioned ~ ~0.4 ~ unless block ~ ~-1 ~ #luigis_mansion:ghosts_ignore run teleport @s[x_rotation=60..90] ~ ~ ~ ~ ~-30
execute as @e[tag=this_entity,tag=!in_block,limit=1] at @s positioned ~ ~0.4 ~ if block ~1 ~ ~ #luigis_mansion:ghosts_ignore if block ~-1 ~ ~ #luigis_mansion:ghosts_ignore if block ~ ~ ~1 #luigis_mansion:ghosts_ignore if block ~ ~ ~-1 #luigis_mansion:ghosts_ignore if block ~ ~-1 ~ #luigis_mansion:ghosts_ignore at @s run teleport @s[x_rotation=-90..45] ~ ~ ~ ~ ~45
execute as @e[tag=this_entity,tag=!in_block,limit=1] at @s positioned ~ ~0.4 ~ rotated ~ 0 unless block ^ ^ ^1 #luigis_mansion:ghosts_ignore at @s run tp @s ~ ~ ~ ~-180 ~
tag @e[tag=this_entity,limit=1] remove in_block
execute as @e[tag=this_entity,limit=1] store result entity @s Pose.Head[0] float 1 run data get entity @s Rotation[1]
execute if predicate luigis_mansion:50_50 as @e[tag=this_entity,limit=1] store result entity @s Pose.Head[0] float -1 run data get entity @s Pose.Head[0]
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 3
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 14
execute if data storage luigis_mansion:data entity{variant:0b} run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].components."minecraft:custom_model_data" set value 0
execute if data storage luigis_mansion:data entity{variant:1b} run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].components."minecraft:custom_model_data" set value 1
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity