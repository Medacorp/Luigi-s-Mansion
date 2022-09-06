execute if block 716 20 -16 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 739 20 -1 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 716 20 -17 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 716 21 -17 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 739 20 0 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 739 21 0 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 716 20 -16 716 21 -16 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 716 20 -17 716 21 -17 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 739 20 -1 739 21 -1 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 739 20 0 739 21 0 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 716 20 -17 minecraft:acacia_trapdoor[open=true,facing=north,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 716 21 -17 minecraft:acacia_trapdoor[open=true,facing=north,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 739 20 0 minecraft:acacia_trapdoor[open=true,facing=south,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 739 21 0 minecraft:acacia_trapdoor[open=true,facing=south,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 716 20 -16 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 716 21 -16 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 739 20 -1 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 739 21 -1 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

scoreboard players reset #temp Searched