execute if block 725 29 -13 minecraft:oak_door[open=true] if block 682 120 -13 minecraft:oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 682 120 -13 minecraft:oak_door[open=true] if block 725 29 -13 minecraft:oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 725 29 -13 minecraft:oak_door[open=true] if block 682 120 -13 minecraft:oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 682 120 -13 minecraft:oak_door[open=true] if block 725 29 -13 minecraft:oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute if score #temp Searched matches 1..2 as @a[gamemode=!spectator,distance=..3,x=725.0,y=29,z=-12.5] if data storage luigis_mansion:data current_state.current_data.obtained_keys{balcony_2:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{balcony_2:1b} positioned 725 29 -13 run function luigis_mansion:room/normal/balcony_2/unlock_door
execute if block 725 29 -13 #minecraft:doors[open=true] unless data storage luigis_mansion:data current_state.current_data.used_keys{balcony_2:1b} positioned 725 29 -13 run function luigis_mansion:blocks/closed_door
execute unless data storage luigis_mansion:data current_state.current_data.used_keys{balcony_2:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=725.0,y=29,z=-12.5] unless entity @a[gamemode=!spectator,distance=..3,x=683.0,y=120,z=-12.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 725 29 -13 725 30 -13 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 682 120 -13 682 121 -13 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 725 29 -13 minecraft:oak_door[open=true,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 725 30 -13 minecraft:oak_door[open=true,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 682 120 -13 minecraft:oak_door[open=true,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 682 121 -13 minecraft:oak_door[open=true,facing=east,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=52}] 725.0 29 -13 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=53}] 683.0 120 -13 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=52}] 725.0 29 -13 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=53}] 683.0 120 -13 1 1
execute if score #temp Searched matches -1..0 run fill 725 29 -13 725 30 -13 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 682 120 -13 682 121 -13 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 725 29 -13 minecraft:oak_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 725 30 -13 minecraft:oak_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 682 120 -13 minecraft:oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 682 121 -13 minecraft:oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=725.0,y=29,z=-13.0,dx=0,dy=1,dz=0] run teleport @s 681 120 -13
execute if score #temp Searched matches 1..2 as @a[x=682.0,y=120,z=-13.0,dx=0,dy=1,dz=0] run teleport @s 726 29 -13

scoreboard players reset #temp Searched