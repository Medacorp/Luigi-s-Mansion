execute if block 679 11 -37 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 648 11 -44 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 680 11 -37 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 680 12 -37 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 647 11 -44 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 647 12 -44 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 679 11 -37 679 12 -37 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 680 11 -37 680 12 -37 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 648 11 -44 648 12 -44 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 647 11 -44 647 12 -44 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 680 11 -37 minecraft:acacia_trapdoor[open=true,facing=east,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 680 12 -37 minecraft:acacia_trapdoor[open=true,facing=east,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 647 11 -44 minecraft:acacia_trapdoor[open=true,facing=west,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 647 12 -44 minecraft:acacia_trapdoor[open=true,facing=west,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 679 11 -37 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 679 12 -37 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 648 11 -44 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 648 12 -44 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]

scoreboard players reset #temp Searched