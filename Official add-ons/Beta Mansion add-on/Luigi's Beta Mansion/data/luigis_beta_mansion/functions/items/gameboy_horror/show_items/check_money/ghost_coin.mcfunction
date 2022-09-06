scoreboard players set #temp Money 0
execute if data storage luigis_mansion:data current_state.current_data.money_grabbed[0] run function luigis_beta_mansion:items/gameboy_horror/show_items/check_money/get_money_loop/ghost_coin
execute if data storage luigis_mansion:data current_state.current_data.new_money_grabbed run data modify storage luigis_mansion:data current_state.current_data.money_grabbed set from storage luigis_mansion:data current_state.current_data.new_money_grabbed
data remove storage luigis_mansion:data current_state.current_data.new_money_grabbed
scoreboard players reset #temp Time

scoreboard players set #temp2 Money 0
execute in minecraft:overworld run setblock 27 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{value:[I;]}}]}
execute in minecraft:overworld run setblock 26 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{value:[I;]}}]}
execute in minecraft:overworld run data modify block 27 0 0 Items[0].tag.value set from entity @s UUID
data modify storage luigis_mansion:data current_state.new_money_grabbed set value []
execute in minecraft:overworld if data storage luigis_mansion:data current_state.current_data.money_grabbed[-1] run function luigis_mansion:items/gameboy_horror/show_items/check_money/personal_value
execute store result score #temp2 Money run data get storage luigis_mansion:data current_state.my_money.money.luigis_beta_mansion.ghost_coin
scoreboard players reset #temp ActionTime
execute in minecraft:overworld run fill 27 0 0 26 0 0 minecraft:bedrock
data modify storage luigis_mansion:data current_state.current_data.money_grabbed set from storage luigis_mansion:data current_state.new_money_grabbed
data modify storage luigis_mansion:data current_state.current_data.money_grabbed append from storage luigis_mansion:data current_state.my_money
data remove storage luigis_mansion:data current_state.new_money_grabbed
data remove storage luigis_mansion:data current_state.my_money