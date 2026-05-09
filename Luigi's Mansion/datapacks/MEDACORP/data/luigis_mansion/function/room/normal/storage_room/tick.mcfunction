execute unless score #storage_room Ticking matches 1 run function #luigis_mansion:room/normal/storage_room/load
execute as @e[tag=player,x=679,y=10,z=-70,dx=12,dy=7,dz=33] unless entity @s[scores={Room=18}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=679,y=10,z=-70,dx=12,dy=7,dz=33] Room 18
#todelete - old furniture
scoreboard players set #temp Room 18
#/todelete

execute as @e[scores={Room=18},tag=!model_piece,tag=!no_reflection,tag=!reflection,type=#luigis_mansion:reflected] if score #global_mirror_reflections Selected matches 1 run scoreboard players set @s MirrorX 680

execute as @a[scores={Room=18}] run function luigis_mansion:room/normal/storage_room/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/normal/storage_room/interactions/room
#/todelete

fill 671 10 -68 679 18 -40 minecraft:barrier replace minecraft:air

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=18},limit=1] run function luigis_mansion:room/normal/storage_room/ghosts