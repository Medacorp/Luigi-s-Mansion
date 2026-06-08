execute unless score #courtyard Ticking matches 1 run function #luigis_mansion:room/hidden/courtyard/load
execute as @e[tag=player,x=644,y=101,z=-22,dx=10,dy=7,dz=78] unless entity @s[scores={Room=30}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=644,y=101,z=-22,dx=10,dy=7,dz=78] Room 30
#todelete - old furniture
scoreboard players set #temp Room 30
#/todelete

execute as @a[scores={Room=30}] run function luigis_mansion:room/hidden/courtyard/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/hidden/courtyard/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=30},limit=1] run function luigis_mansion:room/hidden/courtyard/ghosts