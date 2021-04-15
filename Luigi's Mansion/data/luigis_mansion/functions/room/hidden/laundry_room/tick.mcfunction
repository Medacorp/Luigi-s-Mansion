execute unless score #laundry_room Ticking matches 1 run function #luigis_mansion:room/hidden/laundry_room/load
execute as @a[x=698,y=102,z=-42,dx=8,dy=6,dz=20] unless entity @s[scores={Room=18}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=698,y=102,z=-42,dx=8,dy=6,dz=20] run scoreboard players set @s Room 18

execute as @a[gamemode=!spectator,x=700,y=102,z=-40,dx=4,dy=6,dz=16] run function luigis_mansion:room/hidden/laundry_room/tick_per_player

function #luigis_mansion:room/hidden/laundry_room/interactions/room

function luigis_mansion:room/hidden/laundry_room/ghosts

function luigis_mansion:room/hidden/door/main_hallway_laundry_room
function luigis_mansion:room/hidden/door/laundry_room_butlers_room