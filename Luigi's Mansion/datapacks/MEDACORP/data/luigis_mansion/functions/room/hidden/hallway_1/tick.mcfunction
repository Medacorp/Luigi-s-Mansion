execute unless score #hallway_1 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_1/load
execute as @a[x=735,y=17,z=-4,dx=7,dy=9,dz=21] unless entity @s[x=743,y=8,z=-4,dx=15,dy=18,dz=21] unless entity @s[scores={Room=2}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=735,y=17,z=-4,dx=7,dy=9,dz=21] unless entity @s[x=743,y=8,z=-4,dx=15,dy=18,dz=21] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 2
tag @e[tag=ghost,scores={Room=2}] add no_hidden_move

execute as @a[scores={Room=2}] run function luigis_mansion:room/hidden/hallway_1/tick_per_player

execute as @e[tag=eternal_gold_coin,scores={Room=2}] run scoreboard players add #temp Wave 1
execute if score #temp Wave matches ..7 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["hallway_1_money"]} run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "hallway_1_money"
scoreboard players reset #temp Wave

scoreboard players set #temp Room 2
execute as @a[tag=!pause_dialog] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/hidden/hallway_1/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=same_room] remove exact_same_room