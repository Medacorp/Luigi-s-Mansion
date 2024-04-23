execute unless score #bathroom_2 Ticking matches 1 run function #luigis_mansion:room/hidden/bathroom_2/load
execute as @a[x=648,y=19,z=-14,dx=12,dy=7,dz=14] unless entity @s[scores={Room=43}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=648,y=19,z=-14,dx=12,dy=7,dz=14] Room 43
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 43
#/todelete

execute as @e[scores={Room=43}] unless entity @s[type=!minecraft:armor_stand,type=!minecraft:item_frame] run scoreboard players set @s MirrorX 649

execute as @a[scores={Room=43}] run function luigis_mansion:room/hidden/bathroom_2/tick_per_player

function #luigis_mansion:room/hidden/bathroom_2/interactions/room

clone 654 21 -7 654 25 -12 644 21 -12

execute if entity @a[tag=!pause_dialog,scores={Room=43},tag=!spectator,limit=1] run function luigis_mansion:room/hidden/bathroom_2/ghosts