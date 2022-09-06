execute in minecraft:overworld run setblock 27 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{value:[I;]}}]}
execute in minecraft:overworld run setblock 26 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{value:[I;]}}]}
execute in minecraft:overworld run data modify block 27 0 0 Items[0].tag.value set from entity @s UUID
data modify storage luigis_mansion:data current_state.new_money_grabbed set value []
data modify storage luigis_mansion:data current_state.my_money set value {uuid:[I;],total:0,money:{ghost_coin:0}}
data modify storage luigis_mansion:data current_state.my_money.uuid set from entity @s UUID
execute in minecraft:overworld if data storage luigis_mansion:data current_state.money_grabbed[-1] run function luigis_mansion:entities/player/get_money/index
scoreboard players reset #temp ActionTime
execute in minecraft:overworld run fill 27 0 0 26 0 0 minecraft:bedrock
data modify storage luigis_mansion:data current_state.money_grabbed set from storage luigis_mansion:data current_state.new_money_grabbed
data remove storage luigis_mansion:data current_state.new_money_grabbed

execute in minecraft:overworld run setblock 27 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{value:[I;]}}]}
execute in minecraft:overworld run setblock 26 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{value:[I;]}}]}
execute in minecraft:overworld run data modify block 27 0 0 Items[0].tag.value set from entity @s UUID
data modify storage luigis_mansion:data current_state.new_money_grabbed set value []
data modify storage luigis_mansion:data current_state.my_money_data set value {uuid:[I;],total:0,money:{ghost_coin:0}}
data modify storage luigis_mansion:data current_state.my_money_data.uuid set from entity @s UUID
execute in minecraft:overworld if data storage luigis_mansion:data current_state.current_data.money_grabbed[-1] run function luigis_mansion:entities/player/get_money/index_mansion
scoreboard players reset #temp ActionTime
execute in minecraft:overworld run fill 27 0 0 26 0 0 minecraft:bedrock
data modify storage luigis_mansion:data current_state.current_data.money_grabbed set from storage luigis_mansion:data current_state.new_money_grabbed
data remove storage luigis_mansion:data current_state.new_money_grabbed

execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.my_money_data.money.luigis_beta_mansion.ghost_coin
execute store result score #temp2 ActionTime run data get storage luigis_mansion:data current_state.my_money.money.luigis_beta_mansion.ghost_coin
execute store result score #temp Money run data get storage luigis_mansion:data current_state.my_money_data.total
execute store result score #temp2 Money run data get storage luigis_mansion:data current_state.my_money.total
scoreboard players operation #temp3 Money = #temp ActionTime
scoreboard players operation #temp3 Money *= #5 Constants
scoreboard players operation #temp Money -= #temp3 Money
scoreboard players operation #temp4 Money = #temp2 ActionTime
scoreboard players operation #temp4 Money *= #5 Constants
scoreboard players operation #temp2 Money -= #temp4 Money
scoreboard players operation #temp2 ActionTime -= #temp ActionTime
scoreboard players operation #temp2 Money -= #temp Money
scoreboard players reset #temp3 Money
scoreboard players reset #temp4 Money