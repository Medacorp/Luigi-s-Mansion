execute unless score #kitchen Ticking matches 1 run function #luigis_mansion:room/hidden/kitchen/load
execute as @a[gamemode=!spectator,x=697,y=8,z=-77,dx=14,dy=9,dz=31] unless entity @s[scores={Room=27}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=697,y=8,z=-77,dx=14,dy=9,dz=31] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 27
scoreboard players set #temp Room 27

execute as @a[scores={Room=27}] run function luigis_mansion:room/hidden/kitchen/tick_per_player

execute if entity @e[x=699.0,y=11,z=-72.5,distance=..0.7,tag=furniture,tag=door,tag=!burning,limit=1] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {extinguished_kitchen_fire:1b}
function #luigis_mansion:room/hidden/kitchen/interactions/room

scoreboard players set #temp Room 27
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/hidden/kitchen/ghosts
tag @a[tag=same_room] remove same_room