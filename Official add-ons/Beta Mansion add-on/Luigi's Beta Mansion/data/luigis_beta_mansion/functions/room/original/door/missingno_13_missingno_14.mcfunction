execute if block 696 11 -64 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 690 11 -82 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 697 11 -64 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 697 12 -64 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 689 11 -82 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 689 12 -82 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 696 11 -64 696 12 -64 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 697 11 -64 697 12 -64 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 690 11 -82 690 12 -82 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 689 11 -82 689 12 -82 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 697 11 -64 minecraft:acacia_trapdoor[open=true,facing=east,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 697 12 -64 minecraft:acacia_trapdoor[open=true,facing=east,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 689 11 -82 minecraft:acacia_trapdoor[open=true,facing=west,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 689 12 -82 minecraft:acacia_trapdoor[open=true,facing=west,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 696 11 -64 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 696 12 -64 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 690 11 -82 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 690 12 -82 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]

scoreboard players reset #temp Searched