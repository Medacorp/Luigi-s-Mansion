execute unless score #roof Ticking matches 1 run function #luigis_mansion:room/hidden/roof/load
execute as @e[tag=player,x=682,y=130,z=-31,dx=31,dy=16,dz=77] unless entity @s[scores={Room=63}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=682,y=130,z=-31,dx=31,dy=16,dz=77] Room 63
#todelete - old furniture
scoreboard players set #temp Room 63
#/todelete

execute as @a[scores={Room=63}] run function luigis_mansion:room/hidden/roof/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/hidden/roof/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=63},limit=1] run function luigis_mansion:room/hidden/roof/ghosts

execute unless score #clockwork_room_elevator Time matches 1.. if entity @e[tag=player,x=687.0,y=129,z=6.0,dx=2,dy=2,dz=3,tag=!spectator] run scoreboard players set #clockwork_room_elevator Searched 1
execute if score #clockwork_room_elevator Time matches 100 if entity @e[tag=player,x=685.0,y=129,z=7.0,dx=1,dy=2,dz=1,tag=!spectator] run scoreboard players set #clockwork_room_elevator Searched -1
