execute unless score #hallway_13 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_13/load
execute as @a[x=713,y=19,z=30,dx=7,dy=7,dz=27] unless entity @s[scores={Room=39}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=713,y=19,z=30,dx=7,dy=7,dz=27] Room 39
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 39
#/todelete

execute as @a[scores={Room=39}] run function luigis_mansion:room/hidden/hallway_13/tick_per_player

function #luigis_mansion:room/hidden/hallway_13/interactions/room

scoreboard players set #temp Room 39
execute as @a[tag=!pause_dialog] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,tag=!spectator,limit=1] run function luigis_mansion:room/hidden/hallway_13/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=same_room] remove exact_same_room