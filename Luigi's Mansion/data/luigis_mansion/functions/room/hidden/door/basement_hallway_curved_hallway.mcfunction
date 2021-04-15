execute if block 686 93 33 minecraft:acacia_door[open=true] if block 685 93 33 minecraft:acacia_door[open=false] run scoreboard players set #temp Searched 1
execute if block 685 93 33 minecraft:acacia_door[open=true] if block 686 93 33 minecraft:acacia_door[open=false] run scoreboard players set #temp Searched 1
execute if block 686 93 33 minecraft:acacia_door[open=true] if block 685 93 33 minecraft:acacia_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2
execute if block 685 93 33 minecraft:acacia_door[open=true] if block 686 93 33 minecraft:acacia_door[open=true] unless score #temp Searched matches 1 run scoreboard players set #temp Searched 2

execute unless entity @a[gamemode=!spectator,distance=..3,x=686.0,y=93,z=33.5] if score #temp Searched matches 1..2 run scoreboard players set #temp Searched 0

execute if score #temp Searched matches 1 run fill 685 93 33 686 94 33 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 1 run setblock 686 93 33 minecraft:acacia_door[open=true,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 686 94 33 minecraft:acacia_door[open=true,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches 1 run setblock 685 93 33 minecraft:acacia_door[open=true,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 1 run setblock 685 94 33 minecraft:acacia_door[open=true,facing=east,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 run playsound luigis_mansion:block.door.close block @a 686.0 93 33 1 1
execute if score #temp Searched matches 1 run playsound luigis_mansion:block.door.open block @a 686.0 93 33 1 1
execute if score #temp Searched matches -1..0 run fill 685 93 33 686 94 33 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1..0 run setblock 686 93 33 minecraft:acacia_door[open=false,facing=west,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 686 94 33 minecraft:acacia_door[open=false,facing=west,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1..0 run setblock 685 93 33 minecraft:acacia_door[open=false,facing=east,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1..0 run setblock 685 94 33 minecraft:acacia_door[open=false,facing=east,half=upper,hinge=right,powered=false]

scoreboard players reset #temp Searched