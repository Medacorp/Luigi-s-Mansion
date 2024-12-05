execute unless score #washroom_2 Ticking matches 1 run function #3ds_remake:room/hidden/washroom_2/load
execute as @e[tag=player,x=660,y=19,z=34,dx=8,dy=7,dz=14] unless entity @s[scores={Room=42}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=660,y=19,z=34,dx=8,dy=7,dz=14] Room 42
#todelete - old furniture
scoreboard players set #temp Room 42
#/todelete

execute as @e[scores={Room=42},tag=!model_piece,tag=!no_reflection,tag=!reflection,type=#luigis_mansion:reflected] if score #global_mirror_reflections Selected matches 1 run scoreboard players set @s MirrorX 661

execute as @a[scores={Room=42}] run function 3ds_remake:room/hidden/washroom_2/tick_per_player

#todelete - old furniture
function #3ds_remake:room/hidden/washroom_2/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=42},limit=1] run function 3ds_remake:room/hidden/washroom_2/ghosts