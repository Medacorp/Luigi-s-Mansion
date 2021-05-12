execute if block 738 11 -46 minecraft:dark_oak_door[open=true] if block 719 11 -50 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 719 11 -50 minecraft:dark_oak_door[open=true] if block 738 11 -46 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 738 11 -46 minecraft:dark_oak_door[open=true] if block 719 11 -50 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 719 11 -50 minecraft:dark_oak_door[open=true] if block 738 11 -46 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=720.0,y=11,z=-49.5] unless entity @a[gamemode=!spectator,distance=..3,x=738.0,y=11,z=-45.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 719 11 -50 719 12 -50 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 738 11 -46 738 12 -46 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 738 11 -46 minecraft:dark_oak_door[open=true,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 738 12 -46 minecraft:dark_oak_door[open=true,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 719 11 -50 minecraft:dark_oak_door[open=true,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 719 12 -50 minecraft:dark_oak_door[open=true,facing=east,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=18}] 720.0 11 -50 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=19}] 738.0 11 -46 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=18}] 720.0 11 -50 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=19}] 738.0 11 -46 1 1
execute if score #temp Searched matches -1..0 run fill 719 11 -50 719 12 -50 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 738 11 -46 738 12 -46 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 738 11 -46 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 738 12 -46 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 719 11 -50 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 719 12 -50 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=right,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=719.0,y=11,z=-50.0,dx=0,dy=1,dz=0] at @s run teleport @s 739 11 -46
execute if score #temp Searched matches 1..2 as @a[x=738.0,y=11,z=-46.0,dx=0,dy=1,dz=0] at @s run teleport @s 718 11 -50

scoreboard players reset #temp Searched