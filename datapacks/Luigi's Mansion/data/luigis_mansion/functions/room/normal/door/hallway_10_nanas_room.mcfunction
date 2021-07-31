execute if block 658 20 -2 minecraft:dark_oak_door[open=true] if block 673 20 5 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 673 20 5 minecraft:dark_oak_door[open=true] if block 658 20 -2 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 658 20 -2 minecraft:dark_oak_door[open=true] if block 673 20 5 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 673 20 5 minecraft:dark_oak_door[open=true] if block 658 20 -2 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=673.5,y=20,z=5.0] unless entity @a[gamemode=!spectator,distance=..3,x=658.5,y=20,z=-1.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 673 20 5 673 21 5 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 658 20 -2 658 21 -2 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 658 20 -2 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 658 21 -2 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 673 20 5 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 673 21 5 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=36}] 673 20 5.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=44}] 658 20 -1.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=36}] 673 20 5.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=44}] 658 20 -1.0 1 1
execute if score #temp Searched matches -1..0 run fill 673 20 5 673 21 5 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 658 20 -2 658 21 -2 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 658 20 -2 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 658 21 -2 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 673 20 5 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 673 21 5 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=673.0,y=20,z=5.0,dx=0,dy=1,dz=0] run teleport @s 658 20 -3
execute if score #temp Searched matches 1..2 as @a[x=658.0,y=20,z=-2.0,dx=0,dy=1,dz=0] run teleport @s 673 20 6

scoreboard players reset #temp Searched