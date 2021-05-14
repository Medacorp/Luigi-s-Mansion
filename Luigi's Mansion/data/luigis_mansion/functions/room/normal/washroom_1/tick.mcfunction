execute unless score #washroom_1 Ticking matches 1 run function #luigis_mansion:room/normal/washroom_1/load
execute as @a[gamemode=!spectator,x=660,y=10,z=34,dx=8,dy=8,dz=14] unless entity @s[scores={Room=19}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=660,y=10,z=34,dx=8,dy=8,dz=14] run scoreboard players set @s Room 19

scoreboard players set @e[scores={Room=19},type=!minecraft:marker] MirrorX 661

execute as @a[gamemode=!spectator,scores={Room=19}] run function luigis_mansion:room/normal/washroom_1/tick_per_player

function #luigis_mansion:room/normal/washroom_1/interactions/room

clone 664 12 44 664 12 44 658 12 44
execute if block 663 14 37 minecraft:oak_trapdoor[open=true] run setblock 659 14 37 minecraft:oak_trapdoor[open=true,facing=west,half=top]
execute if block 663 14 37 minecraft:oak_trapdoor[open=false] run setblock 659 14 37 minecraft:oak_trapdoor[open=false,facing=west,half=top]
execute if block 663 14 36 minecraft:oak_trapdoor[open=true] run setblock 659 14 36 minecraft:oak_trapdoor[open=true,facing=west,half=top]
execute if block 663 14 36 minecraft:oak_trapdoor[open=false] run setblock 659 14 36 minecraft:oak_trapdoor[open=false,facing=west,half=top]

function luigis_mansion:room/normal/washroom_1/ghosts

function luigis_mansion:room/normal/door/hallway_5_washroom_1