playsound luigis_mansion:item.blue_sapphire.obtain player @a[tag=same_room] ~ ~ ~ 1
playsound luigis_mansion:item.item.get music @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @a[tag=same_room,scores={Music=..70}] Music 70
execute positioned ~ ~1.1 ~ run tag @a[tag=same_room,tag=!spectator,sort=nearest,limit=1] add me
execute unless entity @a[tag=me,limit=1] positioned ~ ~1.1 ~ as @e[tag=same_room,tag=gameboy_horror_location,sort=nearest,limit=1] run function luigis_mansion:entities/gameboy_horror_location/tag_for_money
function luigis_mansion:items/retreive_player_money/retreive
execute store result score #temp Time run data get storage luigis_mansion:data current_state.my_money.money.blue_sapphire
execute store result storage luigis_mansion:data current_state.my_money.money.blue_sapphire int 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get storage luigis_mansion:data current_state.my_money.total
execute store result storage luigis_mansion:data current_state.my_money.total int 1 run scoreboard players add #temp Time 500
execute store result score #temp Time run data get storage luigis_mansion:data current_state.my_money_data.money.blue_sapphire
execute store result storage luigis_mansion:data current_state.my_money_data.money.blue_sapphire int 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get storage luigis_mansion:data current_state.my_money_data.total
execute store result storage luigis_mansion:data current_state.my_money_data.total int 1 run scoreboard players add #temp Time 500
data modify storage luigis_mansion:data current_state.money_grabbed append from storage luigis_mansion:data current_state.my_money
data remove storage luigis_mansion:data current_state.my_money
data modify storage luigis_mansion:data current_state.current_data.money_grabbed append from storage luigis_mansion:data current_state.my_money_data
data remove storage luigis_mansion:data current_state.my_money_data
scoreboard players reset #temp Time