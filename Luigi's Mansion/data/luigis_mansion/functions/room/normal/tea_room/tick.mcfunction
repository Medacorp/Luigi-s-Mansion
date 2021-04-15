execute unless score #tea_room Ticking matches 1 run function #luigis_mansion:room/normal/tea_room/load
execute as @a[x=653,y=111,z=-42,dx=12,dy=6,dz=33] unless entity @s[scores={Room=30}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=653,y=111,z=-42,dx=12,dy=6,dz=33] run scoreboard players set @s Room 30

execute as @a[gamemode=!spectator,x=655,y=111,z=-40,dx=8,dy=6,dz=29] run function luigis_mansion:room/normal/tea_room/tick_per_player

function #luigis_mansion:room/normal/tea_room/interactions/room

function luigis_mansion:room/normal/tea_room/ghosts

function luigis_mansion:room/normal/door/main_stairs_tea_room