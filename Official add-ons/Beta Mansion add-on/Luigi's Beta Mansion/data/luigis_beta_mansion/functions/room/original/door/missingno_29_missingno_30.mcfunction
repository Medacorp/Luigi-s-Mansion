execute if block 645 20 -73 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 666 20 -92 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 645 20 -74 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 645 21 -74 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 666 20 -91 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 666 21 -91 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 645 20 -73 645 21 -73 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 645 20 -74 645 21 -74 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 666 20 -92 666 21 -92 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 666 20 -91 666 21 -91 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 645 20 -74 minecraft:acacia_trapdoor[open=true,facing=north,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 645 21 -74 minecraft:acacia_trapdoor[open=true,facing=north,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 666 20 -91 minecraft:acacia_trapdoor[open=true,facing=south,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 666 21 -91 minecraft:acacia_trapdoor[open=true,facing=south,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 645 20 -73 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 645 21 -73 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 666 20 -92 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 666 21 -92 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

scoreboard players reset #temp Searched