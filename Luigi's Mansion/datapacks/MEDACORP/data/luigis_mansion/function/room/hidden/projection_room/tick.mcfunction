execute unless score #projection_room Ticking matches 1 run function #luigis_mansion:room/hidden/projection_room/load
execute as @e[tag=player,x=673,y=10,z=-31,dx=15,dy=7,dz=16] unless entity @s[scores={Room=48}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=673,y=10,z=-31,dx=15,dy=7,dz=16] Room 48
#todelete - old furniture
scoreboard players set #temp Room 48
#/todelete

execute as @a[scores={Room=48}] run function luigis_mansion:room/hidden/projection_room/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/hidden/projection_room/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=48},limit=1] run function luigis_mansion:room/hidden/projection_room/ghosts