execute if block 700 2 33 minecraft:acacia_door[open=true] if block 685 2 33 minecraft:acacia_door[open=false] run scoreboard players set #temp Searched 1
execute if block 685 2 33 minecraft:acacia_door[open=true] if block 700 2 33 minecraft:acacia_door[open=false] run scoreboard players set #temp Searched 1
execute if block 700 2 33 minecraft:acacia_door[open=true] if block 685 2 33 minecraft:acacia_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 685 2 33 minecraft:acacia_door[open=true] if block 700 2 33 minecraft:acacia_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=700.0,y=2,z=33.5] unless entity @a[gamemode=!spectator,distance=..3,x=686.0,y=2,z=33.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 700 2 33 700 3 33 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 685 2 33 685 3 33 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 700 2 33 minecraft:acacia_door[open=true,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 700 3 33 minecraft:acacia_door[open=true,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 685 2 33 minecraft:acacia_door[open=true,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 685 3 33 minecraft:acacia_door[open=true,facing=east,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=47}] 700.0 2 33 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=48}] 686.0 2 33 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=47}] 700.0 2 33 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=48}] 686.0 2 33 1 1
execute if score #temp Searched matches -1..0 run fill 700 2 33 700 3 33 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 685 2 33 685 3 33 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 700 2 33 minecraft:acacia_door[open=false,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 700 3 33 minecraft:acacia_door[open=false,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 685 2 33 minecraft:acacia_door[open=false,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 685 3 33 minecraft:acacia_door[open=false,facing=east,half=upper,hinge=right,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=700.0,y=2,z=33.0,dx=0,dy=1,dz=0] at @s run teleport @s 684 2 33
execute if score #temp Searched matches 1..2 as @a[x=685.0,y=2,z=33.0,dx=0,dy=1,dz=0] at @s run teleport @s 701 2 33

scoreboard players reset #temp Searched