execute unless score #hallway_8 Ticking matches 1 run function #3ds_remake:room/hidden/hallway_8/load
execute as @a[x=659,y=10,z=-62,dx=8,dy=16,dz=26] unless entity @s[scores={Room=33}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=659,y=10,z=-62,dx=8,dy=16,dz=26] Room 33
#todelete - old furniture
scoreboard players set #temp Room 33
#/todelete

execute as @a[scores={Room=33}] run function 3ds_remake:room/hidden/hallway_8/tick_per_player

#todelete - old furniture
function #3ds_remake:room/hidden/hallway_8/interactions/room
#/todelete

scoreboard players set #temp Room 33
execute as @a[tag=!pause_dialog] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,tag=!spectator,limit=1] run function 3ds_remake:room/hidden/hallway_8/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room