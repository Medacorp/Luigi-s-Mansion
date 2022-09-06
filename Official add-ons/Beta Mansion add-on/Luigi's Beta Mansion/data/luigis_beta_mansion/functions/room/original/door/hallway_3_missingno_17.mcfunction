execute if block 716 11 24 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 716 11 58 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 716 11 23 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 716 12 23 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 716 11 59 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 716 12 59 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 716 11 24 716 12 24 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 716 11 23 716 12 23 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 716 11 58 716 12 58 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 716 11 59 716 12 59 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 716 11 23 minecraft:acacia_trapdoor[open=true,facing=north,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 716 12 23 minecraft:acacia_trapdoor[open=true,facing=north,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 716 11 59 minecraft:acacia_trapdoor[open=true,facing=south,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 716 12 59 minecraft:acacia_trapdoor[open=true,facing=south,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 716 11 24 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 716 12 24 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 716 11 58 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 716 12 58 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

scoreboard players reset #temp Searched