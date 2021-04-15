execute unless score #sealed_room Ticking matches 1 run function #luigis_mansion:room/normal/sealed_room/load
execute as @a[x=682,y=111,z=-42,dx=17,dy=6,dz=33] unless entity @s[scores={Room=53}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=682,y=111,z=-42,dx=17,dy=6,dz=33] run scoreboard players set @s Room 53

execute as @a[gamemode=!spectator,x=684,y=111,z=-40,dx=13,dy=6,dz=29] run function luigis_mansion:room/normal/sealed_room/tick_per_player

function #luigis_mansion:room/normal/sealed_room/interactions/room

function luigis_mansion:room/normal/sealed_room/ghosts

function luigis_mansion:room/normal/door/hallway_sealed_room