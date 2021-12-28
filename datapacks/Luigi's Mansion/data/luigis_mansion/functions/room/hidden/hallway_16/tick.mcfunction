execute unless score #hallway_16 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_16/load
execute as @a[gamemode=!spectator,x=741,y=28,z=24,dx=23,dy=8,dz=8] unless entity @s[scores={Room=51}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=741,y=28,z=24,dx=23,dy=8,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 51
tag @e[tag=ghost,scores={Room=51}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=51}] run function luigis_mansion:room/hidden/hallway_16/tick_per_player

function #luigis_mansion:room/hidden/hallway_16/interactions/room

function luigis_mansion:room/hidden/hallway_16/ghosts

function luigis_mansion:room/hidden/door/safari_room_hallway_16