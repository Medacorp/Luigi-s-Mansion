execute if block 749 29 34 minecraft:oak_door[open=true] if block 752 29 41 minecraft:oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 752 29 41 minecraft:oak_door[open=true] if block 749 29 34 minecraft:oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 749 29 34 minecraft:oak_door[open=true] if block 752 29 41 minecraft:oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 752 29 41 minecraft:oak_door[open=true] if block 749 29 34 minecraft:oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=752.5,y=29,z=41.0] unless entity @a[gamemode=!spectator,distance=..3,x=749.5,y=29,z=35.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 752 29 41 752 30 41 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 749 29 34 749 30 34 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 749 29 34 minecraft:oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 749 30 34 minecraft:oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 752 29 41 minecraft:oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 752 30 41 minecraft:oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=43}] 752 29 41.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=44}] 749 29 35.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=43}] 752 29 41.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=44}] 749 29 35.0 1 1
execute if score #temp Searched matches -1..0 run fill 752 29 41 752 30 41 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 749 29 34 749 30 34 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 749 29 34 minecraft:oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 749 30 34 minecraft:oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 752 29 41 minecraft:oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 752 30 41 minecraft:oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=752.0,y=29,z=41.0,dx=0,dy=1,dz=0] at @s run teleport @s 749 29 33
execute if score #temp Searched matches 1..2 as @a[x=749.0,y=29,z=34.0,dx=0,dy=1,dz=0] at @s run teleport @s 752 29 42

scoreboard players reset #temp Searched