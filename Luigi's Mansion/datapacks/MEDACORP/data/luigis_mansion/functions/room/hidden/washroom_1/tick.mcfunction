execute unless score #washroom_1 Ticking matches 1 run function #luigis_mansion:room/hidden/washroom_1/load
execute as @a[gamemode=!spectator,x=660,y=8,z=-33,dx=8,dy=9,dz=14] unless entity @s[scores={Room=19}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=660,y=8,z=-33,dx=8,dy=9,dz=14] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 19
scoreboard players set #temp Room 19

execute as @e[scores={Room=19},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 661

execute as @a[scores={Room=19}] run function luigis_mansion:room/hidden/washroom_1/tick_per_player

function #luigis_mansion:room/hidden/washroom_1/interactions/room

clone 664 12 -29 664 12 -29 658 12 -29
execute if block 663 14 -22 minecraft:oak_trapdoor[open=true] run setblock 659 14 -22 minecraft:oak_trapdoor[open=true,facing=west,half=top]
execute if block 663 14 -22 minecraft:oak_trapdoor[open=false] run setblock 659 14 -22 minecraft:oak_trapdoor[open=false,facing=west,half=top]
execute if block 663 14 -21 minecraft:oak_trapdoor[open=true] run setblock 659 14 -21 minecraft:oak_trapdoor[open=true,facing=west,half=top]
execute if block 663 14 -21 minecraft:oak_trapdoor[open=false] run setblock 659 14 -21 minecraft:oak_trapdoor[open=false,facing=west,half=top]

scoreboard players set #temp Room 19
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/hidden/washroom_1/ghosts
tag @a[tag=same_room] remove same_room