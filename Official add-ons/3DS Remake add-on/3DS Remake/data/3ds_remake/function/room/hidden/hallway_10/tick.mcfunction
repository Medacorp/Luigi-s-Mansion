execute unless score #hallway_10 Ticking matches 1 run function #3ds_remake:room/hidden/hallway_10/load
execute as @a[x=667,y=19,z=4,dx=11,dy=7,dz=8] unless entity @s[scores={Room=36}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=667,y=19,z=4,dx=11,dy=7,dz=8] Room 36
#todelete - old furniture
scoreboard players set #temp Room 36
#/todelete

execute as @a[scores={Room=36}] run function 3ds_remake:room/hidden/hallway_10/tick_per_player

#todelete - old furniture
function #3ds_remake:room/hidden/hallway_10/interactions/room
#/todelete

scoreboard players set #temp Room 36
execute as @a[tag=!pause_dialog] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,tag=!spectator,limit=1] run function 3ds_remake:room/hidden/hallway_10/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room