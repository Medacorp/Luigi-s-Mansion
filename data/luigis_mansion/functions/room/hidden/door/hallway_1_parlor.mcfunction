execute if block 736 20 7 minecraft:jungle_door[open=true] if block 736 20 6 minecraft:jungle_door[open=false] run scoreboard players set #temp Searched 1
execute if block 736 20 6 minecraft:jungle_door[open=true] if block 736 20 7 minecraft:jungle_door[open=false] run scoreboard players set #temp Searched 1
execute if block 736 20 7 minecraft:jungle_door[open=true] if block 736 20 6 minecraft:jungle_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 736 20 6 minecraft:jungle_door[open=true] if block 736 20 7 minecraft:jungle_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 728 20 -12 minecraft:jungle_door[open=true] if block 728 20 -13 minecraft:jungle_door[open=false] run scoreboard players set #temp Searched 1
execute if block 728 20 -13 minecraft:jungle_door[open=true] if block 728 20 -12 minecraft:jungle_door[open=false] run scoreboard players set #temp Searched 1
execute if block 728 20 -12 minecraft:jungle_door[open=true] if block 728 20 -13 minecraft:jungle_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 728 20 -13 minecraft:jungle_door[open=true] if block 728 20 -12 minecraft:jungle_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=736.0,y=20,z=7.0] unless entity @a[gamemode=!spectator,distance=..3,x=729.0,y=20,z=-12.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 736 20 7 736 21 6 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 728 20 -12 728 21 -13 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 736 20 7 minecraft:jungle_door[open=true,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 736 21 7 minecraft:jungle_door[open=true,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 736 20 6 minecraft:jungle_door[open=true,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 736 21 6 minecraft:jungle_door[open=true,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 728 20 -12 minecraft:jungle_door[open=true,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 728 21 -12 minecraft:jungle_door[open=true,facing=east,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 728 20 -13 minecraft:jungle_door[open=true,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 728 21 -13 minecraft:jungle_door[open=true,facing=east,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=2}] 736.0 20 7.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=3}] 729.0 20 -12.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=2}] 736.0 20 7.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=3}] 729.0 20 -12.0 1 1
execute if score #temp Searched matches -1..0 run fill 736 20 7 736 21 6 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 728 20 -12 728 21 -13 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 736 20 7 minecraft:jungle_door[open=false,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 736 21 7 minecraft:jungle_door[open=false,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 736 20 6 minecraft:jungle_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 736 21 6 minecraft:jungle_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 728 20 -12 minecraft:jungle_door[open=false,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 728 21 -12 minecraft:jungle_door[open=false,facing=east,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 728 20 -13 minecraft:jungle_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 728 21 -13 minecraft:jungle_door[open=false,facing=east,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=736.0,y=20,z=6.0,dx=0,dy=1,dz=1] run teleport @s 727 20 -12.0
execute if score #temp Searched matches 1..2 as @a[x=728.0,y=20,z=-13.0,dx=0,dy=1,dz=1] run teleport @s 737 20 7.0

scoreboard players reset #temp Searched