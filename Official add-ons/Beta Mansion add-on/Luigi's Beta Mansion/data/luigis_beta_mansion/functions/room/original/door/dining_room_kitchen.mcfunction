execute if block 705 11 57 minecraft:jungle_door[open=true] if block 704 11 57 minecraft:jungle_door[open=false] run scoreboard players set #temp Searched 1
execute if block 704 11 57 minecraft:jungle_door[open=true] if block 705 11 57 minecraft:jungle_door[open=false] run scoreboard players set #temp Searched 1
execute if block 705 11 57 minecraft:jungle_door[open=true] if block 704 11 57 minecraft:jungle_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 704 11 57 minecraft:jungle_door[open=true] if block 705 11 57 minecraft:jungle_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 705 11 62 minecraft:jungle_door[open=true] if block 704 11 62 minecraft:jungle_door[open=false] run scoreboard players set #temp Searched 1
execute if block 704 11 62 minecraft:jungle_door[open=true] if block 705 11 62 minecraft:jungle_door[open=false] run scoreboard players set #temp Searched 1
execute if block 705 11 62 minecraft:jungle_door[open=true] if block 704 11 62 minecraft:jungle_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 704 11 62 minecraft:jungle_door[open=true] if block 705 11 62 minecraft:jungle_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=705.0,y=11,z=58.0] unless entity @a[gamemode=!spectator,distance=..3,x=705.0,y=11,z=62.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 704 11 57 705 12 57 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 704 11 62 705 12 62 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 705 11 57 minecraft:jungle_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 705 12 57 minecraft:jungle_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 704 11 57 minecraft:jungle_door[open=true,facing=south,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 704 12 57 minecraft:jungle_door[open=true,facing=south,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 705 11 62 minecraft:jungle_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 705 12 62 minecraft:jungle_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 704 11 62 minecraft:jungle_door[open=true,facing=north,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 704 12 62 minecraft:jungle_door[open=true,facing=north,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=14}] 705.0 11 58.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=15}] 705.0 11 62.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=14}] 705.0 11 58.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=15}] 705.0 11 62.0 1 1
execute if score #temp Searched matches -1..0 run fill 704 11 57 705 12 57 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 704 11 62 705 12 62 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 705 11 57 minecraft:jungle_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 705 12 57 minecraft:jungle_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 704 11 57 minecraft:jungle_door[open=false,facing=south,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 704 12 57 minecraft:jungle_door[open=false,facing=south,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 705 11 62 minecraft:jungle_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 705 12 62 minecraft:jungle_door[open=false,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 704 11 62 minecraft:jungle_door[open=false,facing=north,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 704 12 62 minecraft:jungle_door[open=false,facing=north,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=704.0,y=11,z=57.0,dx=1,dy=1,dz=0] run teleport @s 705.0 11 63
execute if score #temp Searched matches 1..2 as @a[x=704.0,y=11,z=62.0,dx=1,dy=1,dz=0] run scoreboard players set @s RoomNoise 0
execute if score #temp Searched matches 1..2 as @a[x=704.0,y=11,z=62.0,dx=1,dy=1,dz=0] run teleport @s 705.0 11 56

scoreboard players reset #temp Searched