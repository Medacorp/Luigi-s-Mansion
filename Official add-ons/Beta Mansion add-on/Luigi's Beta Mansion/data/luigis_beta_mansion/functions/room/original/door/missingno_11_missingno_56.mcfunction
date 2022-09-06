execute if block 713 29 -34 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 703 29 -60 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 714 29 -34 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 714 30 -34 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 702 29 -60 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 702 30 -60 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 713 29 -34 713 30 -34 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 714 29 -34 714 30 -34 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 703 29 -60 703 30 -60 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 702 29 -60 702 30 -60 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 714 29 -34 minecraft:acacia_trapdoor[open=true,facing=east,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 714 30 -34 minecraft:acacia_trapdoor[open=true,facing=east,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 702 29 -60 minecraft:acacia_trapdoor[open=true,facing=west,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 702 30 -60 minecraft:acacia_trapdoor[open=true,facing=west,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 713 29 -34 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 713 30 -34 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 703 29 -60 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 703 30 -60 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]

scoreboard players reset #temp Searched