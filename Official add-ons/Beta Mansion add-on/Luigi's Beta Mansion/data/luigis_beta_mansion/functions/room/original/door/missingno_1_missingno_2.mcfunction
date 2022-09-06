execute if block 689 20 42 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 682 20 56 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 689 20 41 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 689 21 41 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 682 20 57 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 682 21 57 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 689 20 42 689 21 42 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 689 20 41 689 21 41 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 682 20 56 682 21 56 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 682 20 57 682 21 57 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 689 20 41 minecraft:acacia_trapdoor[open=true,facing=north,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 689 21 41 minecraft:acacia_trapdoor[open=true,facing=north,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 682 20 57 minecraft:acacia_trapdoor[open=true,facing=south,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 682 21 57 minecraft:acacia_trapdoor[open=true,facing=south,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 689 20 42 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 689 21 42 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 682 20 56 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 682 21 56 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

scoreboard players reset #temp Searched