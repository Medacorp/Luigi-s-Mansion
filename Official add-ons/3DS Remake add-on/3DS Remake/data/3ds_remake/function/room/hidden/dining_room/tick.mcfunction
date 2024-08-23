execute unless score #dining_room Ticking matches 1 run function #3ds_remake:room/hidden/dining_room/load
execute as @a[x=697,y=10,z=28,dx=14,dy=7,dz=30] unless entity @s[scores={Room=26}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=697,y=10,z=28,dx=14,dy=7,dz=30] Room 26
#todelete - old furniture
scoreboard players set #temp Room 26
#/todelete

execute as @a[scores={Room=26}] run function 3ds_remake:room/hidden/dining_room/tick_per_player

#todelete - old furniture
function #3ds_remake:room/hidden/dining_room/interactions/room
#/todelete

execute if entity @a[tag=!pause_dialog,scores={Room=26},tag=!spectator,limit=1] run function 3ds_remake:room/hidden/dining_room/ghosts