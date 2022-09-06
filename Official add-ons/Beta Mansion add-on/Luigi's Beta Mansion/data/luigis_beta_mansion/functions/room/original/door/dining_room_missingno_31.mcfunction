execute if block 698 11 52 minecraft:warped_door[open=true] run scoreboard players set #temp Searched -1
execute if block 687 11 73 minecraft:warped_door[open=true] run scoreboard players set #temp Searched -1
execute if block 698 11 52 minecraft:warped_door[powered=false] run scoreboard players set #temp Searched -1
execute if block 687 11 73 minecraft:warped_door[powered=false] run scoreboard players set #temp Searched -1
execute if block 699 11 52 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 699 12 52 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 686 11 73 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 686 12 73 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 698 11 52 698 12 52 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 699 11 52 699 12 52 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 687 11 73 687 12 73 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 686 11 73 686 12 73 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 699 11 52 minecraft:acacia_trapdoor[open=true,facing=east,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 699 12 52 minecraft:acacia_trapdoor[open=true,facing=east,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 686 11 73 minecraft:acacia_trapdoor[open=true,facing=west,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 686 12 73 minecraft:acacia_trapdoor[open=true,facing=west,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 698 11 52 minecraft:warped_door[open=false,facing=west,half=lower,hinge=right,powered=true]
execute if score #temp Searched matches -1 run setblock 698 12 52 minecraft:warped_door[open=false,facing=west,half=upper,hinge=right,powered=true]
execute if score #temp Searched matches -1 run setblock 687 11 73 minecraft:warped_door[open=false,facing=east,half=lower,hinge=left,powered=true]
execute if score #temp Searched matches -1 run setblock 687 12 73 minecraft:warped_door[open=false,facing=east,half=upper,hinge=left,powered=true]

scoreboard players reset #temp Searched