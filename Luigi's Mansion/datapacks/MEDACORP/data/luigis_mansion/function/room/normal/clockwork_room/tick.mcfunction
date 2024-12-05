execute unless score #clockwork_room Ticking matches 1 run function #luigis_mansion:room/normal/clockwork_room/load
execute as @e[tag=player,x=682,y=119,z=-10,dx=17,dy=7,dz=35] unless entity @s[scores={Room=62}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=682,y=119,z=-10,dx=17,dy=7,dz=35] Room 62
#todelete - old furniture
scoreboard players set #temp Room 62
#/todelete

execute as @a[scores={Room=62}] run function luigis_mansion:room/normal/clockwork_room/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/normal/clockwork_room/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=62},limit=1] run function luigis_mansion:room/normal/clockwork_room/ghosts

execute unless score #clockwork_room_elevator Time matches 1.. if entity @e[tag=player,x=685.0,y=118,z=7.0,dx=1,dy=2,dz=1,tag=!spectator] run scoreboard players set #clockwork_room_elevator Searched 1
execute if score #clockwork_room_elevator Time matches 100 if entity @e[tag=player,x=687.0,y=118,z=7.0,dx=1,dy=2,dz=1,tag=!spectator] run scoreboard players set #clockwork_room_elevator Searched -1