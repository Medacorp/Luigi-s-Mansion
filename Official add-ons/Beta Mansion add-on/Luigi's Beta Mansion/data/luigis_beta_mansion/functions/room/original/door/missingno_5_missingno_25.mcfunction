execute if block 679 20 -27 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 648 20 -34 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 680 20 -27 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 680 21 -27 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 647 20 -34 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 647 21 -34 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 679 20 -27 679 21 -27 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 680 20 -27 680 21 -27 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 648 20 -34 648 21 -34 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 647 20 -34 647 21 -34 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 680 20 -27 minecraft:acacia_trapdoor[open=true,facing=east,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 680 21 -27 minecraft:acacia_trapdoor[open=true,facing=east,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 647 20 -34 minecraft:acacia_trapdoor[open=true,facing=west,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 647 21 -34 minecraft:acacia_trapdoor[open=true,facing=west,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 679 20 -27 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 679 21 -27 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 648 20 -34 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 648 21 -34 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]

scoreboard players reset #temp Searched