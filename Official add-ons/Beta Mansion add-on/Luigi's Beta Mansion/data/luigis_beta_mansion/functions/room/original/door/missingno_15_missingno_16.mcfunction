execute if block 741 11 -43 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 741 11 -38 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 741 11 -44 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 741 12 -44 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 741 11 -37 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 741 12 -37 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 741 11 -43 741 12 -43 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 741 11 -44 741 12 -44 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 741 11 -38 741 12 -38 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 741 11 -37 741 12 -37 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 741 11 -44 minecraft:acacia_trapdoor[open=true,facing=north,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 741 12 -44 minecraft:acacia_trapdoor[open=true,facing=north,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 741 11 -37 minecraft:acacia_trapdoor[open=true,facing=south,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 741 12 -37 minecraft:acacia_trapdoor[open=true,facing=south,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 741 11 -43 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 741 12 -43 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 741 11 -38 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 741 12 -38 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

scoreboard players reset #temp Searched