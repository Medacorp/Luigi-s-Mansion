execute unless score #conservatory Ticking matches 1 run function #luigis_mansion:room/hidden/conservatory/load
execute as @e[tag=player,x=652,y=10,z=16,dx=12,dy=7,dz=28] unless entity @s[scores={Room=25}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=652,y=10,z=16,dx=12,dy=7,dz=28] Room 25
#todelete - old furniture
scoreboard players set #temp Room 25
#/todelete

execute as @a[scores={Room=25}] run function luigis_mansion:room/hidden/conservatory/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/hidden/conservatory/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=25},limit=1] run function luigis_mansion:room/hidden/conservatory/ghosts