execute if block 638 11 73 minecraft:dark_oak_door[open=true] if block 653 102 53 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 653 102 53 minecraft:dark_oak_door[open=true] if block 638 11 73 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 638 11 73 minecraft:dark_oak_door[open=true] if block 653 102 53 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 653 102 53 minecraft:dark_oak_door[open=true] if block 638 11 73 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=654.0,y=102,z=53.5] if data storage luigis_mansion:data current_state.current_data.obtained_keys{rec_room:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{rec_room:1b} positioned 653 102 53 run function luigis_mansion:room/hidden/rec_room/unlock_door
execute if block 653 102 53 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{rec_room:1b} positioned 653 102 53 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data current_state.current_data.used_keys{rec_room:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=654.0,y=102,z=53.5] unless entity @a[gamemode=!spectator,distance=..3,x=638.0,y=11,z=73.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 653 102 53 653 103 53 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 638 11 73 638 12 73 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 638 11 73 minecraft:dark_oak_door[open=true,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 638 12 73 minecraft:dark_oak_door[open=true,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 653 102 53 minecraft:dark_oak_door[open=true,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 653 103 53 minecraft:dark_oak_door[open=true,facing=east,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=30}] 654.0 102 53 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=32}] 638.0 11 73 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=30}] 654.0 102 53 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=32}] 638.0 11 73 1 1
execute if score #temp Searched matches -1..0 run fill 653 102 53 653 103 53 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 638 11 73 638 12 73 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 638 11 73 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 638 12 73 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 653 102 53 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 653 103 53 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=right,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=653.0,y=102,z=53.0,dx=0,dy=1,dz=0] run scoreboard players set @s RoomNoise 0
execute if score #temp Searched matches 1..2 as @a[x=653.0,y=102,z=53.0,dx=0,dy=1,dz=0] run teleport @s 639 11 73
execute if score #temp Searched matches 1..2 as @a[x=638.0,y=11,z=73.0,dx=0,dy=1,dz=0] run teleport @s 652 102 53

scoreboard players reset #temp Searched