execute unless score #washroom_1 Ticking matches 1 run function #3ds_remake:room/hidden/washroom_1/load
execute as @a[gamemode=!spectator,x=660,y=8,z=34,dx=8,dy=9,dz=14] unless entity @s[scores={Room=19}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=660,y=8,z=34,dx=8,dy=9,dz=14] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 19

execute as @e[scores={Room=19},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 661

execute as @a[scores={Room=19}] run function 3ds_remake:room/hidden/washroom_1/tick_per_player

function #3ds_remake:room/hidden/washroom_1/interactions/room

execute if block 663 14 37 minecraft:oak_trapdoor[open=true] run setblock 659 14 37 minecraft:oak_trapdoor[open=true,facing=west,half=top]
execute if block 663 14 37 minecraft:oak_trapdoor[open=false] run setblock 659 14 37 minecraft:oak_trapdoor[open=false,facing=west,half=top]
execute if block 663 14 36 minecraft:oak_trapdoor[open=true] run setblock 659 14 36 minecraft:oak_trapdoor[open=true,facing=west,half=top]
execute if block 663 14 36 minecraft:oak_trapdoor[open=false] run setblock 659 14 36 minecraft:oak_trapdoor[open=false,facing=west,half=top]

execute if entity @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door,scores={Room=19},limit=1] run function 3ds_remake:room/hidden/washroom_1/ghosts