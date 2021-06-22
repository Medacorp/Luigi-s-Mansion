execute if block 772 77 -15 minecraft:birch_door[open=true] run scoreboard players set #temp Searched 0
execute if block 772 77 -16 minecraft:birch_door[open=true] run scoreboard players set #temp Searched 0
execute if block 772 77 -15 minecraft:birch_door[powered=false] run scoreboard players set #temp Searched 0
execute if block 772 77 -16 minecraft:birch_door[powered=false] run scoreboard players set #temp Searched 0

execute if block 772 77 -15 minecraft:birch_door[open=true] positioned 772 77 -15 run function luigis_mansion:blocks/closed_door/no_animation
execute if block 772 77 -16 minecraft:birch_door[open=true] positioned 772 77 -16 run function luigis_mansion:blocks/closed_door/no_animation

execute if score #temp Searched matches 0 run fill 772 77 -16 772 78 -15 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 0 run setblock 772 77 -15 minecraft:birch_door[open=false,facing=north,half=lower,hinge=right,powered=true]
execute if score #temp Searched matches 0 run setblock 772 78 -15 minecraft:birch_door[open=false,facing=north,half=upper,hinge=right,powered=true]
execute if score #temp Searched matches 0 run setblock 772 77 -16 minecraft:birch_door[open=false,facing=south,half=lower,hinge=left,powered=true]
execute if score #temp Searched matches 0 run setblock 772 78 -16 minecraft:birch_door[open=false,facing=south,half=upper,hinge=left,powered=true]

scoreboard players reset #temp Searched