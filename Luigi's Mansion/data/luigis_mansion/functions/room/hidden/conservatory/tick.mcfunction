execute unless score #conservatory Ticking matches 1 run function #luigis_mansion:room/hidden/conservatory/load
execute as @a[gamemode=!spectator,x=652,y=10,z=16,dx=12,dy=8,dz=28] unless entity @s[scores={Room=21}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=652,y=10,z=16,dx=12,dy=8,dz=28] run scoreboard players set @s Room 21

execute as @a[gamemode=!spectator,x=652,y=10,z=16,dx=12,dy=8,dz=28] run function luigis_mansion:room/hidden/conservatory/tick_per_player

function #luigis_mansion:room/hidden/conservatory/interactions/room

function luigis_mansion:room/hidden/conservatory/ghosts

function luigis_mansion:room/hidden/door/main_hallway_conservatory