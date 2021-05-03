execute if block 668 11 8 minecraft:dark_oak_door[open=true] if block 653 102 21 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 653 102 21 minecraft:dark_oak_door[open=true] if block 668 11 8 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 668 11 8 minecraft:dark_oak_door[open=true] if block 653 102 21 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 653 102 21 minecraft:dark_oak_door[open=true] if block 668 11 8 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 668 11 8 minecraft:dark_oak_door[powered=false] run scoreboard players set #temp Searched -1
execute if block 653 102 21 minecraft:dark_oak_door[powered=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=668.0,y=11,z=8.5] if data storage luigis_mansion:data current_state.current_data.obtained_keys{courtyard:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{courtyard:1b} positioned 668 11 8 run function luigis_mansion:room/normal/courtyard/unlock_door
execute if block 668 11 8 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{courtyard:1b} positioned 668 11 8 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data current_state.current_data.used_keys{courtyard:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=668.0,y=11,z=8.5] unless entity @a[gamemode=!spectator,distance=..3,x=654.0,y=102,z=21.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 668 11 8 668 12 8 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 653 102 21 653 103 21 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 668 11 8 minecraft:dark_oak_door[open=true,facing=west,half=lower,hinge=right,powered=true]
execute if score #temp Searched matches 1 run setblock 668 12 8 minecraft:dark_oak_door[open=true,facing=west,half=upper,hinge=right,powered=true]
execute if score #temp Searched matches 1 run setblock 653 102 21 minecraft:dark_oak_door[open=true,facing=east,half=lower,hinge=left,powered=true]
execute if score #temp Searched matches 1 run setblock 653 103 21 minecraft:dark_oak_door[open=true,facing=east,half=upper,hinge=left,powered=true]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=10}] 667.0 11 8 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=26}] 653.0 102 21 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=10}] 667.0 11 8 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=26}] 653.0 102 21 1 1
execute if score #temp Searched matches -1..0 run fill 668 11 8 668 12 8 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 653 102 21 653 103 21 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 668 11 8 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=right,powered=true]
execute if score #temp Searched matches -1..0 run setblock 668 12 8 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=right,powered=true]
execute if score #temp Searched matches -1..0 run setblock 653 102 21 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=left,powered=true]
execute if score #temp Searched matches -1..0 run setblock 653 103 21 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=left,powered=true]

execute if score #temp Searched matches 1..2 as @a[x=668.0,y=11,z=8.0,dx=0,dy=1,dz=0] at @s run teleport @s 652 102 21
execute if score #temp Searched matches 1..2 as @a[x=653.0,y=102,z=21.0,dx=0,dy=1,dz=0] at @s run teleport @s 669 11 8

scoreboard players reset #temp Searched