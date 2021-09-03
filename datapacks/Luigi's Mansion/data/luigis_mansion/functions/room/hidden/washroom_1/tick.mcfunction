execute unless score #washroom_1 Ticking matches 1 run function #luigis_mansion:room/hidden/washroom_1/load
execute as @a[gamemode=!spectator,x=660,y=10,z=-33,dx=8,dy=8,dz=14] unless entity @s[scores={Room=19}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=660,y=10,z=-33,dx=8,dy=8,dz=14] unless entity @s[type=!minecraft:player,scores={Room=-2147483648..}] run scoreboard players set @s Room 19

execute as @e[scores={Room=19},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 661

execute as @a[gamemode=!spectator,scores={Room=19}] run function luigis_mansion:room/normal/washroom_1/tick_per_player

function #luigis_mansion:room/hidden/washroom_1/interactions/room

clone 664 12 -29 664 12 -29 658 12 -29
execute if block 663 14 -22 minecraft:oak_trapdoor[open=true] run setblock 659 14 -22 minecraft:oak_trapdoor[open=true,facing=west,half=top]
execute if block 663 14 -22 minecraft:oak_trapdoor[open=false] run setblock 659 14 -22 minecraft:oak_trapdoor[open=false,facing=west,half=top]
execute if block 663 14 -21 minecraft:oak_trapdoor[open=true] run setblock 659 14 -21 minecraft:oak_trapdoor[open=true,facing=west,half=top]
execute if block 663 14 -21 minecraft:oak_trapdoor[open=false] run setblock 659 14 -21 minecraft:oak_trapdoor[open=false,facing=west,half=top]

function luigis_mansion:room/hidden/washroom_1/ghosts

function luigis_mansion:room/hidden/door/hallway_5_washroom_1