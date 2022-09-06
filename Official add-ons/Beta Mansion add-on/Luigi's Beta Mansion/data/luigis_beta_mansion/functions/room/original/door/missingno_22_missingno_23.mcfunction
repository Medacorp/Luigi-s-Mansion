execute if block 638 11 -58 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 653 102 -38 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 639 11 -58 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 639 12 -58 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 652 102 -38 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 652 103 -38 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 638 11 -58 638 12 -58 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 639 11 -58 639 12 -58 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 653 102 -38 653 103 -38 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 652 102 -38 652 103 -38 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 639 11 -58 minecraft:acacia_trapdoor[open=true,facing=east,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 639 12 -58 minecraft:acacia_trapdoor[open=true,facing=east,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 652 102 -38 minecraft:acacia_trapdoor[open=true,facing=west,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 652 103 -38 minecraft:acacia_trapdoor[open=true,facing=west,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 638 11 -58 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 638 12 -58 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 653 102 -38 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 653 103 -38 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]

scoreboard players reset #temp Searched