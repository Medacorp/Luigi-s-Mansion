execute if block 735 20 -34 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 719 20 -30 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 736 20 -34 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 736 21 -34 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 718 20 -30 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 718 21 -30 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 735 20 -34 735 21 -34 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 736 20 -34 736 21 -34 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 719 20 -30 719 21 -30 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 718 20 -30 718 21 -30 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 736 20 -34 minecraft:acacia_trapdoor[open=true,facing=east,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 736 21 -34 minecraft:acacia_trapdoor[open=true,facing=east,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 718 20 -30 minecraft:acacia_trapdoor[open=true,facing=west,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 718 21 -30 minecraft:acacia_trapdoor[open=true,facing=west,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 735 20 -34 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 735 21 -34 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 719 20 -30 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 719 21 -30 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]

scoreboard players reset #temp Searched