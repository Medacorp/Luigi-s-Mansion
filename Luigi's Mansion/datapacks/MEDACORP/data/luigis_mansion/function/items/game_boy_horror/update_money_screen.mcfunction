execute if entity @s[tag=!update_money_screen_gem] unless entity @s[tag=!update_money_screen_pearls,scores={GBHScreenTime=0}] run function luigis_mansion:items/game_boy_horror/update_money_screen/animation_pearls
execute if entity @s[tag=update_money_screen_gem] run function luigis_mansion:items/game_boy_horror/update_money_screen/animation_gems
execute store result score #temp GBHScreenTime run data get entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[0]
execute if score #temp GBHScreenTime matches 0 if entity @s[tag=update_money_screen] run function luigis_mansion:items/game_boy_horror/update_money_screen/main
execute if score #temp GBHScreenTime matches 5 if entity @s[tag=update_money_screen] run function luigis_mansion:items/game_boy_horror/update_money_screen/pearls
scoreboard players reset #temp Money
scoreboard players reset #temp2 Money
scoreboard players reset #temp3 Money
scoreboard players reset #temp4 Money
scoreboard players reset #temp5 Money
scoreboard players reset #temp GBHScreenTime
scoreboard players reset #temp Time