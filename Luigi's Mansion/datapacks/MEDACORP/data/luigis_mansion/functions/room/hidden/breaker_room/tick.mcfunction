execute unless score #breaker_room Ticking matches 1 run function #luigis_mansion:room/hidden/breaker_room/load
execute as @a[x=686,y=1,z=57,dx=14,dy=7,dz=21] unless entity @s[scores={Room=57}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[x=686,y=1,z=57,dx=14,dy=7,dz=21] Room 57
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 57
#/todelete

execute as @e[scores={Room=57}] unless entity @s[type=!minecraft:armor_stand,type=!minecraft:item_frame] run scoreboard players set @s MirrorX 699

execute as @a[scores={Room=57}] run function luigis_mansion:room/hidden/breaker_room/tick_per_player

function #luigis_mansion:room/hidden/breaker_room/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=57},tag=!spectator,limit=1] run function luigis_mansion:room/hidden/breaker_room/ghosts