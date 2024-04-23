execute unless score #dining_room Ticking matches 1 run function #luigis_mansion:room/hidden/dining_room/load
execute as @a[x=697,y=10,z=-43,dx=14,dy=7,dz=30] unless entity @s[scores={Room=26}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=697,y=10,z=-43,dx=14,dy=7,dz=30] Room 26
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 26
#/todelete

execute as @a[scores={Room=26}] run function luigis_mansion:room/hidden/dining_room/tick_per_player

function #luigis_mansion:room/hidden/dining_room/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=26},tag=!spectator,limit=1] run function luigis_mansion:room/hidden/dining_room/ghosts