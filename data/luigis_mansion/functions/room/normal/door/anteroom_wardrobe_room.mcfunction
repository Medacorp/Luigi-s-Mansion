execute if block 689 20 42 minecraft:dark_oak_door[open=true] if block 682 20 56 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 682 20 56 minecraft:dark_oak_door[open=true] if block 689 20 42 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 689 20 42 minecraft:dark_oak_door[open=true] if block 682 20 56 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 682 20 56 minecraft:dark_oak_door[open=true] if block 689 20 42 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=689.5,y=20,z=43.0] unless entity @a[gamemode=!spectator,distance=..3,x=682.5,y=20,z=56.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 689 20 42 689 21 42 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 682 20 56 682 21 56 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 672 20 56 672 21 56 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 689 20 42 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 689 21 42 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 682 20 56 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 682 21 56 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 672 20 56 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 672 21 56 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=4}] 689 20 42.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=5}] 682 20 56.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=4}] 689 20 42.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=5}] 682 20 56.0 1 1
execute if score #temp Searched matches -1..0 run fill 689 20 42 689 21 42 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 682 20 56 682 21 56 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 672 20 56 672 21 56 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 689 20 42 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 689 21 42 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 682 20 56 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 682 21 56 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 672 20 56 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 672 21 56 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=689.0,y=20,z=42.0,dx=0,dy=1,dz=0] run teleport @s 682 20 57
execute if score #temp Searched matches 1..2 as @a[x=682.0,y=20,z=56.0,dx=0,dy=1,dz=0] run teleport @s 689 20 41

scoreboard players reset #temp Searched