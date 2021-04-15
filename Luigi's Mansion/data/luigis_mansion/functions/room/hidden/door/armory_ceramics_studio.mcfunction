execute if block 699 120 -20 minecraft:oak_door[open=true] if block 698 120 -20 minecraft:oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 698 120 -20 minecraft:oak_door[open=true] if block 699 120 -20 minecraft:oak_door[open=false] run scoreboard players set #temp Searched 1
execute if block 699 120 -20 minecraft:oak_door[open=true] if block 698 120 -20 minecraft:oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 698 120 -20 minecraft:oak_door[open=true] if block 699 120 -20 minecraft:oak_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=699.0,y=120,z=-19.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 698 120 -20 699 121 -20 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 699 120 -20 minecraft:oak_door[open=true,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 699 121 -20 minecraft:oak_door[open=true,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 698 120 -20 minecraft:oak_door[open=true,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 698 121 -20 minecraft:oak_door[open=true,facing=east,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a 699.0 120 -20 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a 699.0 120 -20 1 1
execute if score #temp Searched matches -1..0 run fill 698 120 -20 699 121 -20 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 699 120 -20 minecraft:oak_door[open=false,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 699 121 -20 minecraft:oak_door[open=false,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 698 120 -20 minecraft:oak_door[open=false,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 698 121 -20 minecraft:oak_door[open=false,facing=east,half=upper,hinge=right,powered=false]

scoreboard players reset #temp Searched