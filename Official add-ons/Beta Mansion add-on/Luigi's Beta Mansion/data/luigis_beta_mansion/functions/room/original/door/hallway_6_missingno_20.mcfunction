execute if block 658 11 -2 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 673 11 5 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 658 11 -3 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 658 12 -3 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 673 11 6 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 673 12 6 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 658 11 -2 658 12 -2 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 658 11 -3 658 12 -3 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 673 11 5 673 12 5 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 673 11 6 673 12 6 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 658 11 -3 minecraft:acacia_trapdoor[open=true,facing=north,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 658 12 -3 minecraft:acacia_trapdoor[open=true,facing=north,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 673 11 6 minecraft:acacia_trapdoor[open=true,facing=south,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 673 12 6 minecraft:acacia_trapdoor[open=true,facing=south,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 658 11 -2 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 658 12 -2 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 673 11 5 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 673 12 5 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

scoreboard players reset #temp Searched