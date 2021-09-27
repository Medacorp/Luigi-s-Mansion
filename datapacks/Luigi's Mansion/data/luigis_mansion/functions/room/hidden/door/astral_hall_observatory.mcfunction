execute if block 645 20 88 minecraft:dark_oak_door[open=true] if block 666 20 107 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 666 20 107 minecraft:dark_oak_door[open=true] if block 645 20 88 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 645 20 88 minecraft:dark_oak_door[open=true] if block 666 20 107 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 666 20 107 minecraft:dark_oak_door[open=true] if block 645 20 88 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=666.5,y=20,z=108.0] unless entity @a[gamemode=!spectator,distance=..3,x=645.5,y=20,z=88.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 666 20 107 666 21 107 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 645 20 88 645 21 88 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 645 20 88 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 645 21 88 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 666 20 107 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 666 21 107 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=45}] 666 20 108.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=46}] 645 20 88.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=45}] 666 20 108.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=46}] 645 20 88.0 1 1
execute if score #temp Searched matches -1..0 run fill 666 20 107 666 21 107 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 645 20 88 645 21 88 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 645 20 88 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 645 21 88 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 666 20 107 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 666 21 107 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=666.0,y=20,z=107.0,dx=0,dy=1,dz=0] unless data storage luigis_mansion:data current_state.current_data.rooms.astral_hall{cleared:1b} run function luigis_mansion:room/hidden/astral_hall/trick_door
execute if score #temp Searched matches 1..2 as @a[x=666.0,y=20,z=107.0,dx=0,dy=1,dz=0] run teleport @s 645 20 89
execute if score #temp Searched matches 1..2 as @a[x=645.0,y=20,z=88.0,dx=0,dy=1,dz=0] run stopsound @s[scores={RoomNoise=1..}] ambient luigis_mansion:music.mansion.room.observatory
execute if score #temp Searched matches 1..2 as @a[x=645.0,y=20,z=88.0,dx=0,dy=1,dz=0] run scoreboard players set @s RoomNoise 0
execute if score #temp Searched matches 1..2 as @a[x=645.0,y=20,z=88.0,dx=0,dy=1,dz=0] run teleport @s 666 20 106

scoreboard players reset #temp Searched