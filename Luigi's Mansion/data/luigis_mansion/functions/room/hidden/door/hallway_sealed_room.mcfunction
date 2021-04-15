execute if block 692 111 25 minecraft:warped_door[open=true] run scoreboard players set #temp Searched -1
execute if block 692 111 24 minecraft:warped_door[open=true] run scoreboard players set #temp Searched -1
execute if block 692 111 25 minecraft:warped_door[powered=false] run scoreboard players set #temp Searched -1
execute if block 692 111 24 minecraft:warped_door[powered=false] run scoreboard players set #temp Searched -1
execute if block 692 111 26 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 692 112 26 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 692 111 23 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 692 112 23 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 692 111 26 692 112 23 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 692 111 26 692 112 23 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 692 111 26 minecraft:acacia_trapdoor[open=true,facing=south,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 692 112 26 minecraft:acacia_trapdoor[open=true,facing=south,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 692 111 23 minecraft:acacia_trapdoor[open=true,facing=north,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 692 112 23 minecraft:acacia_trapdoor[open=true,facing=north,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 692 111 25 minecraft:warped_door[open=false,facing=north,half=lower,hinge=right,powered=true]
execute if score #temp Searched matches -1 run setblock 692 112 25 minecraft:warped_door[open=false,facing=north,half=upper,hinge=right,powered=true]
execute if score #temp Searched matches -1 run setblock 692 111 24 minecraft:warped_door[open=false,facing=south,half=lower,hinge=left,powered=true]
execute if score #temp Searched matches -1 run setblock 692 112 24 minecraft:warped_door[open=false,facing=south,half=upper,hinge=left,powered=true]

scoreboard players reset #temp Searched