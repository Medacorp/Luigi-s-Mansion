execute if block 684 20 75 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 679 111 38 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 684 20 74 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 684 21 74 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 679 111 39 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 679 112 39 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 684 20 75 684 21 75 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 684 20 74 684 21 74 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 679 111 38 679 112 38 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 679 111 39 679 112 39 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 684 20 74 minecraft:acacia_trapdoor[open=true,facing=north,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 684 21 74 minecraft:acacia_trapdoor[open=true,facing=north,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 679 111 39 minecraft:acacia_trapdoor[open=true,facing=south,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 679 112 39 minecraft:acacia_trapdoor[open=true,facing=south,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 684 20 75 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 684 21 75 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 679 111 38 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 679 112 38 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

scoreboard players reset #temp Searched