execute if block 733 29 -39 minecraft:oak_door[open=true] if block 719 29 -34 minecraft:oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 719 29 -34 minecraft:oak_door[open=true] if block 733 29 -39 minecraft:oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 733 29 -39 minecraft:oak_door[open=true] if block 719 29 -34 minecraft:oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 719 29 -34 minecraft:oak_door[open=true] if block 733 29 -39 minecraft:oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=720.0,y=29,z=-33.5] if data storage luigis_mansion:data current_state.current_data.obtained_keys{safari_room:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{safari_room:1b} positioned 719 29 -34 run function luigis_mansion:room/normal/safari_room/unlock_door
execute if block 719 29 -34 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{safari_room:1b} positioned 719 29 -34 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data current_state.current_data.used_keys{safari_room:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=720.0,y=29,z=-33.5] unless entity @a[gamemode=!spectator,distance=..3,x=733.0,y=29,z=-38.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 719 29 -34 719 30 -34 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 733 29 -39 733 30 -39 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 757 29 -39 757 30 -39 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 733 29 -39 minecraft:oak_door[open=true,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 733 30 -39 minecraft:oak_door[open=true,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 757 29 -39 minecraft:oak_door[open=true,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 757 30 -39 minecraft:oak_door[open=true,facing=east,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 719 29 -34 minecraft:oak_door[open=true,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 719 30 -34 minecraft:oak_door[open=true,facing=east,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=41}] 720.0 29 -34 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=50}] 733.0 29 -39 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=41}] 720.0 29 -34 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=50}] 733.0 29 -39 1 1
execute if score #temp Searched matches -1..0 run fill 719 29 -34 719 30 -34 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 733 29 -39 733 30 -39 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 757 29 -39 757 30 -39 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 733 29 -39 minecraft:oak_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 733 30 -39 minecraft:oak_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 757 29 -39 minecraft:oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 757 30 -39 minecraft:oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 719 29 -34 minecraft:oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 719 30 -34 minecraft:oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=719.0,y=29,z=-34.0,dx=0,dy=1,dz=0] run teleport @s 734 29 -39
execute if score #temp Searched matches 1..2 as @a[x=733.0,y=29,z=-39.0,dx=0,dy=1,dz=0] run teleport @s 718 29 -34

scoreboard players reset #temp Searched