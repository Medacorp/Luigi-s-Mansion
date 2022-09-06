execute if block 681 11 45 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 681 11 65 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 681 11 44 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 681 12 44 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 681 11 66 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 681 12 66 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 681 11 45 681 12 45 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 681 11 44 681 12 44 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 681 11 65 681 12 65 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 681 11 66 681 12 66 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 681 11 44 minecraft:acacia_trapdoor[open=true,facing=north,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 681 12 44 minecraft:acacia_trapdoor[open=true,facing=north,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 681 11 66 minecraft:acacia_trapdoor[open=true,facing=south,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 681 12 66 minecraft:acacia_trapdoor[open=true,facing=south,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 681 11 45 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 681 12 45 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 681 11 65 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 681 12 65 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

scoreboard players reset #temp Searched