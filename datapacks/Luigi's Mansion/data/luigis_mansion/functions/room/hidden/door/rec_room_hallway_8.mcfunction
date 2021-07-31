execute if block 660 11 59 minecraft:dark_oak_door[open=true] if block 648 11 59 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 648 11 59 minecraft:dark_oak_door[open=true] if block 660 11 59 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 660 11 59 minecraft:dark_oak_door[open=true] if block 648 11 59 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 648 11 59 minecraft:dark_oak_door[open=true] if block 660 11 59 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=649.0,y=11,z=59.5] unless entity @a[gamemode=!spectator,distance=..3,x=660.0,y=11,z=59.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 648 11 59 648 12 59 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 628 11 59 628 12 59 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 660 11 59 660 12 59 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 660 11 59 minecraft:dark_oak_door[open=true,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 660 12 59 minecraft:dark_oak_door[open=true,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 648 11 59 minecraft:dark_oak_door[open=true,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 648 12 59 minecraft:dark_oak_door[open=true,facing=east,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 628 11 59 minecraft:dark_oak_door[open=true,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 628 12 59 minecraft:dark_oak_door[open=true,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=32}] 649.0 11 59 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=33}] 660.0 11 59 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=32}] 649.0 11 59 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=33}] 660.0 11 59 1 1
execute if score #temp Searched matches -1..0 run fill 648 11 59 648 12 59 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 628 11 59 628 12 59 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 660 11 59 660 12 59 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 660 11 59 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 660 12 59 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 648 11 59 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 648 12 59 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 628 11 59 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 628 12 59 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=648.0,y=11,z=59.0,dx=0,dy=1,dz=0] run teleport @s 661 11 59
execute if score #temp Searched matches 1..2 as @a[x=660.0,y=11,z=59.0,dx=0,dy=1,dz=0] run teleport @s 647 11 59

scoreboard players reset #temp Searched