execute unless score #mirror_room Ticking matches 1 run function #luigis_mansion:room/normal/mirror_room/load
execute as @e[tag=player,x=734,y=10,z=-63,dx=14,dy=7,dz=21] unless entity @s[scores={Room=21}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=734,y=10,z=-63,dx=14,dy=7,dz=21] Room 21
#todelete - old furniture
scoreboard players set #temp Room 21
#/todelete

execute as @e[scores={Room=21},tag=!model_piece,tag=!no_reflection,tag=!reflection,type=#luigis_mansion:reflected] if score #global_mirror_reflections Selected matches 1 run scoreboard players set @s MirrorX 735

execute as @a[scores={Room=21}] run function luigis_mansion:room/normal/mirror_room/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/normal/mirror_room/interactions/room
#/todelete

execute unless entity @e[tag=light_me,tag=!lit,scores={Room=21},limit=1] run tag @e[scores={Room=21},tag=furniture,tag=door] remove blockade

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=21},limit=1] run function luigis_mansion:room/normal/mirror_room/ghosts