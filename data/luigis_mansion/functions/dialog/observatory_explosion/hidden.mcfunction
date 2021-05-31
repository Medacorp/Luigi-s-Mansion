scoreboard players add @s Time 1
execute if entity @s[scores={Time=1}] run setblock 661 111 67 minecraft:magma_block
execute if entity @s[scores={Time=1}] run setblock 661 112 66 minecraft:magma_block
execute if entity @s[scores={Time=1}] run setblock 660 111 66 minecraft:magma_block
execute if entity @s[scores={Time=1}] run setblock 660 112 67 minecraft:magma_block
execute if entity @s[scores={Time=20}] run fill 660 111 67 661 112 66 minecraft:magma_block
execute if entity @s[scores={Time=40}] run particle minecraft:explosion 661.0 112 67.0 1 1 1 0 30
execute if entity @s[scores={Time=45}] run particle minecraft:explosion 661.0 112 67.0 1 1 1 0 30
execute if entity @s[scores={Time=50}] run particle minecraft:explosion 661.0 112 67.0 1 1 1 0 30
execute if entity @s[scores={Time=55}] run particle minecraft:explosion 661.0 112 67.0 1 1 1 0 30
execute if entity @s[scores={Time=60}] run particle minecraft:explosion 661.0 112 67.0 1 1 1 0 30
execute if entity @s[scores={Time=60}] run fill 660 111 67 661 112 66 minecraft:air
execute if entity @s[scores={Time=65}] run particle minecraft:explosion 661.0 112 67.0 1 1 1 0 30
execute if entity @s[scores={Time=70}] run particle minecraft:explosion 661.0 112 67.0 1 1 1 0 30
execute if entity @s[scores={Time=75}] run particle minecraft:explosion 661.0 112 67.0 1 1 1 0 30
execute if entity @s[scores={Time=80}] run particle minecraft:explosion 661.0 112 67.0 1 1 1 0 30
execute if entity @s[scores={Time=85}] run particle minecraft:explosion 661.0 112 67.0 1 1 1 0 30
execute if entity @s[scores={Time=90}] run particle minecraft:explosion 661.0 112 67.0 1 1 1 0 30
execute if entity @s[scores={Time=95}] run particle minecraft:explosion 661.0 112 67.0 1 1 1 0 30
execute if entity @s[scores={Time=100}] run particle minecraft:explosion 661.0 112 67.0 1 1 1 0 30
execute if entity @s[scores={Time=120}] run function luigis_mansion:room/hidden/observatory/clear
teleport @s[x=677.5,y=111,z=48.5,distance=..1] ~ ~ ~-1
tag @s[scores={Time=120}] remove observatory_explosion
scoreboard players reset @s[scores={Time=120}] Time