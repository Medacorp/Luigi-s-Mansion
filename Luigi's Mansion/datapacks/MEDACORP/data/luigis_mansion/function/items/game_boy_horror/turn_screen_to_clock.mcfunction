execute if score #gbh_clock Selected matches 1728000.. run scoreboard players remove #gbh_clock Selected 1728000
execute if score #gbh_clock Selected matches ..-1 run scoreboard players add #gbh_clock Selected 1728000
scoreboard players operation #temp ActionTime = #gbh_clock Selected
scoreboard players operation #temp ActionTime /= #20 Constants
scoreboard players operation #temp ActionTime /= #60 Constants
scoreboard players add #temp ActionTime 9
scoreboard players operation #temp Time = #temp ActionTime
scoreboard players operation #temp Time %= #60 Constants
scoreboard players operation #temp Time %= #10 Constants
scoreboard players operation #temp2 Time = #temp ActionTime
scoreboard players operation #temp2 Time %= #60 Constants
scoreboard players operation #temp2 Time /= #10 Constants
scoreboard players operation #temp3 Time = #temp ActionTime
scoreboard players operation #temp3 Time /= #60 Constants
scoreboard players reset #temp ActionTime
data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".flags[0] set value 0b
data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[0] set value 0.0f
data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".strings[1] set value "clock"
execute store success entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".flags[1] byte 1 if score #temp3 Time matches 12.. run scoreboard players remove #temp3 Time 12
execute store result entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[3] float 1 run scoreboard players get #temp3 Time
execute store result entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[2] float 1 run scoreboard players get #temp2 Time
execute store result entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[1] float 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time