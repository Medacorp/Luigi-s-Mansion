execute unless score #sealed_room Ticking matches 1 run function #luigis_mansion:room/normal/sealed_room/load
execute as @e[tag=player,x=693,y=19,z=-88,dx=17,dy=7,dz=33] unless entity @s[scores={Room=66}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=693,y=19,z=-88,dx=17,dy=7,dz=33] Room 66
#todelete - old furniture
scoreboard players set #temp Room 66
#/todelete

execute as @e[scores={Room=66},tag=!model_piece,tag=!no_reflection,tag=!reflection,type=#luigis_mansion:reflected] if score #global_mirror_reflections Selected matches 1 run scoreboard players set @s MirrorX 694

execute as @a[scores={Room=66}] run function luigis_mansion:room/normal/sealed_room/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/normal/sealed_room/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=66},limit=1] run function luigis_mansion:room/normal/sealed_room/ghosts