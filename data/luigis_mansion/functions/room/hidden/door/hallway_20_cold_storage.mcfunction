execute if block 726 2 30 minecraft:oak_door[open=true] if block 735 2 20 minecraft:oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 735 2 20 minecraft:oak_door[open=true] if block 726 2 30 minecraft:oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 726 2 30 minecraft:oak_door[open=true] if block 735 2 20 minecraft:oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 735 2 20 minecraft:oak_door[open=true] if block 726 2 30 minecraft:oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=726.5,y=2,z=30.0] if data storage luigis_mansion:data current_state.current_data.obtained_keys{cold_storage:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{cold_storage:1b} positioned 726 2 30 run function luigis_mansion:room/hidden/cold_storage/unlock_door
execute if block 726 2 30 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{cold_storage:1b} positioned 726 2 30 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data current_state.current_data.used_keys{cold_storage:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=726.5,y=2,z=30.0] unless entity @a[gamemode=!spectator,distance=..3,x=735.5,y=2,z=21.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 726 2 30 726 3 30 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 735 2 20 735 3 20 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 726 2 30 minecraft:oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 726 3 30 minecraft:oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 735 2 20 minecraft:oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 735 3 20 minecraft:oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=59}] 726 2 30.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=68}] 735 2 21.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=59}] 726 2 30.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=68}] 735 2 21.0 1 1
execute if score #temp Searched matches -1..0 run fill 726 2 30 726 3 30 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 735 2 20 735 3 20 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 726 2 30 minecraft:oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 726 3 30 minecraft:oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 735 2 20 minecraft:oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 735 3 20 minecraft:oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=726.0,y=2,z=30.0,dx=0,dy=1,dz=0] run teleport @s 735 2 19
execute if score #temp Searched matches 1..2 as @a[x=735.0,y=2,z=20.0,dx=0,dy=1,dz=0] run teleport @s 726 2 31

scoreboard players reset #temp Searched