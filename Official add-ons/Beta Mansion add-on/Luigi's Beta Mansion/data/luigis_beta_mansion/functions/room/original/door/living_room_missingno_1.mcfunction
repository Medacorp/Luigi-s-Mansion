execute if block 713 20 21 minecraft:warped_door[open=true] run scoreboard players set #temp Searched -1
execute if block 694 20 26 minecraft:warped_door[open=true] run scoreboard players set #temp Searched -1
execute if block 714 20 21 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 714 21 21 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 693 20 26 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1
execute if block 693 21 26 minecraft:acacia_trapdoor[open=false] run scoreboard players set #temp Searched -1

execute if score #temp Searched matches -1 run fill 713 20 21 713 21 21 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 714 20 21 714 21 21 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run fill 694 20 26 694 21 26 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches -1 run fill 693 20 26 693 21 26 minecraft:air replace minecraft:acacia_trapdoor
execute if score #temp Searched matches -1 run setblock 714 20 21 minecraft:acacia_trapdoor[open=true,facing=east,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 714 21 21 minecraft:acacia_trapdoor[open=true,facing=east,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 693 20 26 minecraft:acacia_trapdoor[open=true,facing=west,half=bottom,powered=false]
execute if score #temp Searched matches -1 run setblock 693 21 26 minecraft:acacia_trapdoor[open=true,facing=west,half=top,powered=false]
execute if score #temp Searched matches -1 run setblock 713 20 21 minecraft:warped_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 713 21 21 minecraft:warped_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches -1 run setblock 694 20 26 minecraft:warped_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches -1 run setblock 694 21 26 minecraft:warped_door[open=false,facing=east,half=upper,hinge=left,powered=false]

scoreboard players reset #temp Searched