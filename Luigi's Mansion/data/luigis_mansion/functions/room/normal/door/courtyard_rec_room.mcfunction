execute if block 638 11 -58 minecraft:dark_oak_door[open=true] if block 653 102 -38 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 653 102 -38 minecraft:dark_oak_door[open=true] if block 638 11 -58 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 638 11 -58 minecraft:dark_oak_door[open=true] if block 653 102 -38 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 653 102 -38 minecraft:dark_oak_door[open=true] if block 638 11 -58 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=654.0,y=102,z=-37.5] if data storage luigis_mansion:data current_state.current_data.obtained_keys{rec_room:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{rec_room:1b} run function luigis_mansion:room/normal/rec_room/unlock_door
execute if block 653 102 -38 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{rec_room:1b} positioned 653 102 -38 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data current_state.current_data.used_keys{rec_room:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=638.0,y=11,z=-57.5] unless entity @a[gamemode=!spectator,distance=..3,x=654.0,y=102,z=-37.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 638 11 -58 638 12 -58 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 653 102 -38 653 103 -38 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 638 11 -58 minecraft:dark_oak_door[open=true,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 638 12 -58 minecraft:dark_oak_door[open=true,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 653 102 -38 minecraft:dark_oak_door[open=true,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 653 103 -38 minecraft:dark_oak_door[open=true,facing=east,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=26}] 654.0 102 -38 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=28}] 638.0 11 -58 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=26}] 654.0 102 -38 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=28}] 638.0 11 -58 1 1
execute if score #temp Searched matches -1..0 run fill 638 11 -58 638 12 -58 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 653 102 -38 653 103 -38 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 638 11 -58 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 638 12 -58 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 653 102 -38 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 653 103 -38 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=653.0,y=102,z=-38.0,dx=0,dy=1,dz=0] at @s run teleport @s 639 11 -58
execute if score #temp Searched matches 1..2 as @a[x=638.0,y=11,z=-58.0,dx=0,dy=1,dz=0] at @s run teleport @s 652 102 -38

scoreboard players reset #temp Searched