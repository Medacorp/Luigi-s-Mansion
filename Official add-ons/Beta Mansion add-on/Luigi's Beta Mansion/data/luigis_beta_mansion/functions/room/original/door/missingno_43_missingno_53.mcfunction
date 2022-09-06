execute if block 726 2 -15 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 735 2 -5 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 726 2 -16 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 726 3 -16 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 735 2 -4 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 735 3 -4 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 726 2 -15 726 3 -15 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 726 2 -16 726 3 -16 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 735 2 -5 735 3 -5 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 735 2 -4 735 3 -4 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 726 2 -16 minecraft:acacia_trapdoor[open=true,facing=north,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 726 3 -16 minecraft:acacia_trapdoor[open=true,facing=north,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 735 2 -4 minecraft:acacia_trapdoor[open=true,facing=south,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 735 3 -4 minecraft:acacia_trapdoor[open=true,facing=south,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 726 2 -15 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 726 3 -15 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 735 2 -5 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 735 3 -5 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

scoreboard players reset #temp Searched