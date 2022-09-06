execute if block 703 20 -56 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 706 20 -22 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 703 20 -57 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 703 21 -57 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 706 20 -21 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 706 21 -21 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 703 20 -56 703 21 -56 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 703 20 -57 703 21 -57 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 706 20 -22 706 21 -22 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 706 20 -21 706 21 -21 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 703 20 -57 minecraft:acacia_trapdoor[open=true,facing=north,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 703 21 -57 minecraft:acacia_trapdoor[open=true,facing=north,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 706 20 -21 minecraft:acacia_trapdoor[open=true,facing=south,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 706 21 -21 minecraft:acacia_trapdoor[open=true,facing=south,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 703 20 -56 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 703 21 -56 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 706 20 -22 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 706 21 -22 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

scoreboard players reset #temp Searched