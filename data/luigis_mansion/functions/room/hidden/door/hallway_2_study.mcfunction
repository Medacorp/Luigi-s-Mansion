execute if block 723 20 -32 minecraft:dark_oak_door[open=true] if block 716 20 -33 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 716 20 -33 minecraft:dark_oak_door[open=true] if block 723 20 -32 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 723 20 -32 minecraft:dark_oak_door[open=true] if block 716 20 -33 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 716 20 -33 minecraft:dark_oak_door[open=true] if block 723 20 -32 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=723.0,y=20,z=-31.5] unless entity @a[gamemode=!spectator,distance=..3,x=717.0,y=20,z=-32.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 723 20 -32 723 21 -32 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 716 20 -33 716 21 -33 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 723 20 -32 minecraft:dark_oak_door[open=true,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 723 21 -32 minecraft:dark_oak_door[open=true,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 716 20 -33 minecraft:dark_oak_door[open=true,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 716 21 -33 minecraft:dark_oak_door[open=true,facing=east,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=7}] 722.0 20 -32 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=8}] 716.0 20 -33 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=7}] 722.0 20 -32 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=8}] 716.0 20 -33 1 1
execute if score #temp Searched matches -1..0 run fill 723 20 -32 723 21 -32 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 716 20 -33 716 21 -33 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 723 20 -32 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 723 21 -32 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 716 20 -33 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 716 21 -33 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=right,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=723.0,y=20,z=-32.0,dx=0,dy=1,dz=0] run teleport @s 715 20 -33
execute if score #temp Searched matches 1..2 as @a[x=716.0,y=20,z=-33.0,dx=0,dy=1,dz=0] run teleport @s 724 20 -32

scoreboard players reset #temp Searched