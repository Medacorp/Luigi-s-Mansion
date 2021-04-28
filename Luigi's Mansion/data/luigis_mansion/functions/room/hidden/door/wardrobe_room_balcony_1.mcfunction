execute if block 682 20 -60 minecraft:dark_oak_door[open=true] if block 677 111 -23 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 677 111 -23 minecraft:dark_oak_door[open=true] if block 682 20 -60 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 682 20 -60 minecraft:dark_oak_door[open=true] if block 677 111 -23 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 677 111 -23 minecraft:dark_oak_door[open=true] if block 682 20 -60 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=682.5,y=20,z=-60.0] unless entity @a[gamemode=!spectator,distance=..3,x=677.5,y=111,z=-22.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 682 20 -60 682 21 -60 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 672 20 -60 672 21 -60 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 677 111 -22 677 112 -23 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 682 20 -60 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 682 21 -60 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 672 20 -60 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 672 21 -60 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 677 111 -23 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 677 112 -23 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=4}] 682 20 -60.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=5}] 677 111 -22.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=4}] 682 20 -60.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=5}] 677 111 -22.0 1 1
execute if score #temp Searched matches -1..0 run fill 682 20 -60 682 21 -60 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 672 20 -60 672 21 -60 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 677 111 -22 677 112 -23 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 682 20 -60 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 682 21 -60 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 672 20 -60 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 672 21 -60 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 677 111 -23 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 677 112 -23 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=682.0,y=20,z=-60.0,dx=0,dy=1,dz=0] at @s run teleport @s 677 111 -24
execute if score #temp Searched matches 1..2 as @a[x=677.0,y=111,z=-23.0,dx=0,dy=1,dz=0] at @s run teleport @s 682 20 -59

scoreboard players reset #temp Searched