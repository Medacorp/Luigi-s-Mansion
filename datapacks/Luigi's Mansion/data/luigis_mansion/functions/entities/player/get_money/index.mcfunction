data modify block 26 0 0 Items[0].tag.value set from storage luigis_mansion:data current_state.money_grabbed[-1].uuid
execute store success score #temp ActionTime if blocks 27 0 0 27 0 0 26 0 0 all
execute if score #temp ActionTime matches 1 run data modify storage luigis_mansion:data current_state.my_money set from storage luigis_mansion:data current_state.money_grabbed[-1]
execute if score #temp ActionTime matches 0 run data modify storage luigis_mansion:data current_state.new_money_grabbed append from storage luigis_mansion:data current_state.money_grabbed[-1]
data remove storage luigis_mansion:data current_state.money_grabbed[-1]
execute if score #temp ActionTime matches 1 run data modify storage luigis_mansion:data current_state.new_money_grabbed append from storage luigis_mansion:data current_state.money_grabbed[]
execute unless score #temp ActionTime matches 1 if data storage luigis_mansion:data current_state.money_grabbed[-1] run function luigis_mansion:entities/player/get_money/index
