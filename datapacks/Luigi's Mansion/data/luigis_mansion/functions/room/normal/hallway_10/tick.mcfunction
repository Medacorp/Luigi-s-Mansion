execute unless score #hallway_10 Ticking matches 1 run function #luigis_mansion:room/normal/hallway_10/load
execute as @a[gamemode=!spectator,x=667,y=19,z=4,dx=11,dy=8,dz=8] unless entity @s[scores={Room=36}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=667,y=19,z=4,dx=11,dy=8,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 36
tag @e[tag=ghost,scores={Room=36}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=36}] run function luigis_mansion:room/normal/hallway_10/tick_per_player

function #luigis_mansion:room/normal/hallway_10/interactions/room

function luigis_mansion:room/normal/hallway_10/ghosts

function luigis_mansion:room/normal/door/hallway_10_bathroom_2
function luigis_mansion:room/normal/door/hallway_10_nanas_room