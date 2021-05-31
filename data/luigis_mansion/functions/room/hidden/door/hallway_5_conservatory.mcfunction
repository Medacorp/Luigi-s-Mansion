execute if block 679 11 15 minecraft:dark_oak_door[open=true] if block 663 11 21 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 663 11 21 minecraft:dark_oak_door[open=true] if block 679 11 15 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 679 11 15 minecraft:dark_oak_door[open=true] if block 663 11 21 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 663 11 21 minecraft:dark_oak_door[open=true] if block 679 11 15 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=679.0,y=11,z=15.5] if data storage luigis_mansion:data current_state.current_data.obtained_keys{conservatory:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{conservatory:1b} positioned 679 11 15 run function luigis_mansion:room/hidden/conservatory/unlock_door
execute if block 679 11 15 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{conservatory:1b} positioned 679 11 15 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data current_state.current_data.used_keys{conservatory:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=679.0,y=11,z=15.5] unless entity @a[gamemode=!spectator,distance=..3,x=664.0,y=11,z=21.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 679 11 15 679 12 15 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 663 11 21 663 12 21 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 679 11 15 minecraft:dark_oak_door[open=true,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 679 12 15 minecraft:dark_oak_door[open=true,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 663 11 21 minecraft:dark_oak_door[open=true,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 663 12 21 minecraft:dark_oak_door[open=true,facing=east,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=13}] 679.0 11 15 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=25}] 664.0 11 21 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=13}] 679.0 11 15 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=25}] 664.0 11 21 1 1
execute if score #temp Searched matches -1..0 run fill 679 11 15 679 12 15 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 663 11 21 663 12 21 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 679 11 15 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 679 12 15 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 663 11 21 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 663 12 21 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=right,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=679.0,y=11,z=15.0,dx=0,dy=1,dz=0] run stopsound @s[scores={RoomNoise=1..}] ambient luigis_mansion:music.mansion.melody
execute if score #temp Searched matches 1..2 as @a[x=679.0,y=11,z=15.0,dx=0,dy=1,dz=0] run scoreboard players set @s RoomNoise 0
execute if score #temp Searched matches 1..2 as @a[x=679.0,y=11,z=15.0,dx=0,dy=1,dz=0] run teleport @s 662 11 21
execute if score #temp Searched matches 1..2 as @a[x=663.0,y=11,z=21.0,dx=0,dy=1,dz=0] run scoreboard players reset @s Time
execute if score #temp Searched matches 1..2 as @a[x=663.0,y=11,z=21.0,dx=0,dy=1,dz=0] run teleport @s 680 11 15

scoreboard players reset #temp Searched