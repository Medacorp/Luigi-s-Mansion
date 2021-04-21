execute if block 681 11 45 minecraft:dark_oak_door[open=true] if block 681 11 65 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 681 11 65 minecraft:dark_oak_door[open=true] if block 681 11 45 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 681 11 45 minecraft:dark_oak_door[open=true] if block 681 11 65 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 681 11 65 minecraft:dark_oak_door[open=true] if block 681 11 45 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=681.5,y=11,z=65.0] unless entity @a[gamemode=!spectator,distance=..3,x=681.5,y=11,z=46.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 681 11 65 681 12 65 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 667 11 65 667 12 65 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 681 11 45 681 12 45 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 681 11 45 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 681 12 45 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 681 11 65 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 681 12 65 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 667 11 65 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 667 12 65 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=37}] 681 11 65.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=38}] 681 11 46.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=37}] 681 11 65.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=38}] 681 11 46.0 1 1
execute if score #temp Searched matches -1..0 run fill 681 11 65 681 12 65 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 667 11 65 667 12 65 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 681 11 45 681 12 45 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 681 11 45 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 681 12 45 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 681 11 65 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 681 12 65 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 667 11 65 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 667 12 65 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=681.0,y=11,z=65.0,dx=0,dy=1,dz=0] at @s run teleport @s 681 11 44
execute if score #temp Searched matches 1..2 as @a[x=681.0,y=11,z=45.0,dx=0,dy=1,dz=0] at @s run teleport @s 681 11 66

scoreboard players reset #temp Searched