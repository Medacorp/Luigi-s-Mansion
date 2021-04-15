execute unless score #laundry_room Ticking matches 1 run function #luigis_mansion:room/normal/laundry_room/load
execute as @a[x=712,y=11,z=57,dx=8,dy=6,dz=20] unless entity @s[scores={Room=18}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=712,y=11,z=57,dx=8,dy=6,dz=20] run scoreboard players set @s Room 18

execute as @a[gamemode=!spectator,x=712,y=11,z=57,dx=8,dy=6,dz=20] run function luigis_mansion:room/normal/laundry_room/tick_per_player

function #luigis_mansion:room/normal/laundry_room/interactions/room

function luigis_mansion:room/normal/laundry_room/ghosts

function luigis_mansion:room/normal/door/main_hallway_laundry_room
function luigis_mansion:room/normal/door/laundry_room_butlers_room