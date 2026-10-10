function luigis_mansion:items/money/get_count/select {namespace:"luigis_mansion",id:"small_pearl"}
scoreboard players operation #temp5 Money = #temp Money
scoreboard players operation #temp2 Money = #temp Money
scoreboard players operation #temp2 Money /= #10 Constants
scoreboard players operation #temp3 Money = #temp2 Money
scoreboard players operation #temp3 Money /= #10 Constants
scoreboard players operation #temp4 Money = #temp3 Money
scoreboard players operation #temp4 Money /= #10 Constants
scoreboard players operation #temp3 Money %= #10 Constants
scoreboard players operation #temp2 Money %= #10 Constants
scoreboard players operation #temp Money %= #10 Constants
execute if score #temp5 Money matches ..9999 store result entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[1] float 1 run scoreboard players get #temp Money
execute if score #temp5 Money matches 10..9999 store result entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[2] float 1 run scoreboard players get #temp2 Money
execute if score #temp5 Money matches 100..9999 store result entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[3] float 1 run scoreboard players get #temp3 Money
execute if score #temp5 Money matches 1000..9999 store result entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[4] float 1 run scoreboard players get #temp4 Money
execute if score #temp5 Money matches ..9 run data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[2] set value -1f
execute if score #temp5 Money matches ..99 run data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[3] set value -1f
execute if score #temp5 Money matches ..999 run data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[4] set value -1f
execute if score #temp5 Money matches 10000.. run data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[1] set value -2f
execute if score #temp5 Money matches 10000.. run data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[2] set value -2f
execute if score #temp5 Money matches 10000.. run data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[3] set value -2f
execute if score #temp5 Money matches 10000.. run data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[4] set value -2f
function luigis_mansion:items/money/get_count/select {namespace:"luigis_mansion",id:"medium_pearl"}
scoreboard players operation #temp5 Money = #temp Money
scoreboard players operation #temp2 Money = #temp Money
scoreboard players operation #temp2 Money /= #10 Constants
scoreboard players operation #temp3 Money = #temp2 Money
scoreboard players operation #temp3 Money /= #10 Constants
scoreboard players operation #temp4 Money = #temp3 Money
scoreboard players operation #temp4 Money /= #10 Constants
scoreboard players operation #temp3 Money %= #10 Constants
scoreboard players operation #temp2 Money %= #10 Constants
scoreboard players operation #temp Money %= #10 Constants
execute if score #temp5 Money matches ..9999 store result entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[5] float 1 run scoreboard players get #temp Money
execute if score #temp5 Money matches 10..9999 store result entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[6] float 1 run scoreboard players get #temp2 Money
execute if score #temp5 Money matches 100..9999 store result entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[7] float 1 run scoreboard players get #temp3 Money
execute if score #temp5 Money matches 1000..9999 store result entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[8] float 1 run scoreboard players get #temp4 Money
execute if score #temp5 Money matches ..9 run data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[6] set value -1f
execute if score #temp5 Money matches ..99 run data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[7] set value -1f
execute if score #temp5 Money matches ..999 run data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[8] set value -1f
execute if score #temp5 Money matches 10000.. run data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[5] set value -2f
execute if score #temp5 Money matches 10000.. run data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[6] set value -2f
execute if score #temp5 Money matches 10000.. run data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[7] set value -2f
execute if score #temp5 Money matches 10000.. run data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[8] set value -2f
function luigis_mansion:items/money/get_count/select {namespace:"luigis_mansion",id:"big_pearl"}
scoreboard players operation #temp5 Money = #temp Money
scoreboard players operation #temp2 Money = #temp Money
scoreboard players operation #temp2 Money /= #10 Constants
scoreboard players operation #temp3 Money = #temp2 Money
scoreboard players operation #temp3 Money /= #10 Constants
scoreboard players operation #temp4 Money = #temp3 Money
scoreboard players operation #temp4 Money /= #10 Constants
scoreboard players operation #temp3 Money %= #10 Constants
scoreboard players operation #temp2 Money %= #10 Constants
scoreboard players operation #temp Money %= #10 Constants
execute if score #temp5 Money matches ..9999 store result entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[9] float 1 run scoreboard players get #temp Money
execute if score #temp5 Money matches 10..9999 store result entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[10] float 1 run scoreboard players get #temp2 Money
execute if score #temp5 Money matches 100..9999 store result entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[11] float 1 run scoreboard players get #temp3 Money
execute if score #temp5 Money matches 1000..9999 store result entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[12] float 1 run scoreboard players get #temp4 Money
execute if score #temp5 Money matches ..9 run data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[10] set value -1f
execute if score #temp5 Money matches ..99 run data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[11] set value -1f
execute if score #temp5 Money matches ..999 run data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[12] set value -1f
execute if score #temp5 Money matches 10000.. run data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[9] set value -2f
execute if score #temp5 Money matches 10000.. run data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[10] set value -2f
execute if score #temp5 Money matches 10000.. run data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[11] set value -2f
execute if score #temp5 Money matches 10000.. run data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[12] set value -2f
tag @s remove update_money_screen