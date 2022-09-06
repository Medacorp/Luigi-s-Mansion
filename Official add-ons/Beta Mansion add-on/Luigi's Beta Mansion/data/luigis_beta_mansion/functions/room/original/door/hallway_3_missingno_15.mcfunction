execute if block 735 11 -32 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 719 11 -28 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 736 11 -32 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 736 12 -32 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 718 11 -28 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 718 12 -28 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 735 11 -32 735 12 -32 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 736 11 -32 736 12 -32 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 719 11 -28 719 12 -28 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 718 11 -28 718 12 -28 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 736 11 -32 minecraft:acacia_trapdoor[open=true,facing=east,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 736 12 -32 minecraft:acacia_trapdoor[open=true,facing=east,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 718 11 -28 minecraft:acacia_trapdoor[open=true,facing=west,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 718 12 -28 minecraft:acacia_trapdoor[open=true,facing=west,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 735 11 -32 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 735 12 -32 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 719 11 -28 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 719 12 -28 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]

scoreboard players reset #temp Searched