execute unless score #roof Ticking matches 1 run function #luigis_mansion:room/hidden/roof/load
execute as @a[x=682,y=128,z=-31,dx=31,dy=16,dz=77] unless entity @s[scores={Room=63}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=682,y=128,z=-31,dx=31,dy=16,dz=77] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 63

execute as @a[scores={Room=63}] run function luigis_mansion:room/hidden/roof/tick_per_player

function #luigis_mansion:room/hidden/roof/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=63},limit=1] run function luigis_mansion:room/hidden/roof/ghosts

execute unless score #clockwork_room_elevator Time matches 1.. if entity @a[x=687.0,y=129,z=6.0,dx=2,dy=2,dz=3,tag=!spectator] run scoreboard players set #clockwork_room_elevator Searched 1
execute if score #clockwork_room_elevator Time matches 100 if entity @a[x=685.0,y=129,z=7.0,dx=1,dy=2,dz=1,tag=!spectator] run scoreboard players set #clockwork_room_elevator Searched -1
