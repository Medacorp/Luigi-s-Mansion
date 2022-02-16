execute unless score #ball_room Ticking matches 1 run function #luigis_mansion:room/hidden/ball_room/load
execute as @a[gamemode=!spectator,x=695,y=10,z=52,dx=17,dy=8,dz=33] unless entity @s[scores={Room=17}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=695,y=10,z=52,dx=17,dy=8,dz=33] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 17
scoreboard players set #temp Room 17

execute as @a[gamemode=!spectator,scores={Room=17}] run function luigis_mansion:room/hidden/ball_room/tick_per_player

function #luigis_mansion:room/hidden/ball_room/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=17},limit=1] run function luigis_mansion:room/hidden/ball_room/ghosts

function luigis_mansion:room/hidden/door/hallway_4_ball_room
function luigis_mansion:room/hidden/door/ball_room_storage_room