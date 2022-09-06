execute if block 725 29 -13 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 682 120 -13 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 726 29 -13 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 726 30 -13 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 681 120 -13 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 681 121 -13 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 725 29 -13 725 30 -13 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 726 29 -13 726 30 -13 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 682 120 -13 682 121 -13 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 681 120 -13 681 121 -13 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 726 29 -13 minecraft:acacia_trapdoor[open=true,facing=east,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 726 30 -13 minecraft:acacia_trapdoor[open=true,facing=east,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 681 120 -13 minecraft:acacia_trapdoor[open=true,facing=west,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 681 121 -13 minecraft:acacia_trapdoor[open=true,facing=west,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 725 29 -13 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 725 30 -13 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 682 120 -13 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 682 121 -13 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]

scoreboard players reset #temp Searched