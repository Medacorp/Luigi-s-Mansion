execute unless score #hallway_21 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_21/load
execute as @a[gamemode=!spectator,x=699,y=1,z=29,dx=13,dy=8,dz=8] unless entity @s[scores={Room=60}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=699,y=1,z=29,dx=13,dy=8,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 60
scoreboard players set #temp Room 60
tag @e[tag=ghost,scores={Room=60}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=60}] run function luigis_mansion:room/hidden/hallway_21/tick_per_player

function #luigis_mansion:room/hidden/hallway_21/interactions/room

function luigis_mansion:room/hidden/hallway_21/ghosts

function luigis_mansion:room/hidden/door/hallway_21_hallway_22
function luigis_mansion:room/hidden/door/hallway_21_pipe_room