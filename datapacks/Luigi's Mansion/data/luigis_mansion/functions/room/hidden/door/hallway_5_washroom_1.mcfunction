execute if block 682 11 4 minecraft:dark_oak_door[open=true] if block 664 11 -20 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 664 11 -20 minecraft:dark_oak_door[open=true] if block 682 11 4 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 682 11 4 minecraft:dark_oak_door[open=true] if block 664 11 -20 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 664 11 -20 minecraft:dark_oak_door[open=true] if block 682 11 4 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute store result score #temp Boos run data get storage luigis_mansion:data current_state.current_data.boo_counter
execute if block 682 11 4 #minecraft:doors[open=true] unless score #temp Boos matches 5.. positioned 682 11 4 as @p[gamemode=!spectator] unless entity @s[scores={GBHCall=1..}] unless entity @s[scores={Dialog=1..}] run tag @s add washroom_toad
execute if block 682 11 4 #minecraft:doors[open=true] unless score #temp Boos matches 5.. positioned 682 11 4 run function luigis_mansion:blocks/closed_door
execute unless score #temp Boos matches 5.. if score #temp Searched matches 1..2 run scoreboard players set #temp Searched -1
execute unless entity @a[gamemode=!spectator,distance=..3,x=682.5,y=11,z=4.0] unless entity @a[gamemode=!spectator,distance=..3,x=664.5,y=11,z=-19.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0
scoreboard players reset #temp Boos

execute if score #temp Searched matches 1 run fill 682 11 4 682 12 4 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 664 11 -20 664 12 -20 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 658 11 -20 658 12 -20 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 682 11 4 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 682 12 4 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 664 11 -20 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 664 12 -20 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 658 11 -20 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 658 12 -20 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=13}] 682 11 4.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=19}] 664 11 -19.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=13}] 682 11 4.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=19}] 664 11 -19.0 1 1
execute if score #temp Searched matches -1..0 run fill 682 11 4 682 12 4 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 664 11 -20 664 12 -20 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 658 11 -20 658 12 -20 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 682 11 4 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 682 12 4 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 664 11 -20 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 664 12 -20 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 658 11 -20 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 658 12 -20 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=right,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=682.0,y=11,z=4.0,dx=0,dy=1,dz=0] run stopsound @s[scores={RoomNoise=1..}] ambient luigis_mansion:music.mansion.melody
execute if score #temp Searched matches 1..2 as @a[x=682.0,y=11,z=4.0,dx=0,dy=1,dz=0] run scoreboard players set @s RoomNoise 0
execute if score #temp Searched matches 1..2 as @a[x=682.0,y=11,z=4.0,dx=0,dy=1,dz=0] run teleport @s 664 11 -21
execute if score #temp Searched matches 1..2 as @a[x=664.0,y=11,z=-20.0,dx=0,dy=1,dz=0] run teleport @s 682 11 5

scoreboard players reset #temp Searched