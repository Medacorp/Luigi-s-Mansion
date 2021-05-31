execute if block 673 20 11 minecraft:dark_oak_door[open=true] if block 654 20 16 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 654 20 16 minecraft:dark_oak_door[open=true] if block 673 20 11 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 673 20 11 minecraft:dark_oak_door[open=true] if block 654 20 16 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 654 20 16 minecraft:dark_oak_door[open=true] if block 673 20 11 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=673.5,y=20,z=12.0] unless entity @a[gamemode=!spectator,distance=..3,x=654.5,y=20,z=16.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 673 20 11 673 21 11 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 654 20 16 654 21 16 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 644 20 16 644 21 16 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 673 20 11 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 673 21 11 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 654 20 16 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 654 21 16 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 644 20 16 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 644 21 16 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=36}] 673 20 12.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=43}] 654 20 16.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=36}] 673 20 12.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=43}] 654 20 16.0 1 1
execute if score #temp Searched matches -1..0 run fill 673 20 11 673 21 11 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 654 20 16 654 21 16 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 644 20 16 644 21 16 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 673 20 11 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 673 21 11 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 654 20 16 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 654 21 16 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 644 20 16 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 644 21 16 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=673.0,y=20,z=11.0,dx=0,dy=1,dz=0] run teleport @s 654 20 17
execute if score #temp Searched matches 1..2 as @a[x=654.0,y=20,z=16.0,dx=0,dy=1,dz=0] run teleport @s 673 20 10

scoreboard players reset #temp Searched