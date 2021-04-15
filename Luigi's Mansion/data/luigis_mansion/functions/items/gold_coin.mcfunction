playsound luigis_mansion:item.gold_coin.obtain player @a[tag=same_room] ~ ~ ~ 1
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.money.gold_coin
execute store result storage luigis_mansion:data current_state.current_data.money.gold_coin int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time