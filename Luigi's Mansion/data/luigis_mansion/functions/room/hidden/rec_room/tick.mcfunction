execute unless score #rec_room Ticking matches 1 run function #luigis_mansion:room/hidden/rec_room/load
execute as @a[x=653,y=102,z=24,dx=12,dy=6,dz=33] unless entity @s[scores={Room=28}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=653,y=102,z=24,dx=12,dy=6,dz=33] run scoreboard players set @s Room 28

execute as @a[gamemode=!spectator,x=655,y=102,z=26,dx=8,dy=6,dz=29] run function luigis_mansion:room/hidden/rec_room/tick_per_player

function #luigis_mansion:room/hidden/rec_room/interactions/room

function luigis_mansion:room/hidden/rec_room/ghosts

function luigis_mansion:room/hidden/door/courtyard_rec_room
function luigis_mansion:room/hidden/door/rec_room_main_stairs