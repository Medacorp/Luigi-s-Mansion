teleport @s[tag=!flipped_gravity] ^-0.46 ^1.85 ^
teleport @s[tag=flipped_gravity] ^0.46 ^1.15 ^

$execute at @s run function $(namespace):animations/shivers/$(id)/right_arm

execute if data storage luigis_mansion:data ghost{tags:["burning"]} if entity @s[nbt={equipment:{head:{components:{"minecraft:custom_model_data":{strings:["equipment"]}}}}}] at @s run function luigis_mansion:animations/shivers/candle_flame