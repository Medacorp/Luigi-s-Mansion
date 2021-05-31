execute if block 745 29 -43 minecraft:oak_door[open=true] if block 712 29 -45 minecraft:oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 712 29 -45 minecraft:oak_door[open=true] if block 745 29 -43 minecraft:oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 745 29 -43 minecraft:oak_door[open=true] if block 712 29 -45 minecraft:oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 712 29 -45 minecraft:oak_door[open=true] if block 745 29 -43 minecraft:oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=745.0,y=29,z=-42.5] unless entity @a[gamemode=!spectator,distance=..3,x=713.0,y=29,z=-44.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 745 29 -43 745 30 -43 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 712 29 -45 712 30 -45 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 745 29 -43 minecraft:oak_door[open=true,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 745 30 -43 minecraft:oak_door[open=true,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 712 29 -45 minecraft:oak_door[open=true,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 712 30 -45 minecraft:oak_door[open=true,facing=east,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=64}] 745.0 29 -43 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=65}] 713.0 29 -45 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=64}] 745.0 29 -43 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=65}] 713.0 29 -45 1 1
execute if score #temp Searched matches -1..0 run fill 745 29 -43 745 30 -43 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 712 29 -45 712 30 -45 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 745 29 -43 minecraft:oak_door[open=false,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 745 30 -43 minecraft:oak_door[open=false,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 712 29 -45 minecraft:oak_door[open=false,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 712 30 -45 minecraft:oak_door[open=false,facing=east,half=upper,hinge=right,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=745.0,y=29,z=-43.0,dx=0,dy=1,dz=0] run teleport @s 712 29 -45
execute if score #temp Searched matches 1..2 as @a[x=712.0,y=29,z=-45.0,dx=0,dy=1,dz=0] run teleport @s 746 29 -43

scoreboard players reset #temp Searched