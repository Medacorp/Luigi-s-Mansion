execute if block 741 20 -43 minecraft:dark_oak_door[open=true] if block 741 20 -38 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 741 20 -38 minecraft:dark_oak_door[open=true] if block 741 20 -43 minecraft:dark_oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 741 20 -43 minecraft:dark_oak_door[open=true] if block 741 20 -38 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 741 20 -38 minecraft:dark_oak_door[open=true] if block 741 20 -43 minecraft:dark_oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=741.5,y=20,z=-38.0] unless entity @a[gamemode=!spectator,distance=..3,x=741.5,y=20,z=-42.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 741 20 -38 741 21 -38 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 741 20 -43 741 21 -43 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 729 20 -43 729 21 -43 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 741 20 -43 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 741 21 -43 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 729 20 -43 minecraft:dark_oak_door[open=true,facing=south,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 729 21 -43 minecraft:dark_oak_door[open=true,facing=south,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 741 20 -38 minecraft:dark_oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 741 21 -38 minecraft:dark_oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=69}] 741 20 -38.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=70}] 741 20 -42.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=69}] 741 20 -38.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=70}] 741 20 -42.0 1 1
execute if score #temp Searched matches -1..0 run fill 741 20 -38 741 21 -38 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 741 20 -43 741 21 -43 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 729 20 -43 729 21 -43 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 741 20 -43 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 741 21 -43 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 729 20 -43 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 729 21 -43 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 741 20 -38 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 741 21 -38 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=741.0,y=20,z=-38.0,dx=0,dy=1,dz=0] run teleport @s 741 20 -44
execute if score #temp Searched matches 1..2 as @a[x=741.0,y=20,z=-43.0,dx=0,dy=1,dz=0] run teleport @s 741 20 -37

scoreboard players reset #temp Searched