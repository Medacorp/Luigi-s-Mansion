execute unless score #roof Ticking matches 1 run function #luigis_mansion:room/normal/roof/load
execute as @a[x=682,y=130,z=-31,dx=31,dy=16,dz=77] unless entity @s[scores={Room=63}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=682,y=130,z=-31,dx=31,dy=16,dz=77] Room 63
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 63
#/todelete

execute as @a[scores={Room=63}] run function luigis_mansion:room/normal/roof/tick_per_player

function #luigis_mansion:room/normal/roof/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=63},tag=!spectator,limit=1] run function luigis_mansion:room/normal/roof/ghosts

execute unless score #clockwork_room_elevator Time matches 1.. if entity @a[x=687.0,y=129,z=6.0,dx=2,dy=2,dz=3,tag=!spectator] run scoreboard players set #clockwork_room_elevator Searched 1
execute if score #clockwork_room_elevator Time matches 100 if entity @a[x=685.0,y=129,z=7.0,dx=1,dy=2,dz=1,tag=!spectator] run scoreboard players set #clockwork_room_elevator Searched -1
