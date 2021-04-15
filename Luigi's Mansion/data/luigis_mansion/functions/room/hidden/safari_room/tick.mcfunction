execute unless score #safari_room Ticking matches 1 run function #luigis_mansion:room/hidden/safari_room/load
execute as @a[x=705,y=120,z=31,dx=14,dy=6,dz=25] unless entity @s[scores={Room=40}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=705,y=120,z=31,dx=14,dy=6,dz=25] run scoreboard players set @s Room 40

execute as @a[gamemode=!spectator,x=707,y=120,z=33,dx=10,dy=6,dz=21] run function luigis_mansion:room/hidden/safari_room/tick_per_player

function #luigis_mansion:room/hidden/safari_room/interactions/room

function luigis_mansion:room/hidden/safari_room/ghosts

function luigis_mansion:room/hidden/door/hallway_safari_room
function luigis_mansion:room/hidden/door/safari_room_attic_hallway_1