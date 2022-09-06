execute if block 739 20 18 minecraft:dark_oak_door[open=true] if block 726 20 42 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 726 20 42 minecraft:dark_oak_door[open=true] if block 739 20 18 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 739 20 18 minecraft:dark_oak_door[open=true] if block 726 20 42 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 726 20 42 minecraft:dark_oak_door[open=true] if block 739 20 18 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=739.5,y=20,z=19.0] if data storage luigis_mansion:data current_state.current_data.obtained_keys{hallway_2:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{hallway_2:1b} positioned 739 20 18 run function luigis_beta_mansion:room/original/hallway_2/unlock_door
execute if block 739 20 18 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{hallway_2:1b} positioned 739 20 18 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data current_state.current_data.used_keys{hallway_2:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=739.5,y=20,z=19.0] unless entity @a[gamemode=!spectator,distance=..3,x=726.5,y=20,z=42.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 739 20 18 739 21 18 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 726 20 42 726 21 42 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 739 20 18 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 739 21 18 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 726 20 42 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 726 21 42 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=2}] 739 20 19.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=4}] 726 20 42.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=2}] 739 20 19.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=4}] 726 20 42.0 1 1
execute if score #temp Searched matches -1..0 run fill 739 20 18 739 21 18 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 726 20 42 726 21 42 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 739 20 18 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 739 21 18 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 726 20 42 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 726 21 42 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]


execute if score #temp Searched matches 1..2 as @a[x=739.0,y=20,z=18.0,dx=0,dy=1,dz=0] run teleport @s 726 20 43
execute if score #temp Searched matches 1..2 as @a[x=726.0,y=20,z=42.0,dx=0,dy=1,dz=0] run teleport @s 739 20 17

scoreboard players reset #temp Searched