execute if block 706 11 31 minecraft:dark_oak_door[open=true] if block 704 11 -14 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 704 11 -14 minecraft:dark_oak_door[open=true] if block 706 11 31 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 706 11 31 minecraft:dark_oak_door[open=true] if block 704 11 -14 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 704 11 -14 minecraft:dark_oak_door[open=true] if block 706 11 31 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=706.5,y=11,z=31.0] if data storage luigis_mansion:data current_state.current_data.obtained_keys{dining_room:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{dining_room:1b} positioned 706 11 31 run function luigis_mansion:room/hidden/dining_room/unlock_door
execute if block 706 11 31 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{dining_room:1b} positioned 706 11 31 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data current_state.current_data.used_keys{dining_room:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=706.5,y=11,z=31.0] unless entity @a[gamemode=!spectator,distance=..3,x=704.5,y=11,z=-13.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 706 11 31 706 12 31 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 704 11 -14 704 12 -14 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 706 11 31 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 706 12 31 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 704 11 -14 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 704 12 -14 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=10}] 706 11 31.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=22}] 704 11 -13.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=10}] 706 11 31.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=22}] 704 11 -13.0 1 1
execute if score #temp Searched matches -1..0 run fill 706 11 31 706 12 31 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 704 11 -14 704 12 -14 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 706 11 31 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 706 12 31 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 704 11 -14 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 704 12 -14 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=706.0,y=11,z=31.0,dx=0,dy=1,dz=0] run scoreboard players set @s HallwayNoise 0
execute if score #temp Searched matches 1..2 as @a[x=706.0,y=11,z=31.0,dx=0,dy=1,dz=0] at @s run teleport @s 704 11 -15
execute if score #temp Searched matches 1..2 as @a[x=704.0,y=11,z=-14.0,dx=0,dy=1,dz=0] at @s run teleport @s 706 11 32

scoreboard players reset #temp Searched