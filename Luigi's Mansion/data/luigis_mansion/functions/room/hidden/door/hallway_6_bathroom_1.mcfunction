execute if block 673 11 4 minecraft:dark_oak_door[open=true] if block 654 11 -1 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 654 11 -1 minecraft:dark_oak_door[open=true] if block 673 11 4 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 673 11 4 minecraft:dark_oak_door[open=true] if block 654 11 -1 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 654 11 -1 minecraft:dark_oak_door[open=true] if block 673 11 4 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=673.5,y=11,z=4.0] unless entity @a[gamemode=!spectator,distance=..3,x=654.5,y=11,z=0.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 673 11 4 673 12 4 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 654 11 -1 654 12 -1 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 644 11 -1 644 12 -1 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 673 11 4 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 673 12 4 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 654 11 -1 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 654 12 -1 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 644 11 -1 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 644 12 -1 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=14}] 673 11 4.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=16}] 654 11 0.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=14}] 673 11 4.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=16}] 654 11 0.0 1 1
execute if score #temp Searched matches -1..0 run fill 673 11 4 673 12 4 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 654 11 -1 654 12 -1 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 644 11 -1 644 12 -1 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 673 11 4 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 673 12 4 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 654 11 -1 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 654 12 -1 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 644 11 -1 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 644 12 -1 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=right,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=673.0,y=11,z=4.0,dx=0,dy=1,dz=0] run teleport @s 654 11 -2
execute if score #temp Searched matches 1..2 as @a[x=654.0,y=11,z=-1.0,dx=0,dy=1,dz=0] run teleport @s 673 11 5

scoreboard players reset #temp Searched