execute if block 779 77 16 minecraft:crimson_door[open=true] run scoreboard players set #temp Searched 0
execute if block 778 77 16 minecraft:crimson_door[open=true] run scoreboard players set #temp Searched 0

execute if block 779 77 16 minecraft:crimson_door[open=true] positioned 779 77 16 run function luigis_mansion:blocks/closed_door/no_animation
execute if block 778 77 16 minecraft:crimson_door[open=true] positioned 778 77 16 run function luigis_mansion:blocks/closed_door/no_animation

execute if score #temp Searched matches 0 run fill 778 77 16 779 78 16 minecraft:air replace #minecraft:doors
execute if score #temp Searched matches 0 run setblock 779 77 16 minecraft:crimson_door[open=false,facing=west,half=lower,hinge=right,powered=false]
execute if score #temp Searched matches 0 run setblock 779 78 16 minecraft:crimson_door[open=false,facing=west,half=upper,hinge=right,powered=false]
execute if score #temp Searched matches 0 run setblock 778 77 16 minecraft:crimson_door[open=false,facing=east,half=lower,hinge=left,powered=false]
execute if score #temp Searched matches 0 run setblock 778 78 16 minecraft:crimson_door[open=false,facing=east,half=upper,hinge=left,powered=false]

scoreboard players reset #temp Searched