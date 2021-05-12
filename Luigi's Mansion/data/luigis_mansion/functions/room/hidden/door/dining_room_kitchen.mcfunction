execute if block 705 11 -42 minecraft:jungle_door[open=true] if block 704 11 -42 minecraft:jungle_door[open=false] run scoreboard players set #temp Searched 1
execute if block 704 11 -42 minecraft:jungle_door[open=true] if block 705 11 -42 minecraft:jungle_door[open=false] run scoreboard players set #temp Searched 1
execute if block 705 11 -42 minecraft:jungle_door[open=true] if block 704 11 -42 minecraft:jungle_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 704 11 -42 minecraft:jungle_door[open=true] if block 705 11 -42 minecraft:jungle_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 705 11 -47 minecraft:jungle_door[open=true] if block 704 11 -47 minecraft:jungle_door[open=false] run scoreboard players set #temp Searched 1
execute if block 704 11 -47 minecraft:jungle_door[open=true] if block 705 11 -47 minecraft:jungle_door[open=false] run scoreboard players set #temp Searched 1
execute if block 705 11 -47 minecraft:jungle_door[open=true] if block 704 11 -47 minecraft:jungle_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 704 11 -47 minecraft:jungle_door[open=true] if block 705 11 -47 minecraft:jungle_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=705.0,y=11,z=-42.0] unless entity @a[gamemode=!spectator,distance=..3,x=705.0,y=11,z=-46.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 704 11 -42 705 12 -42 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 704 11 -47 705 12 -47 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 705 11 -42 minecraft:jungle_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 705 12 -42 minecraft:jungle_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 704 11 -42 minecraft:jungle_door[open=true,facing=north,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 704 12 -42 minecraft:jungle_door[open=true,facing=north,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 705 11 -47 minecraft:jungle_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 705 12 -47 minecraft:jungle_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 704 11 -47 minecraft:jungle_door[open=true,facing=south,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 704 12 -47 minecraft:jungle_door[open=true,facing=south,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=22}] 705.0 11 -42.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=23}] 705.0 11 -46.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=22}] 705.0 11 -42.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=23}] 705.0 11 -46.0 1 1
execute if score #temp Searched matches -1..0 run fill 704 11 -42 705 12 -42 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 704 11 -47 705 12 -47 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 705 11 -42 minecraft:jungle_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 705 12 -42 minecraft:jungle_door[open=false,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 704 11 -42 minecraft:jungle_door[open=false,facing=north,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 704 12 -42 minecraft:jungle_door[open=false,facing=north,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 705 11 -47 minecraft:jungle_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 705 12 -47 minecraft:jungle_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 704 11 -47 minecraft:jungle_door[open=false,facing=south,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 704 12 -47 minecraft:jungle_door[open=false,facing=south,half=upper,hinge=right,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=704.0,y=11,z=-42.0,dx=1,dy=1,dz=0] at @s run teleport @s 705.0 11 -48
execute if score #temp Searched matches 1..2 as @a[x=704.0,y=11,z=-47.0,dx=1,dy=1,dz=0] run scoreboard players set @s HallwayNoise 0
execute if score #temp Searched matches 1..2 as @a[x=704.0,y=11,z=-47.0,dx=1,dy=1,dz=0] at @s run teleport @s 705.0 11 -41

scoreboard players reset #temp Searched