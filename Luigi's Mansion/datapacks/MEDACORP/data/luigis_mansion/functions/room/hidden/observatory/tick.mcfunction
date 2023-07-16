execute unless score #observatory Ticking matches 1 run function #luigis_mansion:room/hidden/observatory/load
execute as @a[gamemode=!spectator,x=627,y=14,z=87,dx=24,dy=12,dz=72] unless entity @s[scores={Room=46}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=627,y=14,z=87,dx=24,dy=12,dz=72] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 46
scoreboard players set #temp Room 46

execute as @a[scores={Room=46}] run function luigis_mansion:room/hidden/observatory/tick_per_player

execute as @a[gamemode=!spectator,x=643.5,y=20,z=95.5,distance=..0.7,y_rotation=-45..45,limit=1] unless data storage luigis_mansion:data current_state.current_data.technical_data{observatory_destroyed:1b} unless entity @a[tag=observatory_dialog,limit=1] run tag @s add observatory_dialog

function #luigis_mansion:room/hidden/observatory/interactions/room

scoreboard players set #temp Room 46
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/hidden/observatory/ghosts
tag @a[tag=same_room] remove same_room