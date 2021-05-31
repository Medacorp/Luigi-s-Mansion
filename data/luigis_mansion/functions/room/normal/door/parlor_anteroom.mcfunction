execute if block 713 20 21 minecraft:warped_door[open=true] if block 694 20 26 minecraft:warped_door[open=false] run scoreboard players set #temp Searched 1
execute if block 694 20 26 minecraft:warped_door[open=true] if block 713 20 21 minecraft:warped_door[open=false] run scoreboard players set #temp Searched 1
execute if block 713 20 21 minecraft:warped_door[open=true] if block 694 20 26 minecraft:warped_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 694 20 26 minecraft:warped_door[open=true] if block 713 20 21 minecraft:warped_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=713.0,y=20,z=21.5] if data storage luigis_mansion:data current_state.current_data.obtained_keys{anteroom:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{anteroom:1b} positioned 713 20 21 run function luigis_mansion:room/normal/anteroom/unlock_door
execute if block 713 20 21 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{anteroom:1b} positioned 713 20 21 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data current_state.current_data.used_keys{anteroom:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=713.0,y=20,z=21.5] unless entity @a[gamemode=!spectator,distance=..3,x=695.0,y=20,z=26.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 713 20 21 713 21 21 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 694 20 26 694 21 26 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 713 20 21 minecraft:warped_door[open=true,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 713 21 21 minecraft:warped_door[open=true,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 694 20 26 minecraft:warped_door[open=true,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 694 21 26 minecraft:warped_door[open=true,facing=east,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=3}] 713.0 20 21 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=4}] 695.0 20 26 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=3}] 713.0 20 21 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=4}] 695.0 20 26 1 1
execute if score #temp Searched matches -1..0 run fill 713 20 21 713 21 21 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 694 20 26 694 21 26 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 713 20 21 minecraft:warped_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 713 21 21 minecraft:warped_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 694 20 26 minecraft:warped_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 694 21 26 minecraft:warped_door[open=false,facing=east,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=713.0,y=20,z=21.0,dx=0,dy=1,dz=0] run teleport @s 693 20 26
execute if score #temp Searched matches 1..2 as @a[x=694.0,y=20,z=26.0,dx=0,dy=1,dz=0] run teleport @s 714 20 21

scoreboard players reset #temp Searched