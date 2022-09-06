execute if block 738 29 -35 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 753 29 -16 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 738 29 -36 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 738 30 -36 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 753 29 -15 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 753 30 -15 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 738 29 -35 738 30 -35 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 738 29 -36 738 30 -36 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 753 29 -16 753 30 -16 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 753 29 -15 753 30 -15 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 738 29 -36 minecraft:acacia_trapdoor[open=true,facing=north,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 738 30 -36 minecraft:acacia_trapdoor[open=true,facing=north,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 753 29 -15 minecraft:acacia_trapdoor[open=true,facing=south,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 753 30 -15 minecraft:acacia_trapdoor[open=true,facing=south,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 738 29 -35 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 738 30 -35 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 753 29 -16 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 753 30 -16 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

scoreboard players reset #temp Searched