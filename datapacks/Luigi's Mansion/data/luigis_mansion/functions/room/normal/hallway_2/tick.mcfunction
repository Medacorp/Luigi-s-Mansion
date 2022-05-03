execute unless score #hallway_2 Ticking matches 1 run function #luigis_mansion:room/normal/hallway_2/load
execute as @a[gamemode=!spectator,x=722,y=19,z=42,dx=8,dy=8,dz=38] unless entity @s[scores={Room=7}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=722,y=19,z=42,dx=8,dy=8,dz=38] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 7
scoreboard players set #temp Room 7
tag @e[tag=ghost,scores={Room=7}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=7}] run function luigis_mansion:room/normal/hallway_2/tick_per_player

execute as @e[tag=eternal_gold_coin,scores={Room=7}] run scoreboard players add #temp Wave 1
execute if score #temp Wave matches ..10 run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {hallway_2_money:1b}
scoreboard players reset #temp Wave

function #luigis_mansion:room/normal/hallway_2/interactions/room

scoreboard players set #temp Room 7
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/normal/hallway_2/ghosts
tag @a[tag=same_room] remove same_room