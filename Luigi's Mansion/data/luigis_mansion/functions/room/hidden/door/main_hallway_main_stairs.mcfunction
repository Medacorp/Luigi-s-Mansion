execute if block 668 102 32 minecraft:dark_oak_door[open=true] if block 668 102 31 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 668 102 31 minecraft:dark_oak_door[open=true] if block 668 102 32 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 668 102 32 minecraft:dark_oak_door[open=true] if block 668 102 31 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 668 102 31 minecraft:dark_oak_door[open=true] if block 668 102 32 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=668.5,y=102,z=32.0] if data storage luigis_mansion:data current_state.current_data.obtained_keys{main_stairs:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{main_stairs:1b} run function luigis_mansion:room/hidden/main_stairs/unlock_door
execute if score #main_hallway Ticking matches 1 if block 668 102 31 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{main_stairs:1b} positioned 668 102 31 run function luigis_mansion:blocks/closed_door
execute if score #main_stairs Ticking matches 1 if block 668 102 32 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{main_stairs:1b} positioned 668 102 32 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data current_state.current_data.used_keys{main_stairs:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=668.5,y=102,z=32.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 668 102 32 668 103 31 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 668 102 32 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 668 103 32 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 668 102 31 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 668 103 31 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a 668 102 32.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a 668 102 32.0 1 1
execute if score #temp Searched matches -1..0 run fill 668 102 32 668 103 31 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 668 102 32 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 668 103 32 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 668 102 31 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 668 103 31 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]

scoreboard players reset #temp Searched