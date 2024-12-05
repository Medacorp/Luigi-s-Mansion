execute unless score #kitchen Ticking matches 1 run function #luigis_mansion:room/hidden/kitchen/load
execute as @e[tag=player,x=697,y=10,z=-77,dx=14,dy=7,dz=31] unless entity @s[scores={Room=27}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=697,y=10,z=-77,dx=14,dy=7,dz=31] Room 27
#todelete - old furniture
scoreboard players set #temp Room 27
#/todelete

execute as @a[scores={Room=27}] run function luigis_mansion:room/hidden/kitchen/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/hidden/kitchen/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=27},limit=1] run function luigis_mansion:room/hidden/kitchen/ghosts