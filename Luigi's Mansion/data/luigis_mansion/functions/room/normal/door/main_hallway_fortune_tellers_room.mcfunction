execute if block 735 11 -32 minecraft:dark_oak_door[open=true] if block 719 11 -28 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 719 11 -28 minecraft:dark_oak_door[open=true] if block 735 11 -32 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 735 11 -32 minecraft:dark_oak_door[open=true] if block 719 11 -28 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 719 11 -28 minecraft:dark_oak_door[open=true] if block 735 11 -32 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=720.0,y=11,z=-27.5] if data storage luigis_mansion:data current_state.current_data.obtained_keys{fortune_tellers_room:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{fortune_tellers_room:1b} run function luigis_mansion:room/normal/fortune_tellers_room/unlock_door
execute if block 719 11 -28 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{fortune_tellers_room:1b} positioned 719 11 -28 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data current_state.current_data.used_keys{fortune_tellers_room:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=720.0,y=11,z=-27.5] unless entity @a[gamemode=!spectator,distance=..3,x=735.0,y=11,z=-31.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 719 11 -28 719 12 -28 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 735 11 -32 735 12 -32 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 735 11 -32 minecraft:dark_oak_door[open=true,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 735 12 -32 minecraft:dark_oak_door[open=true,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 719 11 -28 minecraft:dark_oak_door[open=true,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 719 12 -28 minecraft:dark_oak_door[open=true,facing=east,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a 720.0 11 -28 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a 735.0 11 -32 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a 720.0 11 -28 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a 735.0 11 -32 1 1
execute if score #temp Searched matches -1..0 run fill 719 11 -28 719 12 -28 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 735 11 -32 735 12 -32 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 735 11 -32 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 735 12 -32 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 719 11 -28 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 719 12 -28 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=719.0,y=11,z=-28.0,dx=0,dy=1,dz=0] at @s run teleport @s 736 11 -32
execute if score #temp Searched matches 1..2 as @a[x=735.0,y=11,z=-32.0,dx=0,dy=1,dz=0] at @s run teleport @s 718 11 -28

scoreboard players reset #temp Searched