scoreboard players add @s GBHRadar 1
execute if entity @e[tag=radar_detect,distance=..2] run scoreboard players add @s GBHRadar 15
execute if entity @e[tag=radar_detect,distance=2..3] run scoreboard players add @s GBHRadar 12
execute if entity @e[tag=radar_detect,distance=3..4] run scoreboard players add @s GBHRadar 9
execute if entity @e[tag=radar_detect,distance=4..5] run scoreboard players add @s GBHRadar 6
execute if entity @e[tag=radar_detect,distance=6..8] run scoreboard players add @s GBHRadar 3
execute if entity @s[scores={GBHRadar=40..}] unless score #freeze_timer Selected matches 1 run playsound luigis_mansion:item.game_boy_horror.radar player @s ~ ~ ~ 0.5
scoreboard players set @s[scores={GBHRadar=40..}] GBHRadar 0

execute unless entity @e[tag=radar_detect,distance=..3] if entity @s[nbt=!{Inventory:[{components:{"minecraft:damage":2,"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}] run function luigis_mansion:items/game_boy_horror/turn_radar_yellow
execute if entity @e[tag=radar_detect,distance=..3] if entity @s[nbt=!{Inventory:[{components:{"minecraft:damage":3,"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}] run function luigis_mansion:items/game_boy_horror/turn_radar_red