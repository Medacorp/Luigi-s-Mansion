execute if block 736 29 -11 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 694 120 -9 minecraft:dark_oak_door[open=true] run scoreboard players set #temp Searched -1
execute if block 736 29 -11 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 736 30 -11 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 694 120 -8 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 694 121 -8 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 736 29 -10 736 30 -10 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 736 29 -11 736 30 -11 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 694 120 -9 694 121 -9 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 694 120 -8 694 121 -8 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 736 29 -11 minecraft:acacia_trapdoor[open=true,facing=north,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 736 30 -11 minecraft:acacia_trapdoor[open=true,facing=north,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 694 120 -8 minecraft:acacia_trapdoor[open=true,facing=south,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 694 121 -8 minecraft:acacia_trapdoor[open=true,facing=south,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 736 29 -10 minecraft:dark_oak_door[open=false,facing=south,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 736 30 -10 minecraft:dark_oak_door[open=false,facing=south,half=upper,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 694 120 -9 minecraft:dark_oak_door[open=false,facing=north,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 694 121 -9 minecraft:dark_oak_door[open=false,facing=north,half=upper,hinge=right,powered=false]

scoreboard players reset #temp Searched