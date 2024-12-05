execute unless score #breaker_room Ticking matches 1 run function #luigis_mansion:room/hidden/breaker_room/load
execute as @e[tag=player,x=686,y=1,z=57,dx=14,dy=7,dz=21] unless entity @s[scores={Room=57}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=686,y=1,z=57,dx=14,dy=7,dz=21] Room 57
#todelete - old furniture
scoreboard players set #temp Room 57
#/todelete

execute as @e[scores={Room=57},tag=!model_piece,tag=!no_reflection,tag=!reflection,type=#luigis_mansion:reflected] if score #global_mirror_reflections Selected matches 1 run scoreboard players set @s MirrorX 699

execute as @a[scores={Room=57}] run function luigis_mansion:room/hidden/breaker_room/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/hidden/breaker_room/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=57},limit=1] run function luigis_mansion:room/hidden/breaker_room/ghosts