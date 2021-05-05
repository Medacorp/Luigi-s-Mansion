execute if block 696 11 79 minecraft:warped_door[open=true] if block 690 11 79 minecraft:warped_door[open=false] run scoreboard players set #temp Searched 1
execute if block 690 11 79 minecraft:warped_door[open=true] if block 696 11 79 minecraft:warped_door[open=false] run scoreboard players set #temp Searched 1
execute if block 696 11 79 minecraft:warped_door[open=true] if block 690 11 79 minecraft:warped_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 690 11 79 minecraft:warped_door[open=true] if block 696 11 79 minecraft:warped_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 696 11 79 minecraft:warped_door[powered=false] run scoreboard players set #temp Searched -1
execute if block 690 11 79 minecraft:warped_door[powered=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=696.0,y=11,z=79.5] if data storage luigis_mansion:data current_state.current_data.obtained_keys{storage_room:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{storage_room:1b} positioned 696 11 79 run function luigis_mansion:room/hidden/storage_room/unlock_door
execute if block 696 11 79 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{storage_room:1b} positioned 696 11 79 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data current_state.current_data.used_keys{storage_room:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=696.0,y=11,z=79.5] unless entity @a[gamemode=!spectator,distance=..3,x=691.0,y=11,z=79.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 696 11 79 696 12 79 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 690 11 79 690 12 79 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 670 11 79 670 12 79 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 696 11 79 minecraft:warped_door[open=true,facing=west,half=lower,hinge=left,powered=true]
execute if score #temp Searched matches 1 run setblock 696 12 79 minecraft:warped_door[open=true,facing=west,half=upper,hinge=left,powered=true]
execute if score #temp Searched matches 1 run setblock 690 11 79 minecraft:warped_door[open=true,facing=east,half=lower,hinge=right,powered=true]
execute if score #temp Searched matches 1 run setblock 690 12 79 minecraft:warped_door[open=true,facing=east,half=upper,hinge=right,powered=true]
execute if score #temp Searched matches 1 run setblock 670 11 79 minecraft:warped_door[open=true,facing=west,half=lower,hinge=left,powered=true]
execute if score #temp Searched matches 1 run setblock 670 12 79 minecraft:warped_door[open=true,facing=west,half=upper,hinge=left,powered=true]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=13}] 696.0 11 79 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=14}] 691.0 11 79 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=13}] 696.0 11 79 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=14}] 691.0 11 79 1 1
execute if score #temp Searched matches -1..0 run fill 696 11 79 696 12 79 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 690 11 79 690 12 79 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 670 11 79 670 12 79 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 696 11 79 minecraft:warped_door[open=false,facing=west,half=lower,hinge=left,powered=true]
execute if score #temp Searched matches -1..0 run setblock 696 12 79 minecraft:warped_door[open=false,facing=west,half=upper,hinge=left,powered=true]
execute if score #temp Searched matches -1..0 run setblock 690 11 79 minecraft:warped_door[open=false,facing=east,half=lower,hinge=right,powered=true]
execute if score #temp Searched matches -1..0 run setblock 690 12 79 minecraft:warped_door[open=false,facing=east,half=upper,hinge=right,powered=true]
execute if score #temp Searched matches -1..0 run setblock 670 11 79 minecraft:warped_door[open=false,facing=west,half=lower,hinge=left,powered=true]
execute if score #temp Searched matches -1..0 run setblock 670 12 79 minecraft:warped_door[open=false,facing=west,half=upper,hinge=left,powered=true]

execute if score #temp Searched matches 1..2 as @a[x=696.0,y=11,z=79.0,dx=0,dy=1,dz=0] at @s run teleport @s 689 11 79
execute if score #temp Searched matches 1..2 as @a[x=690.0,y=11,z=79.0,dx=0,dy=1,dz=0] at @s run teleport @s 697 11 79

scoreboard players reset #temp Searched