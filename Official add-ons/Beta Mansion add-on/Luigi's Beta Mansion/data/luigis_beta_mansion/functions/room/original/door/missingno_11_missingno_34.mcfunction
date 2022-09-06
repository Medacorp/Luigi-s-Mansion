execute if block 733 29 -39 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 719 29 -34 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 734 29 -39 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 734 30 -39 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 718 29 -34 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 718 30 -34 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 733 29 -39 733 30 -39 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 734 29 -39 734 30 -39 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 719 29 -34 719 30 -34 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 718 29 -34 718 30 -34 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 734 29 -39 minecraft:acacia_trapdoor[open=true,facing=east,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 734 30 -39 minecraft:acacia_trapdoor[open=true,facing=east,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 718 29 -34 minecraft:acacia_trapdoor[open=true,facing=west,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 718 30 -34 minecraft:acacia_trapdoor[open=true,facing=west,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 733 29 -39 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 733 30 -39 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 719 29 -34 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 719 30 -34 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]

scoreboard players reset #temp Searched