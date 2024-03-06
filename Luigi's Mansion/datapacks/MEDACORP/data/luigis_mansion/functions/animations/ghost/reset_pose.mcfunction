scoreboard players set @s AnimationProgress 0
execute unless data storage luigis_mansion:data ghost{tags:["flipped_gravity"]} run data merge entity @s {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute if data storage luigis_mansion:data ghost{tags:["flipped_gravity"]} run data merge entity @s {Pose:{Head:[0.0f,0.0f,-180.01f]}}
data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.default
execute if data storage luigis_mansion:data ghost{tags:["big"]} run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.big