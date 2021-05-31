playsound luigis_mansion:item.gold_coin.obtain player @a[tag=same_room] ~ ~ ~ 1
execute positioned ~ ~1.4 ~ run tag @a[tag=same_room,tag=!spectator,distance=..0.7,limit=1] add me
execute unless entity @a[tag=me,limit=1] positioned ~ ~1.4 ~ as @e[tag=same_room,tag=gameboy_horror_location,distance=..0.7,limit=1] run function luigis_mansion:entities/gameboy_horror_location/tag_for_money
function luigis_mansion:items/retreive_player_money/retreive
execute store result score #temp Time run data get storage luigis_mansion:data current_state.my_money.money.gold_coin
execute store result storage luigis_mansion:data current_state.my_money.money.gold_coin int 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get storage luigis_mansion:data current_state.my_money.total
execute store result storage luigis_mansion:data current_state.my_money.total int 1 run scoreboard players add #temp Time 5
execute store result score #temp Time run data get storage luigis_mansion:data current_state.my_money_data.money.gold_coin
execute store result storage luigis_mansion:data current_state.my_money_data.money.gold_coin int 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get storage luigis_mansion:data current_state.my_money_data.total
execute store result storage luigis_mansion:data current_state.my_money_data.total int 1 run scoreboard players add #temp Time 5
data modify storage luigis_mansion:data current_state.money_grabbed append from storage luigis_mansion:data current_state.my_money
data remove storage luigis_mansion:data current_state.my_money
data modify storage luigis_mansion:data current_state.current_data.money_grabbed append from storage luigis_mansion:data current_state.my_money_data
data remove storage luigis_mansion:data current_state.my_money_data
scoreboard players reset #temp Time