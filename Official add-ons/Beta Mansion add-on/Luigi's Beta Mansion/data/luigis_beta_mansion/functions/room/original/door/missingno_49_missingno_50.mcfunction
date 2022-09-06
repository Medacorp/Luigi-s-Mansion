execute if block 745 29 58 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 712 29 60 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 746 29 58 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 746 30 58 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 711 29 60 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 711 30 60 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 745 29 58 745 30 58 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 746 29 58 746 30 58 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 712 29 60 712 30 60 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 711 29 60 711 30 60 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 746 29 58 minecraft:acacia_trapdoor[open=true,facing=east,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 746 30 58 minecraft:acacia_trapdoor[open=true,facing=east,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 711 29 60 minecraft:acacia_trapdoor[open=true,facing=west,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 711 30 60 minecraft:acacia_trapdoor[open=true,facing=west,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 745 29 58 minecraft:dark_oak_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 745 30 58 minecraft:dark_oak_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 712 29 60 minecraft:dark_oak_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 712 30 60 minecraft:dark_oak_door[open=false,facing=east,half=upper,hinge=left,powered=false]

scoreboard players reset #temp Searched