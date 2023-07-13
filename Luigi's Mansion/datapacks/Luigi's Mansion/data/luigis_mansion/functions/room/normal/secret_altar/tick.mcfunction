execute unless score #secret_altar Ticking matches 1 run function #luigis_mansion:room/normal/secret_altar/load
execute as @a[gamemode=!spectator,x=634,y=90,z=-27,dx=20,dy=8,dz=18] unless entity @s[x=645,y=90,z=-9,dx=6,dy=7,dz=10] unless entity @s[scores={Room=72}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=634,y=90,z=-27,dx=20,dy=8,dz=18] unless entity @s[x=645,y=90,z=-9,dx=6,dy=7,dz=10] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 72
scoreboard players set #temp Room 72

execute as @e[scores={Room=72},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorZ -26

execute as @a[scores={Room=72}] run function luigis_mansion:room/normal/secret_altar/tick_per_player

function #luigis_mansion:room/normal/secret_altar/interactions/room

clone 644 95 -25 644 95 -25 644 95 -27
clone 644 95 -11 644 95 -11 644 95 -41
execute if entity @e[x=636.5,y=94,z=-17.5,distance=..0.7,type=minecraft:item_frame,nbt=!{Item:{}},limit=1] run function luigis_mansion:room/normal/secret_altar/grab_painting

scoreboard players set #temp Room 72
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/normal/secret_altar/ghosts
tag @a[tag=same_room] remove same_room

execute as @a[gamemode=!spectator,x=648.5,y=93,z=-9.5,distance=..0.7] unless data storage luigis_mansion:data current_state.current_data.technical_data{saw_mario:1b} unless entity @a[tag=marios_painting] run tag @s add marios_painting
execute as @a[gamemode=!spectator,x=648.5,y=93,z=-9.5,distance=..0.7] if data storage luigis_mansion:data current_state.current_data.technical_data{saw_mario:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{saw_mario_again:1b} unless entity @a[tag=marios_painting_repeat] run tag @s add marios_painting_repeat