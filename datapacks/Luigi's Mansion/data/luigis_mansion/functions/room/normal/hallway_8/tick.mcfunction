execute unless score #hallway_8 Ticking matches 1 run function #luigis_mansion:room/normal/hallway_8/load
execute as @a[gamemode=!spectator,x=659,y=8,z=-62,dx=8,dy=19,dz=26] unless entity @s[scores={Room=33}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=659,y=8,z=-62,dx=8,dy=19,dz=26] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 33
scoreboard players set #temp Room 33
tag @e[tag=ghost,scores={Room=33}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=33}] run function luigis_mansion:room/normal/hallway_8/tick_per_player

execute if entity @e[x=661.0,y=20,z=59.5,distance=..0.7,type=minecraft:villager,tag=door,tag=!burning,limit=1] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {extinguished_hallway_8_fire:1b}
function #luigis_mansion:room/normal/hallway_8/interactions/room

scoreboard players set #temp Room 33
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/normal/hallway_8/ghosts
tag @a[tag=same_room] remove same_room