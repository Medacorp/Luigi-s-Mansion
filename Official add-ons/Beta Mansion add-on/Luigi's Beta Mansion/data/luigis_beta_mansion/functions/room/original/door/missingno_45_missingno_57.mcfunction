execute if block 654 2 -18 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 653 93 -18 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 655 2 -18 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 655 3 -18 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 652 93 -18 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 652 94 -18 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 654 2 -18 654 3 -18 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 655 2 -18 655 3 -18 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 653 93 -18 653 94 -18 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 652 93 -18 652 94 -18 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 655 2 -18 minecraft:acacia_trapdoor[open=true,facing=east,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 655 3 -18 minecraft:acacia_trapdoor[open=true,facing=east,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 652 93 -18 minecraft:acacia_trapdoor[open=true,facing=west,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 652 94 -18 minecraft:acacia_trapdoor[open=true,facing=west,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 654 2 -18 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 654 3 -18 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 653 93 -18 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 653 94 -18 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]

scoreboard players reset #temp Searched