execute if block 673 20 11 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 654 20 16 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 673 20 10 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 673 21 10 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 654 20 17 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 654 21 17 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 673 20 11 673 21 11 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 673 20 10 673 21 10 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 654 20 16 654 21 16 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 654 20 17 654 21 17 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 673 20 10 minecraft:acacia_trapdoor[open=true,facing=north,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 673 21 10 minecraft:acacia_trapdoor[open=true,facing=north,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 654 20 17 minecraft:acacia_trapdoor[open=true,facing=south,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 654 21 17 minecraft:acacia_trapdoor[open=true,facing=south,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 673 20 11 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 673 21 11 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 654 20 16 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 654 21 16 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

scoreboard players reset #temp Searched