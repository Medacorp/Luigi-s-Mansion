execute if block 741 2 58 minecraft:oak_door[open=true] if block 726 2 36 minecraft:oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 726 2 36 minecraft:oak_door[open=true] if block 741 2 58 minecraft:oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 741 2 58 minecraft:oak_door[open=true] if block 726 2 36 minecraft:oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 726 2 36 minecraft:oak_door[open=true] if block 741 2 58 minecraft:oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=741.5,y=2,z=58.0] unless entity @a[gamemode=!spectator,distance=..3,x=726.5,y=2,z=37.0] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 741 2 58 741 3 58 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run fill 726 2 36 726 3 36 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 741 2 58 minecraft:oak_door[open=true,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 741 3 58 minecraft:oak_door[open=true,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 726 2 36 minecraft:oak_door[open=true,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 726 3 36 minecraft:oak_door[open=true,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=46}] 741 2 58.0 1 1
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a[scores={Room=47}] 726 2 37.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=46}] 741 2 58.0 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a[scores={Room=47}] 726 2 37.0 1 1
execute if score #temp Searched matches -1..0 run fill 741 2 58 741 3 58 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run fill 726 2 36 726 3 36 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 741 2 58 minecraft:oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 741 3 58 minecraft:oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 726 2 36 minecraft:oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 726 3 36 minecraft:oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]

execute if score #temp Searched matches 1..2 as @a[x=741.0,y=2,z=58.0,dx=0,dy=1,dz=0] at @s run teleport @s 726 2 35
execute if score #temp Searched matches 1..2 as @a[x=726.0,y=2,z=36.0,dx=0,dy=1,dz=0] at @s run teleport @s 741 2 59

scoreboard players reset #temp Searched