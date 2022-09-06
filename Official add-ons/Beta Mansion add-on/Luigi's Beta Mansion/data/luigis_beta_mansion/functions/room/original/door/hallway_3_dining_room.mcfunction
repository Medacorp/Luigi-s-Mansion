execute if block 713 11 7 minecraft:dark_oak_door[open=true] if block 710 11 51 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 710 11 51 minecraft:dark_oak_door[open=true] if block 713 11 7 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 713 11 7 minecraft:dark_oak_door[open=true] if block 710 11 51 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 710 11 51 minecraft:dark_oak_door[open=true] if block 713 11 7 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=713.0,y=11,z=5.5] unless entity @a[gamemode=!spectator,distance=..3,x=711.0,y=11,z=51.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 713 11 7 713 12 7 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 710 11 51 710 12 51 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 713 11 7 minecraft:dark_oak_door[open=true,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 713 12 7 minecraft:dark_oak_door[open=true,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 710 11 51 minecraft:dark_oak_door[open=true,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 710 12 51 minecraft:dark_oak_door[open=true,facing=east,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=8}] 713.0 11 7 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=14}] 711.0 11 51 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=8}] 713.0 11 7 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=14}] 711.0 11 51 1 1
execute if score #temp Searched matches -1..0 run fill 713 11 7 713 12 7 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 710 11 51 710 12 51 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 713 11 7 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 713 12 7 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 710 11 51 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 710 12 51 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=713.0,y=11,z=7.0,dx=0,dy=1,dz=0] run teleport @s 709 11 51
execute if score #temp Searched matches 1..2 as @a[x=710.0,y=11,z=51.0,dx=0,dy=1,dz=0] run teleport @s 714 11 7

scoreboard players reset #temp Searched