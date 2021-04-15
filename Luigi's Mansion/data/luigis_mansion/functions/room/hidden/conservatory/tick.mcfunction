execute unless score #conservatory Ticking matches 1 run function #luigis_mansion:room/hidden/conservatory/load
execute as @a[x=653,y=102,z=-3,dx=12,dy=6,dz=28] unless entity @s[scores={Room=21}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=653,y=102,z=-3,dx=12,dy=6,dz=28] run scoreboard players set @s Room 21

execute as @a[gamemode=!spectator,x=655,y=102,z=-1,dx=8,dy=6,dz=24] run function luigis_mansion:room/hidden/conservatory/tick_per_player
scoreboard players reset @a[gamemode=!spectator,x=664.5,y=102,z=13.5,distance=..0.7] Time

function #luigis_mansion:room/hidden/conservatory/interactions/room

function luigis_mansion:room/hidden/conservatory/ghosts

function luigis_mansion:room/hidden/door/main_hallway_conservatory