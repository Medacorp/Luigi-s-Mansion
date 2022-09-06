execute if block 723 20 75 minecraft:dark_oak_door[open=true] if block 698 111 51 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 698 111 51 minecraft:dark_oak_door[open=true] if block 723 20 75 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 723 20 75 minecraft:dark_oak_door[open=true] if block 698 111 51 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 698 111 51 minecraft:dark_oak_door[open=true] if block 723 20 75 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=723.0,y=20,z=75.5] unless entity @a[gamemode=!spectator,distance=..3,x=699.0,y=111,z=51.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 723 20 75 723 21 75 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 698 111 51 698 112 51 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 723 20 75 minecraft:dark_oak_door[open=true,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 723 21 75 minecraft:dark_oak_door[open=true,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 698 111 51 minecraft:dark_oak_door[open=true,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 698 112 51 minecraft:dark_oak_door[open=true,facing=east,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=4}] 723.0 20 75 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=6}] 699.0 111 51 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=4}] 723.0 20 75 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=6}] 699.0 111 51 1 1
execute if score #temp Searched matches -1..0 run fill 723 20 75 723 21 75 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 698 111 51 698 112 51 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 723 20 75 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 723 21 75 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 698 111 51 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 698 112 51 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=723.0,y=20,z=75.0,dx=0,dy=1,dz=0] run teleport @s 697 111 51
execute if score #temp Searched matches 1..2 as @a[x=698.0,y=111,z=51.0,dx=0,dy=1,dz=0] run teleport @s 724 20 75

scoreboard players reset #temp Searched