execute if block 681 11 -30 minecraft:dark_oak_door[open=true] if block 681 11 -50 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 681 11 -50 minecraft:dark_oak_door[open=true] if block 681 11 -30 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 681 11 -30 minecraft:dark_oak_door[open=true] if block 681 11 -50 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 681 11 -50 minecraft:dark_oak_door[open=true] if block 681 11 -30 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=681.5,y=11,z=-49.0] unless entity @a[gamemode=!spectator,distance=..3,x=681.5,y=11,z=-30.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 681 11 -50 681 12 -50 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 667 11 -50 667 12 -50 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 681 11 -30 681 12 -30 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 681 11 -30 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 681 12 -30 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 681 11 -50 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 681 12 -50 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 667 11 -50 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 667 12 -50 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=37}] 681 11 -49.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=38}] 681 11 -30.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=37}] 681 11 -49.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=38}] 681 11 -30.0 1 1
execute if score #temp Searched matches -1..0 run fill 681 11 -50 681 12 -50 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 667 11 -50 667 12 -50 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 681 11 -30 681 12 -30 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 681 11 -30 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 681 12 -30 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 681 11 -50 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 681 12 -50 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 667 11 -50 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 667 12 -50 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=right,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=681.0,y=11,z=-50.0,dx=0,dy=1,dz=0] at @s run teleport @s 681 11 -29
execute if score #temp Searched matches 1..2 as @a[x=681.0,y=11,z=-30.0,dx=0,dy=1,dz=0] at @s run teleport @s 681 11 -51

scoreboard players reset #temp Searched