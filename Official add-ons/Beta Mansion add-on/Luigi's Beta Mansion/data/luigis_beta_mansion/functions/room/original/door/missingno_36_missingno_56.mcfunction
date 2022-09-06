execute if block 699 29 -56 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 736 29 -16 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 699 29 -57 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 699 30 -57 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 736 29 -15 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 736 30 -15 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 699 29 -56 699 30 -56 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 699 29 -57 699 30 -57 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 736 29 -16 736 30 -16 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 736 29 -15 736 30 -15 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 699 29 -57 minecraft:acacia_trapdoor[open=true,facing=north,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 699 30 -57 minecraft:acacia_trapdoor[open=true,facing=north,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 736 29 -15 minecraft:acacia_trapdoor[open=true,facing=south,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 736 30 -15 minecraft:acacia_trapdoor[open=true,facing=south,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 699 29 -56 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 699 30 -56 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 736 29 -16 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 736 30 -16 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

scoreboard players reset #temp Searched