execute if block 713 11 65 minecraft:warped_door[open=true] run scoreboard players set #temp Searched -1
execute if block 710 11 80 minecraft:warped_door[open=true] run scoreboard players set #temp Searched -1
execute if block 713 11 65 minecraft:warped_door[powered=false] run scoreboard players set #temp Searched -1
execute if block 710 11 80 minecraft:warped_door[powered=false] run scoreboard players set #temp Searched -1
execute if block 714 11 65 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 714 12 65 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 709 11 80 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 709 12 80 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 713 11 65 713 12 65 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 714 11 65 714 12 65 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 710 11 80 710 12 80 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 709 11 80 709 12 80 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 714 11 65 minecraft:acacia_trapdoor[open=true,facing=east,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 714 12 65 minecraft:acacia_trapdoor[open=true,facing=east,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 709 11 80 minecraft:acacia_trapdoor[open=true,facing=west,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 709 12 80 minecraft:acacia_trapdoor[open=true,facing=west,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 713 11 65 minecraft:warped_door[open=false,facing=west,half=lower,hinge=right,powered=true]
execute if score #temp Searched matches -1 run setblock 713 12 65 minecraft:warped_door[open=false,facing=west,half=upper,hinge=right,powered=true]
execute if score #temp Searched matches -1 run setblock 710 11 80 minecraft:warped_door[open=false,facing=east,half=lower,hinge=left,powered=true]
execute if score #temp Searched matches -1 run setblock 710 12 80 minecraft:warped_door[open=false,facing=east,half=upper,hinge=left,powered=true]

scoreboard players reset #temp Searched