execute if block 738 11 61 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 719 11 65 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 739 11 61 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 739 12 61 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 718 11 65 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 718 12 65 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 738 11 61 738 12 61 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 739 11 61 739 12 61 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 719 11 65 719 12 65 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 718 11 65 718 12 65 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 739 11 61 minecraft:acacia_trapdoor[open=true,facing=east,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 739 12 61 minecraft:acacia_trapdoor[open=true,facing=east,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 718 11 65 minecraft:acacia_trapdoor[open=true,facing=west,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 718 12 65 minecraft:acacia_trapdoor[open=true,facing=west,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 738 11 61 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 738 12 61 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 719 11 65 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 719 12 65 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]

scoreboard players reset #temp Searched