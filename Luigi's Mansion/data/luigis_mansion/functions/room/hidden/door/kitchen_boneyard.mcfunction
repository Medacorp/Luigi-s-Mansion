execute if block 698 11 -73 minecraft:warped_door[open=true] if block 685 102 -38 minecraft:warped_door[open=false] run scoreboard players set #temp Searched 1
execute if block 685 102 -38 minecraft:warped_door[open=true] if block 698 11 -73 minecraft:warped_door[open=false] run scoreboard players set #temp Searched 1
execute if block 698 11 -73 minecraft:warped_door[open=true] if block 685 102 -38 minecraft:warped_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 685 102 -38 minecraft:warped_door[open=true] if block 698 11 -73 minecraft:warped_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 698 11 -73 minecraft:warped_door[powered=false] run scoreboard players set #temp Searched -1
execute if block 685 102 -38 minecraft:warped_door[powered=false] run scoreboard players set #temp Searched -1

execute unless entity @a[gamemode=!spectator,distance=..3,x=698.0,y=11,z=-72.5] unless entity @a[gamemode=!spectator,distance=..3,x=686.0,y=102,z=-37.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 698 11 -73 698 12 -73 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 685 102 -38 685 103 -38 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 698 11 -73 minecraft:warped_door[open=true,facing=west,half=lower,hinge=left,powered=true]
execute if score #temp Searched matches 1 run setblock 698 12 -73 minecraft:warped_door[open=true,facing=west,half=upper,hinge=left,powered=true]
execute if score #temp Searched matches 1 run setblock 685 102 -38 minecraft:warped_door[open=true,facing=east,half=lower,hinge=right,powered=true]
execute if score #temp Searched matches 1 run setblock 685 103 -38 minecraft:warped_door[open=true,facing=east,half=upper,hinge=right,powered=true]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=23}] 698.0 11 -73 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=24}] 686.0 102 -38 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=23}] 698.0 11 -73 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=24}] 686.0 102 -38 1 1
execute if score #temp Searched matches -1..0 run fill 698 11 -73 698 12 -73 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 685 102 -38 685 103 -38 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 698 11 -73 minecraft:warped_door[open=false,facing=west,half=lower,hinge=left,powered=true]
execute if score #temp Searched matches -1..0 run setblock 698 12 -73 minecraft:warped_door[open=false,facing=west,half=upper,hinge=left,powered=true]
execute if score #temp Searched matches -1..0 run setblock 685 102 -38 minecraft:warped_door[open=false,facing=east,half=lower,hinge=right,powered=true]
execute if score #temp Searched matches -1..0 run setblock 685 103 -38 minecraft:warped_door[open=false,facing=east,half=upper,hinge=right,powered=true]

execute if score #temp Searched matches 1..2 as @a[x=698.0,y=11,z=-73.0,dx=0,dy=1,dz=0] run scoreboard players set @s HallwayNoise 0
execute if score #temp Searched matches 1..2 as @a[x=698.0,y=11,z=-73.0,dx=0,dy=1,dz=0] at @s run teleport @s 684 102 -38
execute if score #temp Searched matches 1..2 as @a[x=685.0,y=102,z=-38.0,dx=0,dy=1,dz=0] at @s run teleport @s 699 11 -73

scoreboard players reset #temp Searched