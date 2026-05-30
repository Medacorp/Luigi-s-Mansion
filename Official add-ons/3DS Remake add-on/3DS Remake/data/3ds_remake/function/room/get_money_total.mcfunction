execute store result score #new_money Time run data get storage luigis_mansion:data temp.money_grabbed[0].total
scoreboard players operation #money Time += #new_money Time
execute if score #money Time matches ..-1 run scoreboard players set #money Time 2147483647
data remove storage luigis_mansion:data temp.money_grabbed[0]
execute if data storage luigis_mansion:data temp.money_grabbed[0] run function 3ds_remake:room/get_money_total