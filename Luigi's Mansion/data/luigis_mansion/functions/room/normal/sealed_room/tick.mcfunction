execute unless score #sealed_room Ticking matches 1 run function #luigis_mansion:room/normal/sealed_room/load
execute as @a[gamemode=!spectator,x=693,y=19,z=-88,dx=17,dy=8,dz=33] unless entity @s[scores={Room=53}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=693,y=19,z=-88,dx=17,dy=8,dz=33] run scoreboard players set @s Room 53

scoreboard players set @e[scores={Room=53},type=!minecraft:marker] MirrorX 694

execute as @a[gamemode=!spectator,x=693,y=19,z=-88,dx=17,dy=8,dz=33] run function luigis_mansion:room/normal/sealed_room/tick_per_player

function #luigis_mansion:room/normal/sealed_room/interactions/room

clone 695 24 -61 695 24 -61 693 24 -61
clone 695 24 -65 695 24 -65 693 24 -65
clone 704 22 -66 704 22 -66 684 22 -66
clone 704 22 -70 704 22 -70 684 22 -70

function luigis_mansion:room/normal/sealed_room/ghosts

function luigis_mansion:room/normal/door/hallway_sealed_room