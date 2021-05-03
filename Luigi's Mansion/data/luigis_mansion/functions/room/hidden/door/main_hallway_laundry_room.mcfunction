execute if block 716 11 -9 minecraft:dark_oak_door[open=true] if block 716 11 -43 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 716 11 -43 minecraft:dark_oak_door[open=true] if block 716 11 -9 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 716 11 -9 minecraft:dark_oak_door[open=true] if block 716 11 -43 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 716 11 -43 minecraft:dark_oak_door[open=true] if block 716 11 -9 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=716.5,y=11,z=-9.0] if data storage luigis_mansion:data current_state.current_data.obtained_keys{laundry_room:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{laundry_room:1b} positioned 716 11 -9 run function luigis_mansion:room/hidden/laundry_room/unlock_door
execute if block 716 11 -9 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{laundry_room:1b} positioned 716 11 -9 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data current_state.current_data.used_keys{laundry_room:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=716.5,y=11,z=-9.0] unless entity @a[gamemode=!spectator,distance=..3,x=716.5,y=11,z=-42.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 716 11 -9 716 12 -9 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 716 11 -43 716 12 -43 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 716 11 -9 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 716 12 -9 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 716 11 -43 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 716 12 -43 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=10}] 716 11 -9.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=18}] 716 11 -42.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=10}] 716 11 -9.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=18}] 716 11 -42.0 1 1
execute if score #temp Searched matches -1..0 run fill 716 11 -9 716 12 -9 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 716 11 -43 716 12 -43 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 716 11 -9 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 716 12 -9 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 716 11 -43 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 716 12 -43 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=716.0,y=11,z=-9.0,dx=0,dy=1,dz=0] at @s run teleport @s 726 11 -44
execute if score #temp Searched matches 1..2 as @a[x=726.0,y=11,z=-43.0,dx=0,dy=1,dz=0] at @s run teleport @s 716 11 -8

scoreboard players reset #temp Searched