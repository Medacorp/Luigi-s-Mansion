execute unless score #childs_room Ticking matches 1 run function #luigis_beta_mansion:room/original/childs_room/load
execute as @a[gamemode=!spectator,x=737,y=17,z=53,dx=14,dy=10,dz=20] unless entity @s[scores={Room=7}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=737,y=17,z=53,dx=14,dy=10,dz=20] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 7
scoreboard players set #temp Room 7

execute as @a[gamemode=!spectator,scores={Room=7}] run function luigis_beta_mansion:room/original/childs_room/tick_per_player

function #luigis_beta_mansion:room/original/childs_room/interactions/room

scoreboard players set #temp Room 7
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_beta_mansion:room/original/childs_room/ghosts
tag @a[tag=same_room] remove same_room

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.childs_room.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=7},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.childs_room{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.childs_room.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time