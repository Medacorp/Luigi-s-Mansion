execute unless score #tea_room Ticking matches 1 run function #luigis_mansion:room/hidden/tea_room/load
execute as @a[gamemode=!spectator,x=637,y=19,z=44,dx=12,dy=8,dz=33] unless entity @s[scores={Room=34}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=637,y=19,z=44,dx=12,dy=8,dz=33] unless entity @s[type=!minecraft:player,tag=!model_piece,scores={Room=-2147483648..}] run scoreboard players set @s Room 34

execute as @a[gamemode=!spectator,scores={Room=34}] run function luigis_mansion:room/normal/tea_room/tick_per_player

function #luigis_mansion:room/hidden/tea_room/interactions/room

function luigis_mansion:room/hidden/tea_room/ghosts

function luigis_mansion:room/hidden/door/hallway_8_tea_room