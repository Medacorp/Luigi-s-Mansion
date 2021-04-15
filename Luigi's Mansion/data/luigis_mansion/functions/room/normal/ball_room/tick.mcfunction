execute unless score #ball_room Ticking matches 1 run function #luigis_mansion:room/normal/ball_room/load
execute as @a[x=695,y=11,z=-70,dx=17,dy=6,dz=33] unless entity @s[scores={Room=13}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=695,y=11,z=-70,dx=17,dy=6,dz=33] run scoreboard players set @s Room 13

execute as @a[gamemode=!spectator,x=695,y=11,z=-70,dx=17,dy=6,dz=33] run function luigis_mansion:room/normal/ball_room/tick_per_player

function #luigis_mansion:room/normal/ball_room/interactions/room

function luigis_mansion:room/normal/ball_room/ghosts

function luigis_mansion:room/normal/door/main_hallway_ball_room
function luigis_mansion:room/normal/door/ball_room_storage_room