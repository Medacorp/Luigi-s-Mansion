execute if block 735 29 47 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 708 29 57 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 735 29 46 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 735 30 46 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 708 29 58 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 708 30 58 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 735 29 47 735 30 47 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 735 29 46 735 30 46 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 708 29 57 708 30 57 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 708 29 58 708 30 58 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 735 29 46 minecraft:acacia_trapdoor[open=true,facing=north,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 735 30 46 minecraft:acacia_trapdoor[open=true,facing=north,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 708 29 58 minecraft:acacia_trapdoor[open=true,facing=south,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 708 30 58 minecraft:acacia_trapdoor[open=true,facing=south,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 735 29 47 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 735 30 47 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 708 29 57 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 708 30 57 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

scoreboard players reset #temp Searched