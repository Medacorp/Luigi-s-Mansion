playsound luigis_mansion:item.blue_sapphire.obtain player @a[tag=same_room] ~ ~ ~ 1
playsound luigis_mansion:item.item.get music @a[tag=same_room] ~ ~ ~ 1
execute if entity @a[tag=collector,limit=1,scores={Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.show_item.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @a[tag=collector,limit=1,scores={Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.show_item.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @a[tag=collector,limit=1,scores={Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.show_item.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @a[tag=collector,limit=1,scores={Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.show_item.low_health player @a[tag=same_room] ~ ~ ~ 1 2
execute as @a[tag=collector,tag=looking_at_map,limit=1,scores={Health=41..,Shrunk=0}] at @s run playsound luigis_mansion:entity.player.show_item.high_health player @s ~ ~ ~ 1
execute as @a[tag=collector,tag=looking_at_map,limit=1,scores={Health=41..,Shrunk=1..}] at @s run playsound luigis_mansion:entity.player.show_item.high_health player @s ~ ~ ~ 1 2
execute as @a[tag=collector,tag=looking_at_map,limit=1,scores={Health=..40,Shrunk=0}] at @s run playsound luigis_mansion:entity.player.show_item.low_health player @s ~ ~ ~ 1
execute as @a[tag=collector,tag=looking_at_map,limit=1,scores={Health=..40,Shrunk=1..}] at @s run playsound luigis_mansion:entity.player.show_item.low_health player @s ~ ~ ~ 1 2
scoreboard players set @a[tag=collector,limit=1] Sound 70
execute as @a[tag=same_room,scores={Music=..70}] unless entity @s[scores={HealthMusic=1..}] run scoreboard players set @s Music 70
function luigis_mansion:items/get_player_money/get
execute store result score #temp Time run data get storage luigis_mansion:data current_state.my_money.money.luigis_mansion.blue_sapphire
execute unless score #temp ActionTime matches 2147483647 store result storage luigis_mansion:data current_state.my_money.money.luigis_mansion.blue_sapphire int 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get storage luigis_mansion:data current_state.my_money.total
scoreboard players add #temp Time 500
execute if score #temp Time matches ..0 run scoreboard players set #temp Time 2147483647
execute store result storage luigis_mansion:data current_state.my_money.total int 1 run scoreboard players get #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.my_money_data.money.luigis_mansion.blue_sapphire
execute unless score #temp ActionTime matches 2147483647 store result storage luigis_mansion:data current_state.my_money_data.money.luigis_mansion.blue_sapphire int 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get storage luigis_mansion:data current_state.my_money_data.total
scoreboard players add #temp Time 500
execute if score #temp Time matches ..0 run scoreboard players set #temp Time 2147483647
execute store result storage luigis_mansion:data current_state.my_money_data.total int 1 run scoreboard players get #temp Time
data modify storage luigis_mansion:data current_state.money_grabbed append from storage luigis_mansion:data current_state.my_money
data remove storage luigis_mansion:data current_state.my_money
data modify storage luigis_mansion:data current_state.current_data.money_grabbed append from storage luigis_mansion:data current_state.my_money_data
data remove storage luigis_mansion:data current_state.my_money_data
scoreboard players reset #temp Time