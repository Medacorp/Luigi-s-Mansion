execute if block 743 11 7 minecraft:jungle_door[open=true] if block 743 11 6 minecraft:jungle_door[open=false] run scoreboard players set #temp Searched 1
execute if block 743 11 6 minecraft:jungle_door[open=true] if block 743 11 7 minecraft:jungle_door[open=false] run scoreboard players set #temp Searched 1
execute if block 743 11 7 minecraft:jungle_door[open=true] if block 743 11 6 minecraft:jungle_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 743 11 6 minecraft:jungle_door[open=true] if block 743 11 7 minecraft:jungle_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 719 11 21 minecraft:jungle_door[open=true] if block 719 11 20 minecraft:jungle_door[open=false] run scoreboard players set #temp Searched 1
execute if block 719 11 20 minecraft:jungle_door[open=true] if block 719 11 21 minecraft:jungle_door[open=false] run scoreboard players set #temp Searched 1
execute if block 719 11 21 minecraft:jungle_door[open=true] if block 719 11 20 minecraft:jungle_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 719 11 20 minecraft:jungle_door[open=true] if block 719 11 21 minecraft:jungle_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 743 11 7 minecraft:jungle_door[powered=false] run scoreboard players set #temp Searched -1
execute if block 743 11 6 minecraft:jungle_door[powered=false] run scoreboard players set #temp Searched -1
execute if block 719 11 21 minecraft:jungle_door[powered=false] run scoreboard players set #temp Searched -1
execute if block 719 11 20 minecraft:jungle_door[powered=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=743.0,y=11,z=7.0] if data storage luigis_mansion:data current_state.current_data.obtained_keys{main_hallway:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{main_hallway:1b} positioned 743 11 7.0 run function luigis_mansion:room/hidden/main_hallway/unlock_door
execute if block 743 11 7 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{main_hallway:1b} positioned 743 11 7 run function luigis_mansion:blocks/closed_door
execute if block 743 11 6 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{main_hallway:1b} positioned 743 11 6 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data current_state.current_data.used_keys{main_hallway:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=743.0,y=11,z=7.0] unless entity @a[gamemode=!spectator,distance=..3,x=720.0,y=11,z=21.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 743 11 7 743 12 6 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 719 11 21 719 12 20 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 743 11 7 minecraft:jungle_door[open=true,facing=west,half=lower,hinge=left,powered=true]
execute if score #temp Searched matches 1 run setblock 743 12 7 minecraft:jungle_door[open=true,facing=west,half=upper,hinge=left,powered=true]
execute if score #temp Searched matches 1 run setblock 743 11 6 minecraft:jungle_door[open=true,facing=west,half=lower,hinge=right,powered=true]
execute if score #temp Searched matches 1 run setblock 743 12 6 minecraft:jungle_door[open=true,facing=west,half=upper,hinge=right,powered=true]
execute if score #temp Searched matches 1 run setblock 719 11 21 minecraft:jungle_door[open=true,facing=east,half=lower,hinge=right,powered=true]
execute if score #temp Searched matches 1 run setblock 719 12 21 minecraft:jungle_door[open=true,facing=east,half=upper,hinge=right,powered=true]
execute if score #temp Searched matches 1 run setblock 719 11 20 minecraft:jungle_door[open=true,facing=east,half=lower,hinge=left,powered=true]
execute if score #temp Searched matches 1 run setblock 719 12 20 minecraft:jungle_door[open=true,facing=east,half=upper,hinge=left,powered=true]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=1}] 744.0 11 7.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=10}] 721.0 11 21.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=1}] 744.0 11 7.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=10}] 721.0 11 21.0 1 1
execute if score #temp Searched matches -1..0 run fill 743 11 7 743 12 6 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 719 11 21 719 12 20 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 743 11 7 minecraft:jungle_door[open=false,facing=west,half=lower,hinge=left,powered=true]
execute if score #temp Searched matches -1..0 run setblock 743 12 7 minecraft:jungle_door[open=false,facing=west,half=upper,hinge=left,powered=true]
execute if score #temp Searched matches -1..0 run setblock 743 11 6 minecraft:jungle_door[open=false,facing=west,half=lower,hinge=right,powered=true]
execute if score #temp Searched matches -1..0 run setblock 743 12 6 minecraft:jungle_door[open=false,facing=west,half=upper,hinge=right,powered=true]
execute if score #temp Searched matches -1..0 run setblock 719 11 21 minecraft:jungle_door[open=false,facing=east,half=lower,hinge=right,powered=true]
execute if score #temp Searched matches -1..0 run setblock 719 12 21 minecraft:jungle_door[open=false,facing=east,half=upper,hinge=right,powered=true]
execute if score #temp Searched matches -1..0 run setblock 719 11 20 minecraft:jungle_door[open=false,facing=east,half=lower,hinge=left,powered=true]
execute if score #temp Searched matches -1..0 run setblock 719 12 20 minecraft:jungle_door[open=false,facing=east,half=upper,hinge=left,powered=true]

execute if score #temp Searched matches 1..2 as @a[x=743.0,y=11,z=6.0,dx=0,dy=1,dz=1] at @s run teleport @s 718 11 21.0
execute if score #temp Searched matches 1..2 as @a[x=719.0,y=11,z=20.0,dx=0,dy=1,dz=1] at @s run teleport @s 744 11 7.0

scoreboard players reset #temp Searched