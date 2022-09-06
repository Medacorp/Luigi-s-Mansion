execute if block 706 11 -16 minecraft:dark_oak_door[open=true] if block 704 11 29 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 704 11 29 minecraft:dark_oak_door[open=true] if block 706 11 -16 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 706 11 -16 minecraft:dark_oak_door[open=true] if block 704 11 29 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 704 11 29 minecraft:dark_oak_door[open=true] if block 706 11 -16 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=706.5,y=11,z=-15.0] unless entity @a[gamemode=!spectator,distance=..3,x=704.5,y=11,z=29.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 706 11 -16 706 12 -16 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 704 11 29 704 12 29 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 706 11 -16 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 706 12 -16 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 704 11 29 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 704 12 29 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=9}] 706 11 -15.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=14}] 704 11 29.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=9}] 706 11 -15.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=14}] 704 11 29.0 1 1
execute if score #temp Searched matches -1..0 run fill 706 11 -16 706 12 -16 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 704 11 29 704 12 29 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 706 11 -16 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 706 12 -16 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 704 11 29 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 704 12 29 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=706.0,y=11,z=-16.0,dx=0,dy=1,dz=0] run scoreboard players set @s RoomNoise 0
execute if score #temp Searched matches 1..2 as @a[x=706.0,y=11,z=-16.0,dx=0,dy=1,dz=0] run teleport @s 704 11 30
execute if score #temp Searched matches 1..2 as @a[x=704.0,y=11,z=29.0,dx=0,dy=1,dz=0] run teleport @s 706 11 -17

scoreboard players reset #temp Searched