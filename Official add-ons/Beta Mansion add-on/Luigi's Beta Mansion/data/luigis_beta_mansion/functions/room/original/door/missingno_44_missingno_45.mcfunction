execute if block 700 2 -18 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 685 2 -18 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 701 2 -18 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 701 3 -18 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 684 2 -18 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 684 3 -18 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 700 2 -18 700 3 -18 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 701 2 -18 701 3 -18 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 685 2 -18 685 3 -18 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 684 2 -18 684 3 -18 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 701 2 -18 minecraft:acacia_trapdoor[open=true,facing=east,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 701 3 -18 minecraft:acacia_trapdoor[open=true,facing=east,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 684 2 -18 minecraft:acacia_trapdoor[open=true,facing=west,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 684 3 -18 minecraft:acacia_trapdoor[open=true,facing=west,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 700 2 -18 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 700 3 -18 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 685 2 -18 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 685 3 -18 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]

scoreboard players reset #temp Searched