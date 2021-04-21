execute if block 738 29 -35 minecraft:oak_door[open=true] if block 753 29 -16 minecraft:oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 753 29 -16 minecraft:oak_door[open=true] if block 738 29 -35 minecraft:oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 738 29 -35 minecraft:oak_door[open=true] if block 753 29 -16 minecraft:oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 753 29 -16 minecraft:oak_door[open=true] if block 738 29 -35 minecraft:oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=738.5,y=29,z=-34.0] unless entity @a[gamemode=!spectator,distance=..3,x=753.5,y=29,z=-16.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 738 29 -35 738 30 -35 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 752 29 -35 752 30 -35 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 753 29 -16 753 30 -16 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 738 29 -35 minecraft:oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 738 30 -35 minecraft:oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 752 29 -35 minecraft:oak_door[open=true,facing=south,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 752 30 -35 minecraft:oak_door[open=true,facing=south,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 753 29 -16 minecraft:oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 753 30 -16 minecraft:oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=40}] 738 29 -34.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=41}] 753 29 -16.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=40}] 738 29 -34.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=41}] 753 29 -16.0 1 1
execute if score #temp Searched matches -1..0 run fill 738 29 -35 738 30 -35 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 752 29 -35 752 30 -35 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 753 29 -16 753 30 -16 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 738 29 -35 minecraft:oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 738 30 -35 minecraft:oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 752 29 -35 minecraft:oak_door[open=false,facing=south,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 752 30 -35 minecraft:oak_door[open=false,facing=south,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 753 29 -16 minecraft:oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 753 30 -16 minecraft:oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=738.0,y=29,z=-35.0,dx=0,dy=1,dz=0] at @s run teleport @s 753 29 -15
execute if score #temp Searched matches 1..2 as @a[x=753.0,y=29,z=-16.0,dx=0,dy=1,dz=0] at @s run teleport @s 738 29 -36

scoreboard players reset #temp Searched