execute if block 739 20 -3 minecraft:dark_oak_door[open=true] if block 726 20 -27 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 726 20 -27 minecraft:dark_oak_door[open=true] if block 739 20 -3 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 739 20 -3 minecraft:dark_oak_door[open=true] if block 726 20 -27 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 726 20 -27 minecraft:dark_oak_door[open=true] if block 739 20 -3 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=739.5,y=20,z=-3.0] if data storage luigis_mansion:data current_state.current_data.obtained_keys{small_hallway:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{small_hallway:1b} positioned 739 20 -3 run function luigis_mansion:room/hidden/small_hallway/unlock_door
execute if block 739 20 -3 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{small_hallway:1b} positioned 739 20 -3 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data current_state.current_data.used_keys{small_hallway:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=739.5,y=20,z=-3.0] unless entity @a[gamemode=!spectator,distance=..3,x=726.5,y=20,z=-26.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 739 20 -3 739 21 -3 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 726 20 -27 726 21 -27 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 739 20 -3 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 739 21 -3 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 726 20 -27 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 726 21 -27 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=1}] 739 20 -3.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=6}] 726 20 -26.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=1}] 739 20 -3.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=6}] 726 20 -26.0 1 1
execute if score #temp Searched matches -1..0 run fill 739 20 -3 739 21 -3 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 726 20 -27 726 21 -27 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 739 20 -3 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 739 21 -3 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 726 20 -27 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 726 21 -27 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=739.0,y=20,z=-3.0,dx=0,dy=1,dz=0] at @s run teleport @s 726 20 -28
execute if score #temp Searched matches 1..2 as @a[x=726.0,y=20,z=-27.0,dx=0,dy=1,dz=0] at @s run teleport @s 739 20 -2

scoreboard players reset #temp Searched