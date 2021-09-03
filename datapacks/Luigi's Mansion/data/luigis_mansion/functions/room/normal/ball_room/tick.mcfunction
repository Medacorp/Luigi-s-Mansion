execute unless score #ball_room Ticking matches 1 run function #luigis_mansion:room/normal/ball_room/load
execute as @a[gamemode=!spectator,x=695,y=10,z=-70,dx=17,dy=8,dz=33] unless entity @s[scores={Room=17}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=695,y=10,z=-70,dx=17,dy=8,dz=33] unless entity @s[type=!minecraft:player,scores={Room=-2147483648..}] run scoreboard players set @s Room 17

execute as @a[gamemode=!spectator,scores={Room=17}] run function luigis_mansion:room/normal/ball_room/tick_per_player

function #luigis_mansion:room/normal/ball_room/interactions/room

function luigis_mansion:room/normal/ball_room/ghosts

function luigis_mansion:room/normal/door/hallway_4_ball_room
function luigis_mansion:room/normal/door/ball_room_storage_room