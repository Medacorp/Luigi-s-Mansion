execute if block 705 11 53 minecraft:warped_door[open=true] if block 706 11 37 minecraft:warped_door[open=false] run scoreboard players set #temp Searched 1
execute if block 706 11 37 minecraft:warped_door[open=true] if block 705 11 53 minecraft:warped_door[open=false] run scoreboard players set #temp Searched 1
execute if block 705 11 53 minecraft:warped_door[open=true] if block 706 11 37 minecraft:warped_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 706 11 37 minecraft:warped_door[open=true] if block 705 11 53 minecraft:warped_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 705 11 53 minecraft:warped_door[powered=false] run scoreboard players set #temp Searched -1
execute if block 706 11 37 minecraft:warped_door[powered=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=706.5,y=11,z=38.0] if data storage luigis_mansion:data current_state.current_data.obtained_keys{ball_room:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{ball_room:1b} positioned 706 11 37 run function luigis_mansion:room/hidden/ball_room/unlock_door
execute if block 706 11 37 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{ball_room:1b} positioned 706 11 37 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data current_state.current_data.used_keys{ball_room:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=706.5,y=11,z=38.0] unless entity @a[gamemode=!spectator,distance=..3,x=705.5,y=11,z=53.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 706 11 37 706 12 37 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 705 11 53 705 12 53 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 705 11 53 minecraft:warped_door[open=true,facing=north,half=lower,hinge=right,powered=true]
execute if score #temp Searched matches 1 run setblock 705 12 53 minecraft:warped_door[open=true,facing=north,half=upper,hinge=right,powered=true]
execute if score #temp Searched matches 1 run setblock 706 11 37 minecraft:warped_door[open=true,facing=south,half=lower,hinge=left,powered=true]
execute if score #temp Searched matches 1 run setblock 706 12 37 minecraft:warped_door[open=true,facing=south,half=upper,hinge=left,powered=true]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=10}] 706 11 38.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=13}] 705 11 53.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=10}] 706 11 38.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=13}] 705 11 53.0 1 1
execute if score #temp Searched matches -1..0 run fill 706 11 37 706 12 37 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 705 11 53 705 12 53 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 705 11 53 minecraft:warped_door[open=false,facing=north,half=lower,hinge=right,powered=true]
execute if score #temp Searched matches -1..0 run setblock 705 12 53 minecraft:warped_door[open=false,facing=north,half=upper,hinge=right,powered=true]
execute if score #temp Searched matches -1..0 run setblock 706 11 37 minecraft:warped_door[open=false,facing=south,half=lower,hinge=left,powered=true]
execute if score #temp Searched matches -1..0 run setblock 706 12 37 minecraft:warped_door[open=false,facing=south,half=upper,hinge=left,powered=true]

execute if score #temp Searched matches 1..2 as @a[x=706.0,y=11,z=37.0,dx=0,dy=1,dz=0] at @s run teleport @s 705 11 54
execute if score #temp Searched matches 1..2 as @a[x=705.0,y=11,z=53.0,dx=0,dy=1,dz=0] at @s run teleport @s 706 11 36

scoreboard players reset #temp Searched