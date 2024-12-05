execute unless score #ball_room Ticking matches 1 run function #luigis_mansion:room/hidden/ball_room/load
execute as @e[tag=player,x=695,y=10,z=52,dx=17,dy=7,dz=33] unless entity @s[scores={Room=17}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=695,y=10,z=52,dx=17,dy=7,dz=33] Room 17
#todelete - old furniture
scoreboard players set #temp Room 17
#/todelete

execute as @a[scores={Room=17}] run function luigis_mansion:room/hidden/ball_room/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/hidden/ball_room/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=17},limit=1] run function luigis_mansion:room/hidden/ball_room/ghosts