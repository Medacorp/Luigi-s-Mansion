execute unless score #butlers_room Ticking matches 1 run function #luigis_mansion:room/hidden/butlers_room/load
execute as @a[x=705,y=102,z=-42,dx=14,dy=6,dz=20] unless entity @s[scores={Room=19}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=705,y=102,z=-42,dx=14,dy=6,dz=20] run scoreboard players set @s Room 19

execute as @a[gamemode=!spectator,x=707,y=102,z=-40,dx=10,dy=6,dz=16] run function luigis_mansion:room/hidden/butlers_room/tick_per_player

function #luigis_mansion:room/hidden/butlers_room/interactions/room

function luigis_mansion:room/hidden/butlers_room/ghosts

function luigis_mansion:room/hidden/door/laundry_room_butlers_room