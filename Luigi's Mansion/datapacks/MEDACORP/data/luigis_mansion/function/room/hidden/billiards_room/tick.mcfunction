execute unless score #billiards_room Ticking matches 1 run function #luigis_mansion:room/hidden/billiards_room/load
execute as @e[tag=player,x=673,y=10,z=-76,dx=15,dy=7,dz=27] unless entity @s[scores={Room=47}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=673,y=10,z=-76,dx=15,dy=7,dz=27] Room 47
#todelete - old furniture
scoreboard players set #temp Room 47
#/todelete

execute as @e[scores={Room=47},tag=!model_piece,tag=!no_reflection,tag=!reflection,type=#luigis_mansion:reflected] if score #global_mirror_reflections Selected matches 1 run scoreboard players set @s MirrorX 674

execute as @a[scores={Room=47}] run function luigis_mansion:room/hidden/billiards_room/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/hidden/billiards_room/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=47},limit=1] run function luigis_mansion:room/hidden/billiards_room/ghosts