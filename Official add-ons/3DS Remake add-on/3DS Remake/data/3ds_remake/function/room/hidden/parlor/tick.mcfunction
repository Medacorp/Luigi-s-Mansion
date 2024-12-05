execute unless score #parlor Ticking matches 1 run function #3ds_remake:room/hidden/parlor/load
execute as @e[tag=player,x=712,y=19,z=17,dx=17,dy=7,dz=21] unless entity @s[scores={Room=3}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=712,y=19,z=17,dx=17,dy=7,dz=21] Room 3
#todelete - old furniture
scoreboard players set #temp Room 3
#/todelete

execute as @a[scores={Room=3}] run function 3ds_remake:room/hidden/parlor/tick_per_player

execute as @e[tag=eternal_gold_coin,scores={Room=3}] run scoreboard players add #temp Wave 1
execute if score #temp Wave matches ..14 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["parlor_money"]} run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "parlor_money"
scoreboard players reset #temp Wave

#todelete - old furniture
function #3ds_remake:room/hidden/parlor/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=3},limit=1] run function 3ds_remake:room/hidden/parlor/ghosts