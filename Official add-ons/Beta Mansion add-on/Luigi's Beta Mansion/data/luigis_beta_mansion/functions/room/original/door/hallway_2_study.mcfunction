execute if block 723 20 47 minecraft:dark_oak_door[open=true] if block 716 20 48 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 716 20 48 minecraft:dark_oak_door[open=true] if block 723 20 47 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 723 20 47 minecraft:dark_oak_door[open=true] if block 716 20 48 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 716 20 48 minecraft:dark_oak_door[open=true] if block 723 20 47 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=723.0,y=20,z=47.5] unless entity @a[gamemode=!spectator,distance=..3,x=717.0,y=20,z=48.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 723 20 47 723 21 47 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 716 20 48 716 21 48 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 723 20 47 minecraft:dark_oak_door[open=true,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 723 21 47 minecraft:dark_oak_door[open=true,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 716 20 48 minecraft:dark_oak_door[open=true,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 716 21 48 minecraft:dark_oak_door[open=true,facing=east,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=4}] 723.0 20 47 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=5}] 716.0 20 48 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=4}] 723.0 20 47 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=5}] 716.0 20 48 1 1
execute if score #temp Searched matches -1..0 run fill 723 20 47 723 21 47 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 716 20 48 716 21 48 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 723 20 47 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 723 21 47 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 716 20 48 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 716 21 48 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=723.0,y=20,z=47.0,dx=0,dy=1,dz=0] run teleport @s 715 20 48
execute if score #temp Searched matches 1..2 as @a[x=716.0,y=20,z=48.0,dx=0,dy=1,dz=0] run teleport @s 724 20 47

scoreboard players reset #temp Searched