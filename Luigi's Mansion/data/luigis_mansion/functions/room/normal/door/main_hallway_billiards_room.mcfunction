execute if block 674 11 70 minecraft:dark_oak_door[open=true] if block 685 11 5 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 685 11 5 minecraft:dark_oak_door[open=true] if block 674 11 70 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 674 11 70 minecraft:dark_oak_door[open=true] if block 685 11 5 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 685 11 5 minecraft:dark_oak_door[open=true] if block 674 11 70 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=686.0,y=11,z=5.5] if data storage luigis_mansion:data current_state.current_data.obtained_keys{billiards_room:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{billiards_room:1b} positioned 685 11 5 run function luigis_mansion:room/normal/billiards_room/unlock_door
execute if block 685 11 5 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{billiards_room:1b} positioned 685 11 5 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data current_state.current_data.used_keys{billiards_room:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=686.0,y=11,z=5.5] unless entity @a[gamemode=!spectator,distance=..3,x=674.0,y=11,z=70.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 685 11 5 685 12 5 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 674 11 70 674 12 70 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 674 11 70 minecraft:dark_oak_door[open=true,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 674 12 70 minecraft:dark_oak_door[open=true,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 685 11 5 minecraft:dark_oak_door[open=true,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 685 12 5 minecraft:dark_oak_door[open=true,facing=east,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=10}] 686.0 11 5 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=37}] 674.0 11 70 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=10}] 686.0 11 5 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=37}] 674.0 11 70 1 1
execute if score #temp Searched matches -1..0 run fill 685 11 5 685 12 5 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 674 11 70 674 12 70 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 674 11 70 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 674 12 70 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 685 11 5 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 685 12 5 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=685.0,y=11,z=5.0,dx=0,dy=1,dz=0] run stopsound @s[scores={HallwayNoise=1..}] hostile luigis_mansion:music.mansion.melody
execute if score #temp Searched matches 1..2 as @a[x=685.0,y=11,z=5.0,dx=0,dy=1,dz=0] run scoreboard players set @s HallwayNoise 0
execute if score #temp Searched matches 1..2 as @a[x=685.0,y=11,z=5.0,dx=0,dy=1,dz=0] at @s run teleport @s 675 11 70
execute if score #temp Searched matches 1..2 as @a[x=674.0,y=11,z=70.0,dx=0,dy=1,dz=0] at @s run teleport @s 684 11 5

scoreboard players reset #temp Searched