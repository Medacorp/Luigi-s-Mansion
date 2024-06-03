execute unless score #bottom_of_the_well Ticking matches 1 run function #luigis_mansion:room/hidden/bottom_of_the_well/load
execute as @a[x=645,y=92,z=14,dx=6,dy=7,dz=10] unless entity @s[x=648.5,y=93,z=25.5,distance=..0.7] unless entity @s[scores={Room=31}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=645,y=92,z=14,dx=6,dy=7,dz=10] unless entity @s[x=648.5,y=93,z=25.5,distance=..0.7] run scoreboard players set @s Room 31
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 31
#/todelete

execute as @e[scores={Room=31}] unless entity @s[type=!minecraft:armor_stand,type=!minecraft:item_frame] if score #global_mirror_reflections Selected matches 1 run scoreboard players set @s MirrorZ 41

execute as @a[scores={Room=31}] run function luigis_mansion:room/hidden/bottom_of_the_well/tick_per_player

function #luigis_mansion:room/hidden/bottom_of_the_well/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=31},tag=!spectator,limit=1] run function luigis_mansion:room/hidden/bottom_of_the_well/ghosts