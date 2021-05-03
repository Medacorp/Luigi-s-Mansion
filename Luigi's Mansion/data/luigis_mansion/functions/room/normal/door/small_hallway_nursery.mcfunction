execute if block 738 20 58 minecraft:dark_oak_door[open=true] if block 729 20 66 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 729 20 66 minecraft:dark_oak_door[open=true] if block 738 20 58 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 738 20 58 minecraft:dark_oak_door[open=true] if block 729 20 66 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 729 20 66 minecraft:dark_oak_door[open=true] if block 738 20 58 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=730.0,y=20,z=66.5] if data storage luigis_mansion:data current_state.current_data.obtained_keys{nursery:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{nursery:1b} positioned 729 20 66 run function luigis_mansion:room/normal/nursery/unlock_door
execute if block 729 20 66 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{nursery:1b} positioned 729 20 66 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data current_state.current_data.used_keys{nursery:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=730.0,y=20,z=66.5] unless entity @a[gamemode=!spectator,distance=..3,x=738.0,y=20,z=58.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 729 20 66 729 21 66 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 738 20 58 738 21 58 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 738 20 58 minecraft:dark_oak_door[open=true,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 738 21 58 minecraft:dark_oak_door[open=true,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 729 20 66 minecraft:dark_oak_door[open=true,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 729 21 66 minecraft:dark_oak_door[open=true,facing=east,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=6}] 730.0 20 66 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=9}] 738.0 20 58 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=6}] 730.0 20 66 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=9}] 738.0 20 58 1 1
execute if score #temp Searched matches -1..0 run fill 729 20 66 729 21 66 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 738 20 58 738 21 58 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 738 20 58 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 738 21 58 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 729 20 66 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 729 21 66 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=729.0,y=20,z=66.0,dx=0,dy=1,dz=0] at @s run teleport @s 739 20 58
execute if score #temp Searched matches 1..2 as @a[x=738.0,y=20,z=58.0,dx=0,dy=1,dz=0] at @s run teleport @s 728 20 66

scoreboard players reset #temp Searched