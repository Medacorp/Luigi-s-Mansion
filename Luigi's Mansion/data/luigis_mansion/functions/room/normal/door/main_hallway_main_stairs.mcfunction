execute if block 663 11 -37 minecraft:dark_oak_door[open=true] if block 682 11 -29 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 682 11 -29 minecraft:dark_oak_door[open=true] if block 663 11 -37 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 663 11 -37 minecraft:dark_oak_door[open=true] if block 682 11 -29 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 682 11 -29 minecraft:dark_oak_door[open=true] if block 663 11 -37 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=682.5,y=11,z=-29.0] if data storage luigis_mansion:data current_state.current_data.obtained_keys{main_stairs:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{main_stairs:1b} run function luigis_mansion:room/normal/main_stairs/unlock_door
execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=663.5,y=11,z=-36.0] if data storage luigis_mansion:data current_state.current_data.obtained_keys{main_stairs:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{main_stairs:1b} run function luigis_mansion:room/normal/main_stairs/unlock_door
execute if score #main_hallway Ticking matches 1 if block 682 11 -29 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{main_stairs:1b} positioned 682 11 -29 run function luigis_mansion:blocks/closed_door
execute if score #main_stairs Ticking matches 1 if block 663 11 -37 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{main_stairs:1b} positioned 663 11 -37 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data current_state.current_data.used_keys{main_stairs:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=682.5,y=11,z=-29.0] unless entity @a[gamemode=!spectator,distance=..3,x=663.5,y=11,z=-36.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 682 11 -29 682 12 -29 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 663 11 -37 663 12 -37 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 663 11 -37 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 663 12 -37 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 682 11 -29 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 682 12 -29 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=10}] 682 11 -29.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=29}] 663 11 -36.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=10}] 682 11 -29.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=29}] 663 11 -36.0 1 1
execute if score #temp Searched matches -1..0 run fill 682 11 -29 682 12 -29 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 663 11 -37 663 12 -37 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 663 11 -37 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 663 12 -37 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 682 11 -29 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 682 12 -29 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=682.0,y=11,z=-29.0,dx=0,dy=1,dz=0] run stopsound @s[scores={HallwayNoise=1..}] hostile luigis_mansion:music.mansion.melody
execute if score #temp Searched matches 1..2 as @a[x=682.0,y=11,z=-29.0,dx=0,dy=1,dz=0] run scoreboard players set @s HallwayNoise 0
execute if score #temp Searched matches 1..2 as @a[x=682.0,y=11,z=-29.0,dx=0,dy=1,dz=0] at @s run teleport @s 663 11 -38
execute if score #temp Searched matches 1..2 as @a[x=663.0,y=11,z=-37.0,dx=0,dy=1,dz=0] at @s run teleport @s 682 11 -28

scoreboard players reset #temp Searched