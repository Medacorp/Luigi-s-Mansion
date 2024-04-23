execute unless score #nursery Ticking matches 1 run function #3ds_remake:room/hidden/nursery/load
execute as @a[x=737,y=19,z=53,dx=14,dy=7,dz=20] unless entity @s[scores={Room=10}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=737,y=19,z=53,dx=14,dy=7,dz=20] Room 10
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 10
#/todelete

execute as @a[scores={Room=10}] run function 3ds_remake:room/hidden/nursery/tick_per_player

execute as @e[tag=eternal_gold_coin,scores={Room=10}] run scoreboard players add #temp Wave 1
execute if score #temp Wave matches ..8 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["nursery_money"]} run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "nursery_money"
scoreboard players reset #temp Wave

function #3ds_remake:room/hidden/nursery/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=10},tag=!spectator,limit=1] run function 3ds_remake:room/hidden/nursery/ghosts