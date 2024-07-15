$data modify storage luigis_mansion:data current_state.my_money_data set value {uuid:$(uuid),total:0,money:{$(namespace):{$(id):0}}}
$execute if data storage luigis_mansion:data current_state.current_data.money_grabbed[{uuid:$(uuid)}] run data modify storage luigis_mansion:data current_state.my_money_data set from storage luigis_mansion:data current_state.current_data.money_grabbed[{uuid:$(uuid)}]
$execute if data storage luigis_mansion:data current_state.current_data.money_grabbed[{uuid:$(uuid)}] run data remove storage luigis_mansion:data current_state.current_data.money_grabbed[{uuid:$(uuid)}]

$execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.my_money_data.money.$(namespace).$(id)
$execute store result score #temp2 ActionTime run data get storage luigis_mansion:data current_state.money_grabbed.money.$(namespace).$(id)
execute store result score #temp Money run data get storage luigis_mansion:data current_state.my_money_data.total
execute store result score #temp2 Money run data get storage luigis_mansion:data current_state.money_grabbed.total
scoreboard players operation #temp3 Money = #temp ActionTime
$scoreboard players operation #temp3 Money *= #$(value) Constants
scoreboard players operation #temp Money -= #temp3 Money
scoreboard players operation #temp4 Money = #temp2 ActionTime
$scoreboard players operation #temp4 Money *= #$(value) Constants
scoreboard players operation #temp2 Money -= #temp4 Money
scoreboard players operation #temp2 ActionTime -= #temp ActionTime
scoreboard players operation #temp2 Money -= #temp Money
scoreboard players reset #temp3 Money
scoreboard players reset #temp4 Money