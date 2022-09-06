execute if block 735 2 -47 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 719 2 -47 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 736 2 -47 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 736 3 -47 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 718 2 -47 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 718 3 -47 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 735 2 -47 735 3 -47 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 736 2 -47 736 3 -47 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 719 2 -47 719 3 -47 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 718 2 -47 718 3 -47 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 736 2 -47 minecraft:acacia_trapdoor[open=true,facing=east,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 736 3 -47 minecraft:acacia_trapdoor[open=true,facing=east,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 718 2 -47 minecraft:acacia_trapdoor[open=true,facing=west,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 718 3 -47 minecraft:acacia_trapdoor[open=true,facing=west,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 735 2 -47 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 735 3 -47 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 719 2 -47 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 719 3 -47 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]

scoreboard players reset #temp Searched