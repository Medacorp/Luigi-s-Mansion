execute unless score #laundry_room Ticking matches 1 run function #luigis_mansion:room/hidden/laundry_room/load
execute as @a[gamemode=!spectator,x=712,y=10,z=-62,dx=8,dy=8,dz=20] unless entity @s[scores={Room=22}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=712,y=10,z=-62,dx=8,dy=8,dz=20] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 22
scoreboard players set #temp Room 22

execute as @a[gamemode=!spectator,scores={Room=22}] run function luigis_mansion:room/hidden/laundry_room/tick_per_player

function #luigis_mansion:room/hidden/laundry_room/interactions/room

function luigis_mansion:room/hidden/laundry_room/ghosts

function luigis_mansion:room/hidden/door/hallway_3_laundry_room
function luigis_mansion:room/hidden/door/laundry_room_butlers_room