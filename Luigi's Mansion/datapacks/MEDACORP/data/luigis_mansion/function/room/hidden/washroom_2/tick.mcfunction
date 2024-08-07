execute unless score #washroom_2 Ticking matches 1 run function #luigis_mansion:room/hidden/washroom_2/load
execute as @a[x=660,y=19,z=-33,dx=8,dy=7,dz=14] unless entity @s[scores={Room=42}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=660,y=19,z=-33,dx=8,dy=7,dz=14] Room 42
#todelete - old furniture
scoreboard players set #temp Room 42
#/todelete

execute as @e[scores={Room=42}] unless entity @s[type=!minecraft:armor_stand,type=!minecraft:item_frame] if score #global_mirror_reflections Selected matches 1 run scoreboard players set @s MirrorX 661

execute as @a[scores={Room=42}] run function luigis_mansion:room/hidden/washroom_2/tick_per_player

function #luigis_mansion:room/hidden/washroom_2/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=42},tag=!spectator,limit=1] run function luigis_mansion:room/hidden/washroom_2/ghosts