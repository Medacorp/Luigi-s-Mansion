execute if block 705 11 -38 minecraft:warped_door[open=true] run scoreboard players set #temp Searched -1
execute if block 706 11 -22 minecraft:warped_door[open=true] run scoreboard players set #temp Searched -1
execute if block 705 11 -38 minecraft:warped_door[powered=false] run scoreboard players set #temp Searched -1
execute if block 706 11 -22 minecraft:warped_door[powered=false] run scoreboard players set #temp Searched -1
execute if block 705 11 -39 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 705 12 -39 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 706 11 -21 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 706 12 -21 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 705 11 -38 705 12 -38 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 705 11 -39 705 12 -39 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 706 11 -22 706 12 -22 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 706 11 -21 706 12 -21 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 705 11 -39 minecraft:acacia_trapdoor[open=true,facing=north,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 705 12 -39 minecraft:acacia_trapdoor[open=true,facing=north,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 706 11 -21 minecraft:acacia_trapdoor[open=true,facing=south,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 706 12 -21 minecraft:acacia_trapdoor[open=true,facing=south,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 705 11 -38 minecraft:warped_door[open=false,facing=south,half=lower,hinge=left,powered=true]
execute if score #temp Searched matches -1 run setblock 705 12 -38 minecraft:warped_door[open=false,facing=south,half=upper,hinge=left,powered=true]
execute if score #temp Searched matches -1 run setblock 706 11 -22 minecraft:warped_door[open=false,facing=north,half=lower,hinge=right,powered=true]
execute if score #temp Searched matches -1 run setblock 706 12 -22 minecraft:warped_door[open=false,facing=north,half=upper,hinge=right,powered=true]

scoreboard players reset #temp Searched