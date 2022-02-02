execute if block 684 20 -60 minecraft:dark_oak_door[open=true] if block 679 111 -23 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 679 111 -23 minecraft:dark_oak_door[open=true] if block 684 20 -60 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 684 20 -60 minecraft:dark_oak_door[open=true] if block 679 111 -23 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 679 111 -23 minecraft:dark_oak_door[open=true] if block 684 20 -60 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=684.5,y=20,z=-60.0] unless entity @a[gamemode=!spectator,distance=..3,x=679.5,y=111,z=-22.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 684 20 -60 684 21 -60 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 670 20 -60 670 21 -60 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 679 111 -22 679 112 -23 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 684 20 -60 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 684 21 -60 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 670 20 -60 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 670 21 -60 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 679 111 -23 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 679 112 -23 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=5}] 684 20 -60.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=6}] 679 111 -22.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=5}] 684 20 -60.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=6}] 679 111 -22.0 1 1
execute if score #temp Searched matches -1..0 run fill 684 20 -60 684 21 -60 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 670 20 -60 670 21 -60 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 679 111 -22 679 112 -23 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 684 20 -60 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 684 21 -60 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 670 20 -60 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 670 21 -60 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 679 111 -23 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 679 112 -23 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=684.0,y=20,z=-60.0,dx=0,dy=1,dz=0] run teleport @s 679 111 -24
execute if score #temp Searched matches 1..2 as @a[x=679.0,y=111,z=-23.0,dx=0,dy=1,dz=0] run teleport @s 684 20 -59

scoreboard players reset #temp Searched