execute if block 791 77 5 minecraft:crimson_door[open=true] run scoreboard players set #temp Searched 0
execute if block 791 77 4 minecraft:crimson_door[open=true] run scoreboard players set #temp Searched 0
execute if block 791 77 5 minecraft:crimson_door[powered=false] run scoreboard players set #temp Searched 0
execute if block 791 77 4 minecraft:crimson_door[powered=false] run scoreboard players set #temp Searched 0

execute if block 791 77 5 minecraft:crimson_door[open=true] positioned 791 77 5 run function luigis_mansion:blocks/closed_door/no_animation
execute if block 791 77 4 minecraft:crimson_door[open=true] positioned 791 77 4 run function luigis_mansion:blocks/closed_door/no_animation

execute if score #temp Searched matches 0 run fill 791 77 3 791 78 6 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 0 run setblock 791 78 6 minecraft:oak_wall_sign[facing=south]{Text2:'{"translate":"luigis_mansion:location.training_room"}'}
execute if score #temp Searched matches 0 run setblock 791 78 3 minecraft:oak_wall_sign[facing=north]{Text2:'{"translate":"luigis_mansion:location.training_room"}'}
execute if score #temp Searched matches 0 run setblock 791 77 5 minecraft:crimson_door[open=false,facing=north,half=lower,hinge=right,powered=true]
execute if score #temp Searched matches 0 run setblock 791 78 5 minecraft:crimson_door[open=false,facing=north,half=upper,hinge=right,powered=true]
execute if score #temp Searched matches 0 run setblock 791 77 4 minecraft:crimson_door[open=false,facing=south,half=lower,hinge=left,powered=true]
execute if score #temp Searched matches 0 run setblock 791 78 4 minecraft:crimson_door[open=false,facing=south,half=upper,hinge=left,powered=true]

scoreboard players reset #temp Searched