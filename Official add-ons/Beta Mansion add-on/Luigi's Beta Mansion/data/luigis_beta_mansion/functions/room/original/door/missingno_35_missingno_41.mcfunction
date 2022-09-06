execute if block 753 29 -10 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 749 29 1 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 753 29 -11 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 753 30 -11 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 749 29 2 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 749 30 2 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 753 29 -10 753 30 -10 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 753 29 -11 753 30 -11 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 749 29 1 749 30 1 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 749 29 2 749 30 2 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 753 29 -11 minecraft:acacia_trapdoor[open=true,facing=north,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 753 30 -11 minecraft:acacia_trapdoor[open=true,facing=north,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 749 29 2 minecraft:acacia_trapdoor[open=true,facing=south,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 749 30 2 minecraft:acacia_trapdoor[open=true,facing=south,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 753 29 -10 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 753 30 -10 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 749 29 1 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 749 30 1 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

scoreboard players reset #temp Searched