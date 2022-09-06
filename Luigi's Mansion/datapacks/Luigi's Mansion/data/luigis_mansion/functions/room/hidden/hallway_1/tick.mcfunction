execute unless score #hallway_1 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_1/load
execute as @a[gamemode=!spectator,x=735,y=17,z=-4,dx=7,dy=10,dz=21] unless entity @s[x=743,y=8,z=-4,dx=15,dy=19,dz=21] unless entity @s[scores={Room=2}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=735,y=17,z=-4,dx=7,dy=10,dz=21] unless entity @s[x=743,y=8,z=-4,dx=15,dy=19,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 2
scoreboard players set #temp Room 2
tag @e[tag=ghost,scores={Room=2}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=2}] run function luigis_mansion:room/hidden/hallway_1/tick_per_player

execute as @e[tag=eternal_gold_coin,scores={Room=2}] run scoreboard players add #temp Wave 1
execute if score #temp Wave matches ..7 run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {hallway_1_money:1b}
scoreboard players reset #temp Wave

function #luigis_mansion:room/hidden/hallway_1/interactions/room

scoreboard players set #temp Room 2
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/hidden/hallway_1/ghosts
tag @a[tag=same_room] remove same_room