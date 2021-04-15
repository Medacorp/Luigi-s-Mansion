execute unless score #nanas_room Ticking matches 1 run function #luigis_mansion:room/hidden/nanas_room/load
execute as @a[x=653,y=111,z=-3,dx=12,dy=6,dz=28] unless entity @s[scores={Room=34}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=653,y=111,z=-3,dx=12,dy=6,dz=28] run scoreboard players set @s Room 34

execute as @a[gamemode=!spectator,x=655,y=111,z=-1,dx=8,dy=6,dz=24] run function luigis_mansion:room/hidden/nanas_room/tick_per_player

function #luigis_mansion:room/hidden/nanas_room/interactions/room

function luigis_mansion:room/hidden/nanas_room/ghosts

function luigis_mansion:room/hidden/door/hallway_nanas_room