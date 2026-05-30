execute unless score #secret_altar Ticking matches 1 run function #luigis_mansion:room/normal/secret_altar/load
execute as @e[tag=player,x=634,y=92,z=-27,dx=20,dy=7,dz=18] unless entity @s[scores={Room=72}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=634,y=92,z=-27,dx=20,dy=7,dz=18] run scoreboard players set @s[tag=!separated_camera] Room 72
#todelete - old furniture
scoreboard players set #temp Room 72
#/todelete

execute as @e[scores={Room=72},tag=!model_piece,tag=!no_reflection,tag=!reflection,type=#luigis_mansion:reflected] if score #global_mirror_reflections Selected matches 1 run scoreboard players set @s MirrorZ -26

execute as @a[scores={Room=72}] run function luigis_mansion:room/normal/secret_altar/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/normal/secret_altar/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=72},limit=1] run function luigis_mansion:room/normal/secret_altar/ghosts

execute as @e[tag=player,x=648.5,y=93,z=-9.5,distance=..0.7,tag=!spectator,limit=1] unless data storage luigis_mansion:data current_state.current_data.technical_data{saw_mario_again:1b} unless data storage luigis_mansion:data dialogs[{room:72}] run function luigis_mansion:room/normal/secret_altar/look_at_marios_portrait