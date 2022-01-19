execute in minecraft:overworld if block 720 102 7 minecraft:spruce_door[open=true] if block 720 102 8 minecraft:spruce_door[open=false] run scoreboard players set #temp Searched 1
execute in minecraft:overworld if block 720 102 8 minecraft:spruce_door[open=true] if block 720 102 7 minecraft:spruce_door[open=false] run scoreboard players set #temp Searched 1
execute in minecraft:overworld if block 720 102 7 minecraft:spruce_door[open=true] if block 720 102 8 minecraft:spruce_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute in minecraft:overworld if block 720 102 8 minecraft:spruce_door[open=true] if block 720 102 7 minecraft:spruce_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute in luigis_mansion:hidden if block 755 11 6 minecraft:spruce_door[open=true] if block 755 11 7 minecraft:spruce_door[open=false] run scoreboard players set #temp Searched 1
execute in luigis_mansion:hidden if block 755 11 7 minecraft:spruce_door[open=true] if block 755 11 6 minecraft:spruce_door[open=false] run scoreboard players set #temp Searched 1
execute in luigis_mansion:hidden if block 755 11 6 minecraft:spruce_door[open=true] if block 755 11 7 minecraft:spruce_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute in luigis_mansion:hidden if block 755 11 7 minecraft:spruce_door[open=true] if block 755 11 6 minecraft:spruce_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute in luigis_mansion:hidden if block 755 11 7 #minecraft:doors[open=true] if data storage luigis_mansion:data current_state.current_data{blackout:1b} positioned 755 11 7 run function luigis_mansion:blocks/closed_door/no_animation
execute in luigis_mansion:hidden if block 755 11 6 #minecraft:doors[open=true] if data storage luigis_mansion:data current_state.current_data{blackout:1b} positioned 755 11 6 run function luigis_mansion:blocks/closed_door/no_animation
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute in minecraft:overworld unless entity @a[gamemode=!spectator,distance=..3,x=719.5,y=102,z=8.0] in luigis_mansion:hidden unless entity @a[gamemode=!spectator,distance=..3,x=756.5,y=11,z=7.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 in minecraft:overworld run fill 720 102 7 720 103 8 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 in luigis_mansion:hidden run fill 755 11 6 755 12 7 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 in minecraft:overworld run setblock 720 102 7 minecraft:spruce_door[open=true,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 in minecraft:overworld run setblock 720 103 7 minecraft:spruce_door[open=true,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 in minecraft:overworld run setblock 720 102 8 minecraft:spruce_door[open=true,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 in minecraft:overworld run setblock 720 103 8 minecraft:spruce_door[open=true,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 in luigis_mansion:hidden run setblock 755 11 6 minecraft:spruce_door[open=true,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 in luigis_mansion:hidden run setblock 755 12 6 minecraft:spruce_door[open=true,facing=east,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 in luigis_mansion:hidden run setblock 755 11 7 minecraft:spruce_door[open=true,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 in luigis_mansion:hidden run setblock 755 12 7 minecraft:spruce_door[open=true,facing=east,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 in minecraft:overworld run playsound luigis_mansion:block.door.close block @a[scores={Room=0}] 719 102 8.0 1 1
execute if score #temp Searched matches 0 in luigis_mansion:hidden run playsound luigis_mansion:block.door.close block @a[scores={Room=1}] 756 11 7.0 1 1
execute if score #temp Searched matches 1 in minecraft:overworld run playsound luigis_mansion:block.door.open block @a[scores={Room=0}] 719 102 8.0 1 1
execute if score #temp Searched matches 1 in luigis_mansion:hidden run playsound luigis_mansion:block.door.open block @a[scores={Room=1}] 756 11 7.0 1 1
execute if score #temp Searched matches -1..0 in minecraft:overworld run fill 720 102 7 720 103 8 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 in luigis_mansion:hidden run fill 755 11 6 755 12 7 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 in minecraft:overworld run setblock 720 102 7 minecraft:spruce_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 in minecraft:overworld run setblock 720 103 7 minecraft:spruce_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 in minecraft:overworld run setblock 720 102 8 minecraft:spruce_door[open=false,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 in minecraft:overworld run setblock 720 103 8 minecraft:spruce_door[open=false,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 in luigis_mansion:hidden run setblock 755 11 6 minecraft:spruce_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 in luigis_mansion:hidden run setblock 755 12 6 minecraft:spruce_door[open=false,facing=east,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 in luigis_mansion:hidden run setblock 755 11 7 minecraft:spruce_door[open=false,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 in luigis_mansion:hidden run setblock 755 12 7 minecraft:spruce_door[open=false,facing=east,half=upper,hinge=right,powered=false]

execute in luigis_mansion:hidden if score #temp Searched matches 1..2 run scoreboard players set @a[x=755.0,y=11,z=6.0,dx=0,dy=1,dz=1] Room 0
execute in luigis_mansion:hidden if score #temp Searched matches 1..2 run scoreboard players set @a[x=755.0,y=11,z=6.0,dx=0,dy=1,dz=1] LastRoom 0
execute in luigis_mansion:hidden if score #temp Searched matches 1..2 as @a[x=755.0,y=11,z=6.0,dx=0,dy=1,dz=1] run function luigis_mansion:other/music/set/silence
execute in luigis_mansion:hidden if score #temp Searched matches 1..2 as @a[x=755.0,y=11,z=6.0,dx=0,dy=1,dz=1] in minecraft:overworld run teleport @s 721 102 8.0
execute in minecraft:overworld if score #temp Searched matches 1..2 as @a[x=720.0,y=102,z=7.0,dx=0,dy=1,dz=1] in luigis_mansion:hidden run teleport @s 754 11 7.0

scoreboard players reset #temp Searched