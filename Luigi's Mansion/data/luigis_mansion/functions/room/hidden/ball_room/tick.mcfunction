execute unless score #ball_room Ticking matches 1 run function #luigis_mansion:room/hidden/ball_room/load
execute as @a[gamemode=!spectator,x=695,y=10,z=52,dx=17,dy=8,dz=33] unless entity @s[scores={Room=13}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=695,y=10,z=52,dx=17,dy=8,dz=33] run scoreboard players set @s Room 13

execute as @a[gamemode=!spectator,x=695,y=10,z=52,dx=17,dy=8,dz=33] run function luigis_mansion:room/hidden/ball_room/tick_per_player

function #luigis_mansion:room/hidden/ball_room/interactions/room

function luigis_mansion:room/hidden/ball_room/ghosts

function luigis_mansion:room/hidden/door/main_hallway_ball_room
function luigis_mansion:room/hidden/door/ball_room_storage_room