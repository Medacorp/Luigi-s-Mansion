execute if block 733 29 54 minecraft:oak_door[open=true] if block 719 29 49 minecraft:oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 719 29 49 minecraft:oak_door[open=true] if block 733 29 54 minecraft:oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 733 29 54 minecraft:oak_door[open=true] if block 719 29 49 minecraft:oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 719 29 49 minecraft:oak_door[open=true] if block 733 29 54 minecraft:oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=720.0,y=29,z=49.5] if data storage luigis_mansion:data current_state.current_data.obtained_keys{safari_room:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{safari_room:1b} positioned 719 29 49 run function luigis_mansion:room/hidden/safari_room/unlock_door
execute if block 719 29 49 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{safari_room:1b} positioned 719 29 49 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data current_state.current_data.used_keys{safari_room:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=720.0,y=29,z=49.5] unless entity @a[gamemode=!spectator,distance=..3,x=733.0,y=29,z=54.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 719 29 49 719 30 49 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 733 29 54 733 30 54 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 757 29 54 757 30 54 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 733 29 54 minecraft:oak_door[open=true,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 733 30 54 minecraft:oak_door[open=true,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 757 29 54 minecraft:oak_door[open=true,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 757 30 54 minecraft:oak_door[open=true,facing=east,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 719 29 49 minecraft:oak_door[open=true,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 719 30 49 minecraft:oak_door[open=true,facing=east,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=31}] 720.0 29 49 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=40}] 733.0 29 54 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=31}] 720.0 29 49 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=40}] 733.0 29 54 1 1
execute if score #temp Searched matches -1..0 run fill 719 29 49 719 30 49 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 733 29 54 733 30 54 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 757 29 54 757 30 54 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 733 29 54 minecraft:oak_door[open=false,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 733 30 54 minecraft:oak_door[open=false,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 757 29 54 minecraft:oak_door[open=false,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 757 30 54 minecraft:oak_door[open=false,facing=east,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 719 29 49 minecraft:oak_door[open=false,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 719 30 49 minecraft:oak_door[open=false,facing=east,half=upper,hinge=right,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=719.0,y=29,z=49.0,dx=0,dy=1,dz=0] at @s run teleport @s 734 29 54
execute if score #temp Searched matches 1..2 as @a[x=733.0,y=29,z=54.0,dx=0,dy=1,dz=0] at @s run teleport @s 718 29 49

scoreboard players reset #temp Searched