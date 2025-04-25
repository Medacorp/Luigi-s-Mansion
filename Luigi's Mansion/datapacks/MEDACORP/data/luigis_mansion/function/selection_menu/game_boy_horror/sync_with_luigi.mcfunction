data modify storage luigis_mansion:data temp set from entity @e[tag=this_luigi,limit=1] data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data"
data modify storage luigis_mansion:data temp.value set from storage luigis_mansion:data temp.strings[1]
data modify storage luigis_mansion:data temp.tracker set value {}
data modify storage luigis_mansion:data temp.tracker set from entity @e[tag=this_luigi,limit=1] data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:lodestone_tracker"
function luigis_mansion:items/game_boy_horror/turn_screen_to_forced_value with storage luigis_mansion:data temp
data remove storage luigis_mansion:data temp
scoreboard players set @s ForceScreen 0
scoreboard players set @s ForceRadar 0