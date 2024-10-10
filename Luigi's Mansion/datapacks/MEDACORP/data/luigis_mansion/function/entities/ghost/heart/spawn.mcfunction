$execute positioned ~ ~-1.4 ~ run summon minecraft:armor_stand ~ ~$(up) ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.ghost_heart"}',Marker:1b,Invisible:1b,NoGravity:1b,CustomNameVisible:0b,HasVisualFire:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/ghost_heart","minecraft:unbreakable":{},"minecraft:custom_model_data":0}}],Tags:["ghost_heart","this_heart"]}
$execute positioned ~ ~-1.4 ~ run teleport @e[tag=this_entity,limit=1] ~ ~$(up) ~ ~ ~
scoreboard players operation @e[tag=this_heart,limit=1] Room = #temp Room
scoreboard players operation @e[tag=this_heart,limit=1] GhostNr = @s GhostNr
scoreboard players set @e[tag=this_heart,limit=1] Sound 0
execute if entity @s[tag=burning_heart] run tag @e[tag=this_heart,limit=1] add burning
execute if entity @s[tag=burning_heart] run data modify entity @e[tag=this_heart,limit=1] ArmorItems[3].components."minecraft:custom_model_data" set value 1
execute if entity @s[tag=watery_heart] run tag @e[tag=this_heart,limit=1] add watery
execute if entity @s[tag=watery_heart] run data modify entity @e[tag=this_heart,limit=1] ArmorItems[3].components."minecraft:custom_model_data" set value 2
execute if entity @s[tag=frozen_heart] run tag @e[tag=this_heart,limit=1] add frozen
execute if entity @s[tag=frozen_heart] run data modify entity @e[tag=this_heart,limit=1] ArmorItems[3].components."minecraft:custom_model_data" set value 3
tag @s add spawned_ghost_heart