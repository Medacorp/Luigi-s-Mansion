execute if block 738 11 61 minecraft:dark_oak_door[open=true] if block 719 11 65 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 719 11 65 minecraft:dark_oak_door[open=true] if block 738 11 61 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 738 11 61 minecraft:dark_oak_door[open=true] if block 719 11 65 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 719 11 65 minecraft:dark_oak_door[open=true] if block 738 11 61 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=720.0,y=11,z=65.5] unless entity @a[gamemode=!spectator,distance=..3,x=738.0,y=11,z=61.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 719 11 65 719 12 65 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 738 11 61 738 12 61 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 738 11 61 minecraft:dark_oak_door[open=true,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 738 12 61 minecraft:dark_oak_door[open=true,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 719 11 65 minecraft:dark_oak_door[open=true,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 719 12 65 minecraft:dark_oak_door[open=true,facing=east,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=22}] 720.0 11 65 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=23}] 738.0 11 61 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=22}] 720.0 11 65 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=23}] 738.0 11 61 1 1
execute if score #temp Searched matches -1..0 run fill 719 11 65 719 12 65 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 738 11 61 738 12 61 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 738 11 61 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 738 12 61 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 719 11 65 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 719 12 65 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=719.0,y=11,z=65.0,dx=0,dy=1,dz=0] run teleport @s 739 11 61
execute if score #temp Searched matches 1..2 as @a[x=738.0,y=11,z=61.0,dx=0,dy=1,dz=0] run teleport @s 718 11 65

scoreboard players reset #temp Searched