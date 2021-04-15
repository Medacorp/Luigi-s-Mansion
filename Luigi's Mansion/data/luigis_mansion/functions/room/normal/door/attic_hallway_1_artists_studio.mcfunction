execute if block 694 120 -17 minecraft:oak_door[open=true] if block 694 120 -16 minecraft:oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 694 120 -16 minecraft:oak_door[open=true] if block 694 120 -17 minecraft:oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 694 120 -17 minecraft:oak_door[open=true] if block 694 120 -16 minecraft:oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 694 120 -16 minecraft:oak_door[open=true] if block 694 120 -17 minecraft:oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=694.5,y=120,z=-16.0] if data storage luigis_mansion:data current_state.current_data.obtained_keys{artists_studio:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{artists_studio:1b} run function luigis_mansion:room/normal/artists_studio/unlock_door
execute if block 694 120 -16 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{artists_studio:1b} positioned 694 120 -16 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data current_state.current_data.used_keys{artists_studio:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=694.5,y=120,z=-16.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 694 120 -17 694 121 -16 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 694 120 -17 minecraft:oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 694 121 -17 minecraft:oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 694 120 -16 minecraft:oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 694 121 -16 minecraft:oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a 694 120 -16.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a 694 120 -16.0 1 1
execute if score #temp Searched matches -1..0 run fill 694 120 -17 694 121 -16 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 694 120 -17 minecraft:oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 694 121 -17 minecraft:oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 694 120 -16 minecraft:oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 694 121 -16 minecraft:oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

scoreboard players reset #temp Searched