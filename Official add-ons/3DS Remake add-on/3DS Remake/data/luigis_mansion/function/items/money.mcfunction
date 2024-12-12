$playsound $(namespace):item.$(id).obtain player @a[tag=same_room] ~ ~ ~ 1
execute as @e[tag=collector,limit=1] run function luigis_mansion:entities/luigi/run_command_as_owner {command:"function luigis_mansion:items/money/get_storage with entity @s"}
$execute store result score #temp Time run data get storage luigis_mansion:data current_state.money_grabbed.money.$(namespace).$(id)
$execute unless score #temp ActionTime matches 2147483647 store result storage luigis_mansion:data current_state.money_grabbed.money.$(namespace).$(id) int 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get storage luigis_mansion:data current_state.money_grabbed.total
$scoreboard players add #temp Time $(value)
execute if score #temp Time matches ..0 run scoreboard players set #temp Time 2147483647
execute store result storage luigis_mansion:data current_state.money_grabbed.total int 1 run scoreboard players get #temp Time
$execute store result score #temp Time run data get storage luigis_mansion:data current_state.my_money_data.money.$(namespace).$(id)
$execute unless score #temp ActionTime matches 2147483647 store result storage luigis_mansion:data current_state.my_money_data.money.$(namespace).$(id) int 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get storage luigis_mansion:data current_state.my_money_data.total
$scoreboard players add #temp Time $(value)
execute if score #temp Time matches ..0 run scoreboard players set #temp Time 2147483647
execute store result storage luigis_mansion:data current_state.my_money_data.total int 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
data modify storage luigis_mansion:data current_state.current_data.money_grabbed append from storage luigis_mansion:data current_state.my_money_data
data remove storage luigis_mansion:data current_state.my_money_data
$execute if entity @e[tag=collector,tag=gooigi,limit=1] run function 3ds_remake:items/money/get_gooigi_storage {value:$(value)}