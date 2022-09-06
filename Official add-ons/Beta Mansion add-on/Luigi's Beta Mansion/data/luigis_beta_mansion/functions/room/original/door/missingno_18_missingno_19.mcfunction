execute if block 743 11 49 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 744 11 54 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 743 11 48 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 743 12 48 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 744 11 55 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 744 12 55 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 743 11 49 743 12 49 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 743 11 48 743 12 48 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 744 11 54 744 12 54 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 744 11 55 744 12 55 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 743 11 48 minecraft:acacia_trapdoor[open=true,facing=north,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 743 12 48 minecraft:acacia_trapdoor[open=true,facing=north,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 744 11 55 minecraft:acacia_trapdoor[open=true,facing=south,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 744 12 55 minecraft:acacia_trapdoor[open=true,facing=south,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 743 11 49 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 743 12 49 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 744 11 54 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 744 12 54 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

scoreboard players reset #temp Searched