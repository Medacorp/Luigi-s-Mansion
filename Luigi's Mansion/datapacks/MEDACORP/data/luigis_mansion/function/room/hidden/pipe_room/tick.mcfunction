execute unless score #pipe_room Ticking matches 1 run function #luigis_mansion:room/hidden/pipe_room/load
execute as @e[tag=player,x=686,y=1,z=3,dx=14,dy=7,dz=18] unless entity @s[scores={Room=67}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=686,y=1,z=3,dx=14,dy=7,dz=18] Room 67
#todelete - old furniture
scoreboard players set #temp Room 67
#/todelete

execute as @a[scores={Room=67}] run function luigis_mansion:room/hidden/pipe_room/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/hidden/pipe_room/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=67},limit=1] run function luigis_mansion:room/hidden/pipe_room/ghosts