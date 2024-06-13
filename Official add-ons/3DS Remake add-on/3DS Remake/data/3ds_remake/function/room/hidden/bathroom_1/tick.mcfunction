execute unless score #bathroom_1 Ticking matches 1 run function #3ds_remake:room/hidden/bathroom_1/load
execute as @a[x=648,y=10,z=15,dx=12,dy=7,dz=14] unless entity @s[scores={Room=16}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=648,y=10,z=15,dx=12,dy=7,dz=14] Room 16
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 16
#/todelete

execute as @e[scores={Room=16}] unless entity @s[type=!minecraft:armor_stand,type=!minecraft:item_frame] if score #global_mirror_reflections Selected matches 1 run scoreboard players set @s MirrorX 649

execute as @a[scores={Room=16}] run function 3ds_remake:room/hidden/bathroom_1/tick_per_player

function #3ds_remake:room/hidden/bathroom_1/interactions/room

clone 654 12 21 654 16 27 644 12 21

execute if entity @a[tag=!pause_dialog,scores={Room=16},tag=!spectator,limit=1] run function 3ds_remake:room/hidden/bathroom_1/ghosts