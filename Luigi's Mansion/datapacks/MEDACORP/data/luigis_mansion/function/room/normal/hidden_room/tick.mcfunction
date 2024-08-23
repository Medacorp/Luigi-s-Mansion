execute unless score #hidden_room Ticking matches 1 run function #luigis_mansion:room/normal/hidden_room/load
execute as @a[x=736,y=10,z=29,dx=14,dy=7,dz=21] unless entity @s[scores={Room=24}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=736,y=10,z=29,dx=14,dy=7,dz=21] Room 24
#todelete - old furniture
scoreboard players set #temp Room 24
#/todelete

execute as @e[scores={Room=24}] unless entity @s[type=!minecraft:armor_stand,type=!minecraft:item_frame] if score #global_mirror_reflections Selected matches 1 run scoreboard players set @s MirrorX 749

execute as @a[scores={Room=24}] run function luigis_mansion:room/normal/hidden_room/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/normal/hidden_room/interactions/room
#/todelete

execute if entity @a[tag=!pause_dialog,scores={Room=24},tag=!spectator,limit=1] run function luigis_mansion:room/normal/hidden_room/ghosts