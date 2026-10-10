scoreboard players remove @s[tag=update_money_screen_pearls] GBHScreenTime 1
scoreboard players add @s[tag=!update_money_screen_pearls] GBHScreenTime 1
scoreboard players set @s[scores={GBHScreenTime=1..}] GBHScreenTime 0
scoreboard players set @s[scores={GBHScreenTime=..-81}] GBHScreenTime -80
execute if entity @s[scores={GBHScreenTime=0}] run data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[0] set value 0f
execute if entity @s[scores={GBHScreenTime=-1}] run data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[0] set value 1f
execute if entity @s[scores={GBHScreenTime=-2}] run data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[0] set value 2f
execute if entity @s[scores={GBHScreenTime=-3}] run data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[0] set value 3f
execute if entity @s[scores={GBHScreenTime=-4}] run data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[0] set value 4f
execute if entity @s[scores={GBHScreenTime=-5}] run data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[0] set value 5f
tag @s[scores={GBHScreenTime=-80}] remove update_money_screen_pearls
tag @s[scores={GBHScreenTime=-5}] add update_money_screen
tag @s[scores={GBHScreenTime=0}] add update_money_screen