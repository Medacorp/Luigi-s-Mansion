summon minecraft:armor_stand ~ ~ ~ {Tags:["bogmires_shadow","new_shadow","processed"],Invisible:1b,Pose:{Head:[90.0f,0.0f,0.0f]},NoGravity:1b,equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/shadow"}}}}
teleport @e[tag=new_shadow,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=new_shadow,limit=1] Steps = #temp Steps
scoreboard players operation @e[tag=new_shadow,limit=1] Room = @s Room
tag @e[tag=new_shadow,limit=1] remove new_shadow