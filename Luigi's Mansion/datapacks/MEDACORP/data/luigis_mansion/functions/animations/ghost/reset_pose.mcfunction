scoreboard players set @s AnimationProgress 0
data merge entity @s[tag=!flipped_gravity] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.01f]}}
data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.default
execute if data storage luigis_mansion:data ghost{tags:["big"]} run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.big
execute if entity @s[tag=!visible] unless data entity @s ArmorItems[3].tag.luigis_mansion.model_data.invisible run data modify entity @s ArmorItems[3].id set from entity @s ArmorItems[3].tag.luigis_mansion.invisible
execute if entity @s[tag=!visible] if data storage luigis_mansion:data ghost{tags:["big"]} unless data entity @s ArmorItems[3].tag.luigis_mansion.model_data.big_invisible run data modify entity @s ArmorItems[3].id set from entity @s ArmorItems[3].tag.luigis_mansion.invisible
execute if entity @s[tag=!visible] unless data storage luigis_mansion:data ghost{tags:["vanish"]} if data entity @s ArmorItems[3].tag.luigis_mansion.model_data.invisible run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.invisible
execute if entity @s[tag=!visible] if data storage luigis_mansion:data ghost{tags:["big"]} unless data storage luigis_mansion:data ghost{tags:["vanish"]} if data entity @s ArmorItems[3].tag.luigis_mansion.model_data.big_invisible run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.invisible
