execute unless score #master_bedroom Ticking matches 1 run function #3ds_remake:room/hidden/master_bedroom/load
execute as @e[tag=player,x=682,y=110,z=37,dx=17,dy=7,dz=20] unless entity @s[scores={Room=9}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=682,y=110,z=37,dx=17,dy=7,dz=20] Room 9
#todelete - old furniture
scoreboard players set #temp Room 9
#/todelete

execute as @a[scores={Room=9}] run function 3ds_remake:room/hidden/master_bedroom/tick_per_player

#todelete - old furniture
function #3ds_remake:room/hidden/master_bedroom/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=9},limit=1] run function 3ds_remake:room/hidden/master_bedroom/ghosts