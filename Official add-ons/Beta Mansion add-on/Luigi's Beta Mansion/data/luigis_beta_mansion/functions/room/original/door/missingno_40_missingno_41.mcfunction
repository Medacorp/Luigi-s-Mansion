execute if block 749 29 34 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 752 29 41 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 749 29 33 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 749 30 33 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 752 29 42 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 752 30 42 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 749 29 34 749 30 34 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 749 29 33 749 30 33 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 752 29 41 752 30 41 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 752 29 42 752 30 42 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 749 29 33 minecraft:acacia_trapdoor[open=true,facing=north,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 749 30 33 minecraft:acacia_trapdoor[open=true,facing=north,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 752 29 42 minecraft:acacia_trapdoor[open=true,facing=south,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 752 30 42 minecraft:acacia_trapdoor[open=true,facing=south,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 749 29 34 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 749 30 34 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 752 29 41 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 752 30 41 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

scoreboard players reset #temp Searched