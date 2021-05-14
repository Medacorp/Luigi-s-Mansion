execute if block 741 11 58 minecraft:dark_oak_door[open=true] if block 741 11 53 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 741 11 53 minecraft:dark_oak_door[open=true] if block 741 11 58 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 741 11 58 minecraft:dark_oak_door[open=true] if block 741 11 53 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 741 11 53 minecraft:dark_oak_door[open=true] if block 741 11 58 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=741.5,y=11,z=54.0] unless entity @a[gamemode=!spectator,distance=..3,x=741.5,y=11,z=58.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 741 11 53 741 12 53 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 741 11 58 741 12 58 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 729 11 58 729 12 58 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 741 11 58 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 741 12 58 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 729 11 58 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 729 12 58 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 741 11 53 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 741 12 53 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=20}] 741 11 54.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=21}] 741 11 58.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=20}] 741 11 54.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=21}] 741 11 58.0 1 1
execute if score #temp Searched matches -1..0 run fill 741 11 53 741 12 53 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 741 11 58 741 12 58 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 729 11 58 729 12 58 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 741 11 58 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 741 12 58 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 729 11 58 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 729 12 58 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 741 11 53 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 741 12 53 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=741.0,y=11,z=53.0,dx=0,dy=1,dz=0] run teleport @s 741 11 59
execute if score #temp Searched matches 1..2 as @a[x=741.0,y=11,z=58.0,dx=0,dy=1,dz=0] run teleport @s 741 11 52

scoreboard players reset #temp Searched