execute if block 752 29 47 minecraft:oak_door[open=true] if block 757 29 55 minecraft:oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 757 29 55 minecraft:oak_door[open=true] if block 752 29 47 minecraft:oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 752 29 47 minecraft:oak_door[open=true] if block 757 29 55 minecraft:oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 757 29 55 minecraft:oak_door[open=true] if block 752 29 47 minecraft:oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=752.5,y=29,z=48.0] if data storage luigis_mansion:data current_state.current_data.obtained_keys{armory:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{armory:1b} run function luigis_mansion:room/normal/armory/unlock_door
execute if block 752 29 47 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{armory:1b} positioned 752 29 47 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data current_state.current_data.used_keys{armory:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=752.5,y=29,z=48.0] unless entity @a[gamemode=!spectator,distance=..3,x=757.5,y=29,z=55.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 752 29 47 752 30 47 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 757 29 55 757 30 55 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 733 29 55 733 30 55 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 752 29 47 minecraft:oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 752 30 47 minecraft:oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 757 29 55 minecraft:oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 757 30 55 minecraft:oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 733 29 55 minecraft:oak_door[open=true,facing=north,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 733 30 55 minecraft:oak_door[open=true,facing=north,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=43}] 752 29 48.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=51}] 757 29 55.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=43}] 752 29 48.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=51}] 757 29 55.0 1 1
execute if score #temp Searched matches -1..0 run fill 752 29 47 752 30 47 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 757 29 55 757 30 55 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 733 29 55 733 30 55 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 752 29 47 minecraft:oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 752 30 47 minecraft:oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 757 29 55 minecraft:oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 757 30 55 minecraft:oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 733 29 55 minecraft:oak_door[open=false,facing=north,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 733 30 55 minecraft:oak_door[open=false,facing=north,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=752.0,y=29,z=47.0,dx=0,dy=1,dz=0] at @s run teleport @s 757 29 56
execute if score #temp Searched matches 1..2 as @a[x=757.0,y=29,z=55.0,dx=0,dy=1,dz=0] at @s run teleport @s 752 29 46

scoreboard players reset #temp Searched