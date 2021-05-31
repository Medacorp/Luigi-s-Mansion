execute if block 666 20 87 minecraft:dark_oak_door[open=true] if block 691 20 37 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 691 20 37 minecraft:dark_oak_door[open=true] if block 666 20 87 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 666 20 87 minecraft:dark_oak_door[open=true] if block 691 20 37 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 691 20 37 minecraft:dark_oak_door[open=true] if block 666 20 87 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=691.5,y=20,z=38.0] unless entity @a[gamemode=!spectator,distance=..3,x=666.5,y=20,z=87.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 691 20 37 691 21 37 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 666 20 87 666 21 87 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 666 20 87 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 666 21 87 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 691 20 37 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 691 21 37 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=37}] 691 20 38.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=45}] 666 20 87.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=37}] 691 20 38.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=45}] 666 20 87.0 1 1
execute if score #temp Searched matches -1..0 run fill 691 20 37 691 21 37 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 666 20 87 666 21 87 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 666 20 87 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 666 21 87 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 691 20 37 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 691 21 37 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=691.0,y=20,z=37.0,dx=0,dy=1,dz=0] run teleport @s 666 20 88
execute if score #temp Searched matches 1..2 as @a[x=666.0,y=20,z=87.0,dx=0,dy=1,dz=0] run teleport @s 691 20 36

scoreboard players reset #temp Searched