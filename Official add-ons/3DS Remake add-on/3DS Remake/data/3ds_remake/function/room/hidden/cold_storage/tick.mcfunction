execute unless score #cold_storage Ticking matches 1 run function #3ds_remake:room/hidden/cold_storage/load
execute as @e[tag=player,x=721,y=1,z=-6,dx=21,dy=7,dz=18] unless entity @s[scores={Room=68}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=721,y=1,z=-6,dx=21,dy=7,dz=18] Room 68
#todelete - old furniture
scoreboard players set #temp Room 68
#/todelete

execute as @a[scores={Room=68}] run function 3ds_remake:room/hidden/cold_storage/tick_per_player

#todelete - old furniture
function #3ds_remake:room/hidden/cold_storage/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=68},limit=1] run function 3ds_remake:room/hidden/cold_storage/ghosts