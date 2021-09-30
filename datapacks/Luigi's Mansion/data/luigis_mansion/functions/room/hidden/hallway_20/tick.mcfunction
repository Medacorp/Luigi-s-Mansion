execute unless score #hallway_20 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_20/load
execute as @a[gamemode=!spectator,x=713,y=1,z=29,dx=22,dy=8,dz=8] unless entity @s[scores={Room=59}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=713,y=1,z=29,dx=22,dy=8,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 59
tag @e[tag=ghost,scores={Room=59}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=59}] run function luigis_mansion:room/hidden/hallway_20/tick_per_player

function #luigis_mansion:room/hidden/hallway_20/interactions/room

function luigis_mansion:room/hidden/hallway_20/ghosts

function luigis_mansion:room/hidden/door/cellar_hallway_20
function luigis_mansion:room/hidden/door/hallway_20_cold_storage