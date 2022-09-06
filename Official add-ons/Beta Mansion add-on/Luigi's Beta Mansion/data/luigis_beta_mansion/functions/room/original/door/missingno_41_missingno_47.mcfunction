execute if block 737 29 6 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 698 120 -4 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 738 29 6 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 738 30 6 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 697 120 -4 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 697 121 -4 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 737 29 6 737 30 6 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 738 29 6 738 30 6 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 698 120 -4 698 121 -4 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 697 120 -4 697 121 -4 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 738 29 6 minecraft:acacia_trapdoor[open=true,facing=east,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 738 30 6 minecraft:acacia_trapdoor[open=true,facing=east,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 697 120 -4 minecraft:acacia_trapdoor[open=true,facing=west,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 697 121 -4 minecraft:acacia_trapdoor[open=true,facing=west,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 737 29 6 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 737 30 6 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 698 120 -4 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 698 121 -4 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]

scoreboard players reset #temp Searched