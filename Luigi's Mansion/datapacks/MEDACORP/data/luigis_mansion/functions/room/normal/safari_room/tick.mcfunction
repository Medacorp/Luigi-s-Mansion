execute unless score #safari_room Ticking matches 1 run function #luigis_mansion:room/normal/safari_room/load
execute as @a[x=732,y=28,z=-59,dx=14,dy=7,dz=25] unless entity @s[scores={Room=50}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=732,y=28,z=-59,dx=14,dy=7,dz=25] Room 50
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 50
#/todelete

execute as @e[scores={Room=50}] unless entity @s[type=!minecraft:armor_stand,type=!minecraft:item_frame] run scoreboard players set @s MirrorX 745

execute as @a[scores={Room=50}] run function luigis_mansion:room/normal/safari_room/tick_per_player

function #luigis_mansion:room/normal/safari_room/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=50},tag=!spectator,limit=1] run function luigis_mansion:room/normal/safari_room/ghosts