data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".flags set value [0b]
data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".strings[1] set value "money"
data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats set value [0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f]
scoreboard players reset @s GBHScreenTime
tag @s add update_money_screen
tag @s remove update_money_screen_pearls
tag @s remove update_money_screen_gem
tag @s remove update_money_screen_blue_sapphire
tag @s remove update_money_screen_green_emerald
tag @s remove update_money_screen_red_ruby
tag @s remove update_money_screen_red_diamond
tag @s remove update_money_screen_silver_diamond
tag @s remove update_money_screen_gold_diamond
function luigis_mansion:items/game_boy_horror/update_money_screen