execute unless score #nursery Ticking matches 1 run function #luigis_mansion:room/hidden/nursery/load
execute as @a[gamemode=!spectator,x=737,y=19,z=-58,dx=14,dy=8,dz=20] unless entity @s[scores={Room=10}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=737,y=19,z=-58,dx=14,dy=8,dz=20] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 10
scoreboard players set #temp Room 10

execute as @a[gamemode=!spectator,scores={Room=10}] run function luigis_mansion:room/hidden/nursery/tick_per_player

execute as @e[tag=eternal_gold_coin,scores={Room=10}] run scoreboard players add #temp Wave 1
execute if score #temp Wave matches ..8 run data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {nursery_money:1b}
scoreboard players reset #temp Wave

function #luigis_mansion:room/hidden/nursery/interactions/room

scoreboard players set #temp Room 10
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/hidden/nursery/ghosts
tag @a[tag=same_room] remove same_room