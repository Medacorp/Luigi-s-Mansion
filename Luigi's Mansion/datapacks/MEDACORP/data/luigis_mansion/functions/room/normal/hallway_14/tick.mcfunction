execute unless score #hallway_14 Ticking matches 1 run function #luigis_mansion:room/normal/hallway_14/load
execute as @a[x=712,y=19,z=-55,dx=8,dy=16,dz=12] unless entity @s[scores={Room=40}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=712,y=19,z=-55,dx=8,dy=16,dz=12] Room 40
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 40
#/todelete

execute as @a[scores={Room=40}] run function luigis_mansion:room/normal/hallway_14/tick_per_player

function #luigis_mansion:room/normal/hallway_14/interactions/room

scoreboard players set #temp Room 40
execute as @a[tag=!pause_dialog] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,tag=!spectator,limit=1] run function luigis_mansion:room/normal/hallway_14/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=same_room] remove exact_same_room