execute if block 699 29 -56 minecraft:oak_door[open=true] if block 736 29 -16 minecraft:oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 736 29 -16 minecraft:oak_door[open=true] if block 699 29 -56 minecraft:oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 699 29 -56 minecraft:oak_door[open=true] if block 736 29 -16 minecraft:oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 736 29 -16 minecraft:oak_door[open=true] if block 699 29 -56 minecraft:oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=736.5,y=29,z=-16.0] if data storage luigis_mansion:data current_state.current_data.obtained_keys{artists_studio:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{artists_studio:1b} positioned 736 29 -16 run function luigis_mansion:room/normal/artists_studio/unlock_door
execute if block 736 29 -16 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{artists_studio:1b} positioned 736 29 -16 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data current_state.current_data.used_keys{artists_studio:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=736.5,y=29,z=-16.0] unless entity @a[gamemode=!spectator,distance=..3,x=699.5,y=29,z=-55.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 736 29 -16 736 30 -16 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 699 29 -56 699 30 -56 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 699 29 -56 minecraft:oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 699 30 -56 minecraft:oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 736 29 -16 minecraft:oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 736 30 -16 minecraft:oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=52}] 736 29 -16.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=71}] 699 29 -55.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=52}] 736 29 -16.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=71}] 699 29 -55.0 1 1
execute if score #temp Searched matches -1..0 run fill 736 29 -16 736 30 -16 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 699 29 -56 699 30 -56 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 699 29 -56 minecraft:oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 699 30 -56 minecraft:oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 736 29 -16 minecraft:oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 736 30 -16 minecraft:oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=736.0,y=29,z=-16.0,dx=0,dy=1,dz=0] run teleport @s 699 29 -57
execute if score #temp Searched matches 1..2 as @a[x=699.0,y=29,z=-56.0,dx=0,dy=1,dz=0] run teleport @s 736 29 -15

scoreboard players reset #temp Searched