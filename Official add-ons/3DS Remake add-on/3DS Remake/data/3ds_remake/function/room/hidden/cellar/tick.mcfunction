execute unless score #cellar Ticking matches 1 run function #3ds_remake:room/hidden/cellar/load
execute as @e[tag=player,x=734,y=1,z=-63,dx=14,dy=7,dz=21] unless entity @s[scores={Room=58}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=734,y=1,z=-63,dx=14,dy=7,dz=21] Room 58
#todelete - old furniture
scoreboard players set #temp Room 58
#/todelete

execute as @a[scores={Room=58}] run function 3ds_remake:room/hidden/cellar/tick_per_player

#todelete - old furniture
function #3ds_remake:room/hidden/cellar/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=58},limit=1] run function 3ds_remake:room/hidden/cellar/ghosts