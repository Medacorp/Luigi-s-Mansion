execute unless score #clockwork_room Ticking matches 1 run function #3ds_remake:room/hidden/clockwork_room/load
execute as @a[x=682,y=119,z=-10,dx=17,dy=7,dz=35] unless entity @s[scores={Room=62}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=682,y=119,z=-10,dx=17,dy=7,dz=35] Room 62
#todelete - old furniture
scoreboard players set #temp Room 62
#/todelete

execute as @a[scores={Room=62}] run function 3ds_remake:room/hidden/clockwork_room/tick_per_player

function #3ds_remake:room/hidden/clockwork_room/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=62},tag=!spectator,limit=1] run function 3ds_remake:room/hidden/clockwork_room/ghosts

execute unless score #clockwork_room_elevator Time matches 1.. if entity @a[x=685.0,y=118,z=7.0,dx=1,dy=2,dz=1,tag=!spectator] run scoreboard players set #clockwork_room_elevator Searched 1
execute if score #clockwork_room_elevator Time matches 100 if entity @a[x=687.0,y=118,z=7.0,dx=1,dy=2,dz=1,tag=!spectator] run scoreboard players set #clockwork_room_elevator Searched -1