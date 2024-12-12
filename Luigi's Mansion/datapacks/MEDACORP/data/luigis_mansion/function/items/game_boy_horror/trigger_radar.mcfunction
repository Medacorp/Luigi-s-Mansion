scoreboard players add @s GBHRadar 1
execute if entity @e[tag=radar_detect,distance=..2] run scoreboard players add @s GBHRadar 15
execute if entity @e[tag=radar_detect,distance=2..3] run scoreboard players add @s GBHRadar 12
execute if entity @e[tag=radar_detect,distance=3..4] run scoreboard players add @s GBHRadar 9
execute if entity @e[tag=radar_detect,distance=4..5] run scoreboard players add @s GBHRadar 6
execute if entity @e[tag=radar_detect,distance=5..6] run scoreboard players add @s GBHRadar 3
execute if entity @s[scores={GBHRadar=40..}] unless score #freeze_timer Selected matches 1 as @a[tag=this_player,limit=1] at @s run playsound luigis_mansion:item.game_boy_horror.radar player @s ~ ~ ~ 0.5
scoreboard players set @s[scores={GBHRadar=40..}] GBHRadar 0

execute unless entity @e[tag=radar_detect,distance=..6] if entity @s[nbt=!{data:{inventory:[{components:{"minecraft:custom_model_data":{strings:["detect"]},"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}}] run function luigis_mansion:items/game_boy_horror/turn_radar_to_value {value:"detect"}
execute if entity @e[tag=radar_detect,distance=5..6] if entity @s[nbt=!{data:{inventory:[{components:{"minecraft:custom_model_data":{strings:["approaching"]},"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}}] run function luigis_mansion:items/game_boy_horror/turn_radar_to_value {value:"approaching"}
execute if entity @e[tag=radar_detect,distance=4..5] if entity @s[nbt=!{data:{inventory:[{components:{"minecraft:custom_model_data":{strings:["nearby"]},"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}}] run function luigis_mansion:items/game_boy_horror/turn_radar_to_value {value:"nearby"}
execute if entity @e[tag=radar_detect,distance=3..4] if entity @s[nbt=!{data:{inventory:[{components:{"minecraft:custom_model_data":{strings:["close"]},"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}}] run function luigis_mansion:items/game_boy_horror/turn_radar_to_value {value:"close"}
execute if entity @e[tag=radar_detect,distance=2..3] if entity @s[nbt=!{data:{inventory:[{components:{"minecraft:custom_model_data":{strings:["here"]},"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}}] run function luigis_mansion:items/game_boy_horror/turn_radar_to_value {value:"here"}
execute if entity @e[tag=radar_detect,distance=..2] if entity @s[nbt=!{data:{inventory:[{components:{"minecraft:custom_model_data":{strings:["on_top"]},"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}}] run function luigis_mansion:items/game_boy_horror/turn_radar_to_value {value:"on_top"}