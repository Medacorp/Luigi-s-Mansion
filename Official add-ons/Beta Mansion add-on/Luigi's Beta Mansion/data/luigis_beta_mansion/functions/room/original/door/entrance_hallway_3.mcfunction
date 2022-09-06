execute if block 743 11 8 minecraft:jungle_door[open=true] if block 743 11 9 minecraft:jungle_door[open=false] run scoreboard players set #temp Searched 1
execute if block 743 11 9 minecraft:jungle_door[open=true] if block 743 11 8 minecraft:jungle_door[open=false] run scoreboard players set #temp Searched 1
execute if block 743 11 8 minecraft:jungle_door[open=true] if block 743 11 9 minecraft:jungle_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 743 11 9 minecraft:jungle_door[open=true] if block 743 11 8 minecraft:jungle_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 719 11 -6 minecraft:jungle_door[open=true] if block 719 11 -5 minecraft:jungle_door[open=false] run scoreboard players set #temp Searched 1
execute if block 719 11 -5 minecraft:jungle_door[open=true] if block 719 11 -6 minecraft:jungle_door[open=false] run scoreboard players set #temp Searched 1
execute if block 719 11 -6 minecraft:jungle_door[open=true] if block 719 11 -5 minecraft:jungle_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 719 11 -5 minecraft:jungle_door[open=true] if block 719 11 -6 minecraft:jungle_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=743.0,y=11,z=9.0] if data storage luigis_mansion:data current_state.current_data.obtained_keys{hallway_3:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{hallway_3:1b} positioned 743 11 9.0 run function luigis_beta_mansion:room/original/hallway_3/unlock_door
execute if block 743 11 8 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{hallway_3:1b} positioned 743 11 8 run function luigis_mansion:blocks/closed_door
execute if block 743 11 9 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{hallway_3:1b} positioned 743 11 9 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data current_state.current_data.used_keys{hallway_3:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=743.0,y=11,z=9.0] unless entity @a[gamemode=!spectator,distance=..3,x=720.0,y=11,z=-5.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 743 11 8 743 12 9 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 719 11 -6 719 12 -5 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 743 11 8 minecraft:jungle_door[open=true,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 743 12 8 minecraft:jungle_door[open=true,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 743 11 9 minecraft:jungle_door[open=true,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 743 12 9 minecraft:jungle_door[open=true,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 719 11 -6 minecraft:jungle_door[open=true,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 719 12 -6 minecraft:jungle_door[open=true,facing=east,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 719 11 -5 minecraft:jungle_door[open=true,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 719 12 -5 minecraft:jungle_door[open=true,facing=east,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=1}] 744.0 11 9.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=8}] 721.0 11 -5.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=1}] 744.0 11 9.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=8}] 721.0 11 -5.0 1 1
execute if score #temp Searched matches -1..0 run fill 743 11 8 743 12 9 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 729 11 -6 719 12 -5 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 743 11 8 minecraft:jungle_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 743 12 8 minecraft:jungle_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 743 11 9 minecraft:jungle_door[open=false,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 743 12 9 minecraft:jungle_door[open=false,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 719 11 -6 minecraft:jungle_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 719 12 -6 minecraft:jungle_door[open=false,facing=east,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 719 11 -5 minecraft:jungle_door[open=false,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 719 12 -5 minecraft:jungle_door[open=false,facing=east,half=upper,hinge=right,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=743.0,y=11,z=8.0,dx=0,dy=1,dz=1] run teleport @s 718 11 -5.0
execute if score #temp Searched matches 1..2 as @a[x=719.0,y=11,z=-6.0,dx=0,dy=1,dz=1] run teleport @s 744 11 9.0

scoreboard players reset #temp Searched