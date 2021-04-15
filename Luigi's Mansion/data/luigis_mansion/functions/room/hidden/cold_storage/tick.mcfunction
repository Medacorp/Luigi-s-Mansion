execute unless score #cold_storage Ticking matches 1 run function #luigis_mansion:room/hidden/cold_storage/load
execute as @a[x=698,y=92,z=12,dx=21,dy=6,dz=18] unless entity @s[scores={Room=55}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=698,y=92,z=12,dx=21,dy=6,dz=18] run scoreboard players set @s Room 55

execute as @a[gamemode=!spectator,x=700,y=92,z=14,dx=17,dy=6,dz=14] run function luigis_mansion:room/hidden/cold_storage/tick_per_player

function #luigis_mansion:room/hidden/cold_storage/interactions/room

function luigis_mansion:room/hidden/cold_storage/ghosts

function luigis_mansion:room/hidden/door/basement_hallway_cold_storage