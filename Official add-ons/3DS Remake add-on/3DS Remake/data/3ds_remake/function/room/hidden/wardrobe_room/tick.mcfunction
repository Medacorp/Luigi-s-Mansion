execute unless score #wardrobe_room Ticking matches 1 run function #3ds_remake:room/hidden/wardrobe_room/load
execute as @e[tag=player,x=676,y=19,z=55,dx=12,dy=7,dz=21] unless entity @s[scores={Room=5}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=676,y=19,z=55,dx=12,dy=7,dz=21] Room 5
#todelete - old furniture
scoreboard players set #temp Room 5
#/todelete

execute as @e[scores={Room=5},tag=!model_piece,tag=!no_reflection,tag=!reflection,type=#luigis_mansion:reflected] if score #global_mirror_reflections Selected matches 1 run scoreboard players set @s MirrorX 677

execute as @a[scores={Room=5}] run function 3ds_remake:room/hidden/wardrobe_room/tick_per_player

#todelete - old furniture
function #3ds_remake:room/hidden/wardrobe_room/interactions/room
#/todelete

clone 678 21 64 678 22 67 676 21 64 filtered minecraft:warped_trapdoor
clone 679 21 64 679 22 67 675 21 64 filtered minecraft:warped_trapdoor

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=5},limit=1] run function 3ds_remake:room/hidden/wardrobe_room/ghosts