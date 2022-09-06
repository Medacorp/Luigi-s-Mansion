execute if block 716 11 -43 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 716 11 -34 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 716 11 -44 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 716 12 -44 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 716 11 -33 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 716 12 -33 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 716 11 -43 716 12 -43 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 716 11 -44 716 12 -44 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 716 11 -34 716 12 -34 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 716 11 -33 716 12 -33 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 716 11 -44 minecraft:acacia_trapdoor[open=true,facing=north,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 716 12 -44 minecraft:acacia_trapdoor[open=true,facing=north,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 716 11 -33 minecraft:acacia_trapdoor[open=true,facing=south,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 716 12 -33 minecraft:acacia_trapdoor[open=true,facing=south,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 716 11 -43 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 716 12 -43 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 716 11 -34 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 716 12 -34 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

scoreboard players reset #temp Searched