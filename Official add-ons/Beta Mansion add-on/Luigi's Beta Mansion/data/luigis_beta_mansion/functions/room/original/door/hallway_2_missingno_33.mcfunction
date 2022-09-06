execute if block 737 20 44 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 729 20 56 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 738 20 44 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 738 21 44 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 728 20 56 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 728 21 56 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 737 20 44 737 21 44 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 738 20 44 738 21 44 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 729 20 56 729 21 56 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 728 20 56 728 21 56 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 738 20 44 minecraft:acacia_trapdoor[open=true,facing=east,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 738 21 44 minecraft:acacia_trapdoor[open=true,facing=east,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 728 20 56 minecraft:acacia_trapdoor[open=true,facing=west,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 728 21 56 minecraft:acacia_trapdoor[open=true,facing=west,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 737 20 44 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 737 21 44 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 729 20 56 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 729 21 56 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]

scoreboard players reset #temp Searched