execute if block 735 20 -34 minecraft:dark_oak_door[open=true] if block 719 20 -30 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 719 20 -30 minecraft:dark_oak_door[open=true] if block 735 20 -34 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 735 20 -34 minecraft:dark_oak_door[open=true] if block 719 20 -30 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 719 20 -30 minecraft:dark_oak_door[open=true] if block 735 20 -34 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=720.0,y=20,z=-29.5] if data storage luigis_mansion:data current_state.current_data.obtained_keys{sitting_room:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{sitting_room:1b} positioned 719 20 -30 run function luigis_mansion:room/normal/sitting_room/unlock_door
execute if block 719 20 -30 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{sitting_room:1b} positioned 719 20 -30 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data current_state.current_data.used_keys{sitting_room:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=720.0,y=20,z=-29.5] unless entity @a[gamemode=!spectator,distance=..3,x=735.0,y=20,z=-33.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 719 20 -30 719 21 -30 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 735 20 -34 735 21 -34 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 735 20 -34 minecraft:dark_oak_door[open=true,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 735 21 -34 minecraft:dark_oak_door[open=true,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 719 20 -30 minecraft:dark_oak_door[open=true,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 719 21 -30 minecraft:dark_oak_door[open=true,facing=east,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=31}] 720.0 20 -30 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=56}] 735.0 20 -34 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=31}] 720.0 20 -30 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=56}] 735.0 20 -34 1 1
execute if score #temp Searched matches -1..0 run fill 719 20 -30 719 21 -30 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 735 20 -34 735 21 -34 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 735 20 -34 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 735 21 -34 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 719 20 -30 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 719 21 -30 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=719.0,y=20,z=-30.0,dx=0,dy=1,dz=0] at @s run teleport @s 736 20 -34
execute if score #temp Searched matches 1..2 as @a[x=735.0,y=20,z=-34.0,dx=0,dy=1,dz=0] at @s run teleport @s 718 20 -30

scoreboard players reset #temp Searched