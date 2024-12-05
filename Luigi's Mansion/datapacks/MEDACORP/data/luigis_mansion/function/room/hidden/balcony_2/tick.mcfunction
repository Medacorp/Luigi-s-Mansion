execute unless score #balcony_2 Ticking matches 1 run function #luigis_mansion:room/hidden/balcony_2/load
execute as @e[tag=player,x=653,y=119,z=-23,dx=30,dy=25,dz=80] unless entity @s[scores={Room=53}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=653,y=119,z=-23,dx=30,dy=25,dz=80] Room 53
#todelete - old furniture
scoreboard players set #temp Room 53
#/todelete

execute as @a[scores={Room=53}] run function luigis_mansion:room/hidden/balcony_2/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/hidden/balcony_2/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=53},limit=1] run function luigis_mansion:room/hidden/balcony_2/ghosts