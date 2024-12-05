execute unless score #hallway_2 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_2/load
execute as @e[tag=player,x=722,y=19,z=-65,dx=8,dy=7,dz=38] unless entity @s[scores={Room=7}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=722,y=19,z=-65,dx=8,dy=7,dz=38] Room 7

execute as @a[scores={Room=7}] run function luigis_mansion:room/hidden/hallway_2/tick_per_player

execute as @e[tag=eternal_gold_coin,scores={Room=7}] run scoreboard players add #temp Wave 1
execute if score #temp Wave matches ..10 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["hallway_2_money"]} run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "hallway_2_money"
scoreboard players reset #temp Wave

execute unless data storage luigis_mansion:data current_state.current_data.technical_data{chauncey_cried:1b} if data storage luigis_mansion:data current_state.current_data{obtained_keys:["nursery"]} unless data storage luigis_mansion:data dialogs[{room:7}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"chauncey_cry"},room:7,progress:0,sound_origin:[729.5d,21.0d,-50.5d]}

scoreboard players set #temp Room 7
execute as @e[tag=luigi,tag=!door_animation] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @e[tag=luigi,tag=same_room,limit=1] run function luigis_mansion:room/hidden/hallway_2/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room