summon minecraft:armor_stand ~ ~-1.43 ~ {Tags:["bogmires_shadow","new_shadow"],Invisible:1b,Pose:{Head:[90.0f,0.0f,0.0f]},NoGravity:1b,equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/shadow"}}}}
teleport @e[tag=new_shadow,limit=1] ~ ~-1.43 ~ ~ ~
scoreboard players operation @e[tag=new_shadow,limit=1] Steps = @s Steps
scoreboard players operation @e[tag=new_shadow,limit=1] Room = @s Room
tag @e[tag=new_shadow,limit=1] remove new_shadow