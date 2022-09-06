execute if block 677 20 59 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 685 20 8 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 678 20 59 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 678 21 59 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 684 20 8 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 684 21 8 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 677 20 59 677 21 59 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 678 20 59 678 21 59 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 685 20 8 685 21 8 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 684 20 8 684 21 8 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 678 20 59 minecraft:acacia_trapdoor[open=true,facing=east,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 678 21 59 minecraft:acacia_trapdoor[open=true,facing=east,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 684 20 8 minecraft:acacia_trapdoor[open=true,facing=west,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 684 21 8 minecraft:acacia_trapdoor[open=true,facing=west,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 677 20 59 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 677 21 59 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 685 20 8 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 685 21 8 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]

scoreboard players reset #temp Searched