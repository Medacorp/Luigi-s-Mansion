execute unless score #butlers_room Ticking matches 1 run function #luigis_mansion:room/hidden/butlers_room/load
execute as @e[tag=player,x=737,y=10,z=-58,dx=14,dy=7,dz=20] unless entity @s[scores={Room=23}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=737,y=10,z=-58,dx=14,dy=7,dz=20] Room 23
#todelete - old furniture
scoreboard players set #temp Room 23
#/todelete

execute as @a[scores={Room=23}] run function luigis_mansion:room/hidden/butlers_room/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/hidden/butlers_room/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=23},limit=1] run function luigis_mansion:room/hidden/butlers_room/ghosts