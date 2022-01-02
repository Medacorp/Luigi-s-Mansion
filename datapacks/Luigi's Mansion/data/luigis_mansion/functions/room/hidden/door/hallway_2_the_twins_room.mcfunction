execute if block 737 20 -29 minecraft:dark_oak_door[open=true] if block 729 20 -41 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 729 20 -41 minecraft:dark_oak_door[open=true] if block 737 20 -29 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 737 20 -29 minecraft:dark_oak_door[open=true] if block 729 20 -41 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 729 20 -41 minecraft:dark_oak_door[open=true] if block 737 20 -29 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=730.0,y=20,z=-40.5] if data storage luigis_mansion:data current_state.current_data.obtained_keys{the_twins_room:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{the_twins_room:1b} positioned 729 20 -41 run function luigis_mansion:room/hidden/the_twins_room/unlock_door
execute if block 729 20 -41 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{the_twins_room:1b} positioned 729 20 -41 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data current_state.current_data.used_keys{the_twins_room:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=730.0,y=20,z=-40.5] unless entity @a[gamemode=!spectator,distance=..3,x=737.0,y=20,z=-28.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 729 20 -41 729 21 -41 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 737 20 -29 737 21 -29 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 737 20 -29 minecraft:dark_oak_door[open=true,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 737 21 -29 minecraft:dark_oak_door[open=true,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 729 20 -41 minecraft:dark_oak_door[open=true,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 729 21 -41 minecraft:dark_oak_door[open=true,facing=east,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=7}] 730 20 -41 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=49}] 737 20 -29 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=7}] 730 20 -41 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=49}] 737 20 -29 1 1
execute if score #temp Searched matches -1..0 run fill 729 20 -41 729 21 -41 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 737 20 -29 737 21 -29 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 737 20 -29 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 737 21 -29 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 729 20 -41 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 729 21 -41 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=right,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=729.0,y=20,z=-41.0,dx=0,dy=1,dz=0] run teleport @s 738 20 -29
execute if score #temp Searched matches 1..2 as @a[x=737.0,y=20,z=-29.0,dx=0,dy=1,dz=0] run teleport @s 728 20 -41

scoreboard players reset #temp Searched