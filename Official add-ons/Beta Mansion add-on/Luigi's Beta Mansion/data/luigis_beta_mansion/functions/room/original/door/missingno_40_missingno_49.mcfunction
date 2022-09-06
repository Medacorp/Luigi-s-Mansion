execute if block 752 29 47 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 757 29 55 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 752 29 46 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 752 30 46 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 757 29 56 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 757 30 56 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 752 29 47 752 30 47 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 752 29 46 752 30 46 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 757 29 55 757 30 55 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 757 29 56 757 30 56 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 752 29 46 minecraft:acacia_trapdoor[open=true,facing=north,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 752 30 46 minecraft:acacia_trapdoor[open=true,facing=north,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 757 29 56 minecraft:acacia_trapdoor[open=true,facing=south,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 757 30 56 minecraft:acacia_trapdoor[open=true,facing=south,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 752 29 47 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 752 30 47 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 757 29 55 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 757 30 55 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

scoreboard players reset #temp Searched