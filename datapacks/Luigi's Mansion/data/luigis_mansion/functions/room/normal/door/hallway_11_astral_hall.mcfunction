execute if block 666 20 -72 minecraft:dark_oak_door[open=true] if block 691 20 -22 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 691 20 -22 minecraft:dark_oak_door[open=true] if block 666 20 -72 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 666 20 -72 minecraft:dark_oak_door[open=true] if block 691 20 -22 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 691 20 -22 minecraft:dark_oak_door[open=true] if block 666 20 -72 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=691.5,y=20,z=-22.0] unless entity @a[gamemode=!spectator,distance=..3,x=666.5,y=20,z=-71.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 691 20 -22 691 21 -22 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 666 20 -72 666 21 -72 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 666 20 -72 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 666 21 -72 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 691 20 -22 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 691 21 -22 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=37}] 691 20 -22.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=45}] 666 20 -71.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=37}] 691 20 -22.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=45}] 666 20 -71.0 1 1
execute if score #temp Searched matches -1..0 run fill 691 20 -22 691 21 -22 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 666 20 -72 666 21 -72 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 666 20 -72 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 666 21 -72 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 691 20 -22 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 691 21 -22 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=691.0,y=20,z=-22.0,dx=0,dy=1,dz=0] run teleport @s 666 20 -73
execute if score #temp Searched matches 1..2 as @a[x=666.0,y=20,z=-72.0,dx=0,dy=1,dz=0] run teleport @s 691 20 -21

scoreboard players reset #temp Searched