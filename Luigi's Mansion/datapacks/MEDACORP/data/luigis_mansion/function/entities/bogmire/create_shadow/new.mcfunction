summon minecraft:item_display ~ ~ ~ {Tags:["bogmires_shadow","new_shadow"],item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/shadow"}},transformation:{left_rotation:[0.7071067811865476f,0.0f,0.0f,0.7071067811865476f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f]}}
teleport @e[tag=new_shadow,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=new_shadow,limit=1] Steps = @s Steps
scoreboard players operation @e[tag=new_shadow,limit=1] Room = @s Room
tag @e[tag=new_shadow,limit=1] remove new_shadow