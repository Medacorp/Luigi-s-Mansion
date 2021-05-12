execute if block 673 20 4 minecraft:dark_oak_door[open=true] if block 654 20 -1 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 654 20 -1 minecraft:dark_oak_door[open=true] if block 673 20 4 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 673 20 4 minecraft:dark_oak_door[open=true] if block 654 20 -1 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 654 20 -1 minecraft:dark_oak_door[open=true] if block 673 20 4 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=673.5,y=20,z=4.0] unless entity @a[gamemode=!spectator,distance=..3,x=654.5,y=20,z=-0.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 673 20 4 673 21 4 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 654 20 -1 654 21 -1 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 644 20 -1 644 21 -1 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 673 20 4 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 673 21 4 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 654 20 -1 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 654 21 -1 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 644 20 -1 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 644 21 -1 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=31}] 673 20 4.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=33}] 654 20 -0.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=31}] 673 20 4.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=33}] 654 20 -0.0 1 1
execute if score #temp Searched matches -1..0 run fill 673 20 4 673 21 4 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 654 20 -1 654 21 -1 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 644 20 -1 644 21 -1 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 673 20 4 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 673 21 4 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 654 20 -1 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 654 21 -1 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 644 20 -1 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 644 21 -1 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=right,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=673.0,y=20,z=4.0,dx=0,dy=1,dz=0] at @s run teleport @s 654 20 -2
execute if score #temp Searched matches 1..2 as @a[x=654.0,y=20,z=-1.0,dx=0,dy=1,dz=0] at @s run teleport @s 673 20 5

scoreboard players reset #temp Searched