execute store result score #temp Money run data get storage luigis_mansion:data current_state.money_grabbed[0].total
scoreboard players operation #temp Time += #temp Money
data modify storage luigis_mansion:data current_state.new_money_grabbed append from storage luigis_mansion:data current_state.money_grabbed[0]
data remove storage luigis_mansion:data current_state.money_grabbed[0]
execute if data storage luigis_mansion:data current_state.money_grabbed[0] run function 3ds_remake:selection_menu/gallery_trophy/get_count/money/total