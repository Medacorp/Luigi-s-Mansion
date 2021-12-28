execute unless score #hallway_22 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_22/load
execute as @a[gamemode=!spectator,x=653,y=1,z=27,dx=33,dy=8,dz=12] unless entity @s[scores={Room=61}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=653,y=1,z=27,dx=33,dy=8,dz=12] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 61
tag @e[tag=ghost,scores={Room=61}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=61}] run function luigis_mansion:room/hidden/hallway_22/tick_per_player

function #luigis_mansion:room/hidden/hallway_22/interactions/room

function luigis_mansion:room/hidden/hallway_22/ghosts

function luigis_mansion:room/hidden/door/hallway_21_hallway_22
function luigis_mansion:room/hidden/door/hallway_22_secret_altar