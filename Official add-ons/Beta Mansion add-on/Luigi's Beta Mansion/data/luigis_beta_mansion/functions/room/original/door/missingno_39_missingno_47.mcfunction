execute if block 694 120 24 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 735 29 41 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 694 120 23 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 694 121 23 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 735 29 42 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 735 30 42 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 694 120 24 694 121 24 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 694 120 23 694 121 23 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 735 29 41 735 30 41 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 735 29 42 735 30 42 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 694 120 23 minecraft:acacia_trapdoor[open=true,facing=north,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 694 121 23 minecraft:acacia_trapdoor[open=true,facing=north,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 735 29 42 minecraft:acacia_trapdoor[open=true,facing=south,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 735 30 42 minecraft:acacia_trapdoor[open=true,facing=south,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 694 120 24 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 694 121 24 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 735 29 41 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 735 30 41 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

scoreboard players reset #temp Searched