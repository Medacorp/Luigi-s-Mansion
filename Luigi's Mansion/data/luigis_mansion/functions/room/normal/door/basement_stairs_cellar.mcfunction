execute if block 735 2 -47 minecraft:oak_door[open=true] if block 719 2 -47 minecraft:oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 719 2 -47 minecraft:oak_door[open=true] if block 735 2 -47 minecraft:oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 735 2 -47 minecraft:oak_door[open=true] if block 719 2 -47 minecraft:oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 719 2 -47 minecraft:oak_door[open=true] if block 735 2 -47 minecraft:oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=720.0,y=2,z=-46.5] if data storage luigis_mansion:data current_state.current_data.obtained_keys{cellar:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{cellar:1b} run function luigis_mansion:room/normal/cellar/unlock_door
execute if block 719 2 -47 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{cellar:1b} positioned 719 2 -47 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data current_state.current_data.used_keys{cellar:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=720.0,y=2,z=-46.5] unless entity @a[gamemode=!spectator,distance=..3,x=735.0,y=2,z=-25.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 719 2 -47 719 3 -47 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 735 2 -47 735 3 -47 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 735 2 -47 minecraft:oak_door[open=true,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 735 3 -47 minecraft:oak_door[open=true,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 719 2 -47 minecraft:oak_door[open=true,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 719 3 -47 minecraft:oak_door[open=true,facing=east,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=11}] 720.0 2 -47 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=46}] 735.0 2 -47 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=11}] 720.0 2 -47 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=46}] 735.0 2 -47 1 1
execute if score #temp Searched matches -1..0 run fill 719 2 -47 719 3 -47 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 735 2 -47 735 3 -47 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 735 2 -47 minecraft:oak_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 735 3 -47 minecraft:oak_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 719 2 -47 minecraft:oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 719 3 -47 minecraft:oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=719.0,y=2,z=-47.0,dx=0,dy=1,dz=0] at @s run teleport @s 736 2 -47
execute if score #temp Searched matches 1..2 as @a[x=735.0,y=2,z=-47.0,dx=0,dy=1,dz=0] at @s run teleport @s 718 2 -47

scoreboard players reset #temp Searched