execute unless score #bathroom_2 Ticking matches 1 run function #luigis_mansion:room/hidden/bathroom_2/load
execute as @a[x=653,y=111,z=-23,dx=12,dy=6,dz=14] unless entity @s[scores={Room=33}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=653,y=111,z=-23,dx=12,dy=6,dz=14] run scoreboard players set @s Room 33

execute as @a[gamemode=!spectator,x=655,y=111,z=-21,dx=8,dy=6,dz=10] run function luigis_mansion:room/hidden/bathroom_2/tick_per_player

function #luigis_mansion:room/hidden/bathroom_2/interactions/room

function luigis_mansion:room/hidden/bathroom_2/ghosts

function luigis_mansion:room/hidden/door/hallway_bathroom_2