execute unless score #secret_altar Ticking matches 1 run function #3ds_remake:room/hidden/secret_altar/load
execute as @a[x=634,y=92,z=-27,dx=20,dy=7,dz=18] unless entity @s[x=645,y=92,z=-9,dx=6,dy=7,dz=10] unless entity @s[scores={Room=72}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=634,y=92,z=-27,dx=20,dy=7,dz=18] unless entity @s[x=645,y=92,z=-9,dx=6,dy=7,dz=10] run scoreboard players set @s Room 72
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 72
#/todelete

execute as @e[scores={Room=72}] unless entity @s[type=!minecraft:armor_stand,type=!minecraft:item_frame] if score #global_mirror_reflections Selected matches 1 run scoreboard players set @s MirrorZ -26

execute as @a[scores={Room=72}] run function 3ds_remake:room/hidden/secret_altar/tick_per_player

function #3ds_remake:room/hidden/secret_altar/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=72},tag=!spectator,limit=1] run function 3ds_remake:room/hidden/secret_altar/ghosts

execute as @a[x=648.5,y=93,z=-9.5,distance=..0.7,tag=!spectator,limit=1] unless data storage luigis_mansion:data current_state.current_data.technical_data{saw_mario_again:1b} unless data storage luigis_mansion:data dialogs[{room:72}] run function 3ds_remake:room/hidden/secret_altar/look_at_marios_painting