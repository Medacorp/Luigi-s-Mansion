execute if block 674 11 70 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 685 11 5 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 675 11 70 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 675 12 70 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 684 11 5 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 684 12 5 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 674 11 70 674 12 70 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 675 11 70 675 12 70 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 685 11 5 685 12 5 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 684 11 5 684 12 5 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 675 11 70 minecraft:acacia_trapdoor[open=true,facing=east,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 675 12 70 minecraft:acacia_trapdoor[open=true,facing=east,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 684 11 5 minecraft:acacia_trapdoor[open=true,facing=west,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 684 12 5 minecraft:acacia_trapdoor[open=true,facing=west,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 674 11 70 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 674 12 70 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 685 11 5 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 685 12 5 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]

scoreboard players reset #temp Searched