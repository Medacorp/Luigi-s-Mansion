execute if block 682 11 11 minecraft:dark_oak_door[open=true] if block 664 11 35 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 664 11 35 minecraft:dark_oak_door[open=true] if block 682 11 11 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 682 11 11 minecraft:dark_oak_door[open=true] if block 664 11 35 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 664 11 35 minecraft:dark_oak_door[open=true] if block 682 11 11 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute store result score #temp Boos run data get storage luigis_mansion:data current_state.current_data.boo_counter
execute if block 682 11 11 #minecraft:doors[open=true] unless score #temp Boos matches 5.. positioned 682 11 11 as @p[gamemode=!spectator] unless entity @s[scores={GBHCall=1..}] unless entity @s[scores={Dialog=1..}] run tag @s add washroom_toad
execute if block 682 11 11 #minecraft:doors[open=true] unless score #temp Boos matches 5.. positioned 682 11 11 run function luigis_mansion:blocks/closed_door
execute unless score #temp Boos matches 5.. if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=682.5,y=11,z=12.0] unless entity @a[gamemode=!spectator,distance=..3,x=664.5,y=11,z=35.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0
scoreboard players reset #temp Boos

execute if score #temp Searched matches 1 run fill 682 11 11 682 12 11 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 664 11 35 664 12 35 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 658 11 35 658 12 35 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 682 11 11 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 682 12 11 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 664 11 35 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 664 12 35 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 658 11 35 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 658 12 35 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=10}] 682 11 12.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=15}] 664 11 35.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=10}] 682 11 12.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=15}] 664 11 35.0 1 1
execute if score #temp Searched matches -1..0 run fill 682 11 11 682 12 11 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 664 11 35 664 12 35 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 658 11 35 658 12 35 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 682 11 11 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 682 12 11 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 664 11 35 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 664 12 35 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 658 11 35 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 658 12 35 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=682.0,y=11,z=11.0,dx=0,dy=1,dz=0] run stopsound @s[scores={HallwayNoise=1..}] hostile luigis_mansion:music.mansion.melody
execute if score #temp Searched matches 1..2 as @a[x=682.0,y=11,z=11.0,dx=0,dy=1,dz=0] run scoreboard players set @s HallwayNoise 0
execute if score #temp Searched matches 1..2 as @a[x=682.0,y=11,z=11.0,dx=0,dy=1,dz=0] at @s run teleport @s 664 11 36
execute if score #temp Searched matches 1..2 as @a[x=664.0,y=11,z=35.0,dx=0,dy=1,dz=0] at @s run teleport @s 682 11 10

scoreboard players reset #temp Searched