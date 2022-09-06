execute if block 698 11 88 minecraft:warped_door[open=true] if block 685 102 53 minecraft:warped_door[open=false] run scoreboard players set #temp Searched 1
execute if block 685 102 53 minecraft:warped_door[open=true] if block 698 11 88 minecraft:warped_door[open=false] run scoreboard players set #temp Searched 1
execute if block 698 11 88 minecraft:warped_door[open=true] if block 685 102 53 minecraft:warped_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 685 102 53 minecraft:warped_door[open=true] if block 698 11 88 minecraft:warped_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 698 11 88 minecraft:warped_door[powered=false] run scoreboard players set #temp Searched -1
execute if block 685 102 53 minecraft:warped_door[powered=false] run scoreboard players set #temp Searched -1

execute unless entity @a[gamemode=!spectator,distance=..3,x=698.0,y=11,z=88.5] unless entity @a[gamemode=!spectator,distance=..3,x=686.0,y=102,z=53.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 698 11 88 698 12 88 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 685 102 53 685 103 53 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 698 11 88 minecraft:warped_door[open=true,facing=west,half=lower,hinge=right,powered=true]
execute if score #temp Searched matches 1 run setblock 698 12 88 minecraft:warped_door[open=true,facing=west,half=upper,hinge=right,powered=true]
execute if score #temp Searched matches 1 run setblock 685 102 53 minecraft:warped_door[open=true,facing=east,half=lower,hinge=left,powered=true]
execute if score #temp Searched matches 1 run setblock 685 103 53 minecraft:warped_door[open=true,facing=east,half=upper,hinge=left,powered=true]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=15}] 698.0 11 88 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=16}] 686.0 102 53 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=15}] 698.0 11 88 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=16}] 686.0 102 53 1 1
execute if score #temp Searched matches -1..0 run fill 698 11 88 698 12 88 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 685 102 53 685 103 53 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 698 11 88 minecraft:warped_door[open=false,facing=west,half=lower,hinge=right,powered=true]
execute if score #temp Searched matches -1..0 run setblock 698 12 88 minecraft:warped_door[open=false,facing=west,half=upper,hinge=right,powered=true]
execute if score #temp Searched matches -1..0 run setblock 685 102 53 minecraft:warped_door[open=false,facing=east,half=lower,hinge=left,powered=true]
execute if score #temp Searched matches -1..0 run setblock 685 103 53 minecraft:warped_door[open=false,facing=east,half=upper,hinge=left,powered=true]

execute if score #temp Searched matches 1..2 as @a[x=698.0,y=11,z=88.0,dx=0,dy=1,dz=0] run scoreboard players set @s RoomNoise 0
execute if score #temp Searched matches 1..2 as @a[x=698.0,y=11,z=88.0,dx=0,dy=1,dz=0] run teleport @s 684 102 53
execute if score #temp Searched matches 1..2 as @a[x=685.0,y=102,z=53.0,dx=0,dy=1,dz=0] run teleport @s 699 11 88

scoreboard players reset #temp Searched