execute if block 703 20 72 minecraft:warped_door[open=true] run scoreboard players set #temp Searched -1
execute if block 706 20 37 minecraft:warped_door[open=true] run scoreboard players set #temp Searched -1
execute if block 703 20 72 minecraft:warped_door[powered=false] run scoreboard players set #temp Searched -1
execute if block 706 20 37 minecraft:warped_door[powered=false] run scoreboard players set #temp Searched -1
execute if block 703 20 73 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 703 21 73 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 706 20 36 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 706 21 36 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 706 20 37 706 21 37 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 703 20 72 703 21 72 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 685 20 72 685 21 72 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 706 20 36 706 21 36 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 703 20 73 703 21 73 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 685 20 73 685 21 73 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 703 20 72 minecraft:acacia_trapdoor[open=true,facing=south,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 703 21 72 minecraft:acacia_trapdoor[open=true,facing=south,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 685 20 72 minecraft:acacia_trapdoor[open=true,facing=south,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 685 21 72 minecraft:acacia_trapdoor[open=true,facing=south,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 706 20 36 minecraft:acacia_trapdoor[open=true,facing=north,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 706 21 36 minecraft:acacia_trapdoor[open=true,facing=north,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 703 20 73 minecraft:warped_door[open=false,facing=north,half=lower,hinge=right,powered=true]
execute if score #temp Searched matches -1 run setblock 703 21 73 minecraft:warped_door[open=false,facing=north,half=upper,hinge=right,powered=true]
execute if score #temp Searched matches -1 run setblock 685 20 73 minecraft:warped_door[open=false,facing=north,half=lower,hinge=left,powered=true]
execute if score #temp Searched matches -1 run setblock 685 21 73 minecraft:warped_door[open=false,facing=north,half=upper,hinge=left,powered=true]
execute if score #temp Searched matches -1 run setblock 706 20 37 minecraft:warped_door[open=false,facing=south,half=lower,hinge=left,powered=true]
execute if score #temp Searched matches -1 run setblock 706 21 37 minecraft:warped_door[open=false,facing=south,half=upper,hinge=left,powered=true]

scoreboard players reset #temp Searched