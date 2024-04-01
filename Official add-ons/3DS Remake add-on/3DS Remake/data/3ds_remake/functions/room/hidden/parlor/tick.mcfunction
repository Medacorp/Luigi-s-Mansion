execute unless score #parlor Ticking matches 1 run function #3ds_remake:room/hidden/parlor/load
execute as @a[x=712,y=19,z=17,dx=17,dy=7,dz=21] unless entity @s[scores={Room=3}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=712,y=19,z=17,dx=17,dy=7,dz=21] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 3

execute as @a[scores={Room=3}] run function 3ds_remake:room/hidden/parlor/tick_per_player

execute as @e[tag=eternal_gold_coin,scores={Room=3}] run scoreboard players add #temp Wave 1
execute if score #temp Wave matches ..14 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["parlor_money"]} run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "parlor_money"
scoreboard players reset #temp Wave

function #3ds_remake:room/hidden/parlor/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=3},tag=!spectator,limit=1] run function 3ds_remake:room/hidden/parlor/ghosts