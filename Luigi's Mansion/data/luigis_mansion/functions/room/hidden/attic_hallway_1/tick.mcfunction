execute unless score #attic_hallway_1 Ticking matches 1 run function #luigis_mansion:room/hidden/attic_hallway_1/load
execute as @a[x=682,y=120,z=24,dx=40,dy=6,dz=8] unless entity @s[scores={Room=41}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=682,y=120,z=24,dx=40,dy=6,dz=8] run scoreboard players set @s Room 41
tag @e[tag=ghost,scores={Room=41}] add hallway

execute as @a[gamemode=!spectator,x=684,y=120,z=26,dx=36,dy=6,dz=4] run function luigis_mansion:room/hidden/attic_hallway_1/tick_per_player

function #luigis_mansion:room/hidden/attic_hallway_1/interactions/room

function luigis_mansion:room/hidden/attic_hallway_1/ghosts

function luigis_mansion:room/hidden/door/safari_room_attic_hallway_1
function luigis_mansion:room/hidden/door/attic_hallway_1_balcony_2
function luigis_mansion:room/hidden/door/attic_hallway_1_artists_studio