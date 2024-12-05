execute unless score #nanas_room Ticking matches 1 run function #luigis_mansion:room/normal/nanas_room/load
execute as @e[tag=player,x=652,y=19,z=-29,dx=12,dy=7,dz=28] unless entity @s[scores={Room=44}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=652,y=19,z=-29,dx=12,dy=7,dz=28] Room 44
#todelete - old furniture
scoreboard players set #temp Room 44
#/todelete

execute as @a[scores={Room=44}] run function luigis_mansion:room/normal/nanas_room/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/normal/nanas_room/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=44},limit=1] run function luigis_mansion:room/normal/nanas_room/ghosts