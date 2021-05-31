execute if block 700 2 -18 minecraft:acacia_door[open=true] if block 685 2 -18 minecraft:acacia_door[open=false] run scoreboard players set #temp Searched 1
execute if block 685 2 -18 minecraft:acacia_door[open=true] if block 700 2 -18 minecraft:acacia_door[open=false] run scoreboard players set #temp Searched 1
execute if block 700 2 -18 minecraft:acacia_door[open=true] if block 685 2 -18 minecraft:acacia_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 685 2 -18 minecraft:acacia_door[open=true] if block 700 2 -18 minecraft:acacia_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=700.0,y=2,z=-17.5] unless entity @a[gamemode=!spectator,distance=..3,x=686.0,y=2,z=-17.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 700 2 -18 700 3 -18 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 685 2 -18 685 3 -18 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 700 2 -18 minecraft:acacia_door[open=true,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 700 3 -18 minecraft:acacia_door[open=true,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 685 2 -18 minecraft:acacia_door[open=true,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 685 3 -18 minecraft:acacia_door[open=true,facing=east,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=60}] 700.0 2 -18 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=61}] 686.0 2 -18 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=60}] 700.0 2 -18 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=61}] 686.0 2 -18 1 1
execute if score #temp Searched matches -1..0 run fill 700 2 -18 700 3 -18 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 685 2 -18 685 3 -18 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 700 2 -18 minecraft:acacia_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 700 3 -18 minecraft:acacia_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 685 2 -18 minecraft:acacia_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 685 3 -18 minecraft:acacia_door[open=false,facing=east,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=700.0,y=2,z=-18.0,dx=0,dy=1,dz=0] run teleport @s 684 2 -18
execute if score #temp Searched matches 1..2 as @a[x=685.0,y=2,z=-18.0,dx=0,dy=1,dz=0] run teleport @s 701 2 -18

scoreboard players reset #temp Searched