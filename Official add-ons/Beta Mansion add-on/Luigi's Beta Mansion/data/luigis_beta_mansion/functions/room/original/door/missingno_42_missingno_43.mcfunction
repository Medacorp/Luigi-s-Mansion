execute if block 741 2 -43 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 726 2 -21 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 741 2 -44 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 741 3 -44 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 726 2 -20 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 726 3 -20 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 741 2 -43 741 3 -43 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 741 2 -44 741 3 -44 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 726 2 -21 726 3 -21 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 726 2 -20 726 3 -20 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 741 2 -44 minecraft:acacia_trapdoor[open=true,facing=north,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 741 3 -44 minecraft:acacia_trapdoor[open=true,facing=north,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 726 2 -20 minecraft:acacia_trapdoor[open=true,facing=south,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 726 3 -20 minecraft:acacia_trapdoor[open=true,facing=south,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 741 2 -43 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 741 3 -43 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 726 2 -21 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 726 3 -21 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

scoreboard players reset #temp Searched