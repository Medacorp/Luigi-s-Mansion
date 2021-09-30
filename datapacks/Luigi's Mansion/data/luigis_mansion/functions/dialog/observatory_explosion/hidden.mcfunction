scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Time 1
execute if entity @s[scores={Time=1}] run setblock 629 20 109 minecraft:magma_block
execute if entity @s[scores={Time=1}] run setblock 629 21 108 minecraft:magma_block
execute if entity @s[scores={Time=1}] run setblock 628 20 108 minecraft:magma_block
execute if entity @s[scores={Time=1}] run setblock 628 21 109 minecraft:magma_block
execute if entity @s[scores={Time=20}] run fill 628 20 109 629 21 108 minecraft:magma_block
execute if entity @s[scores={Time=40}] run particle minecraft:explosion 629.0 21 109.0 1 1 1 0 30
execute if entity @s[scores={Time=45}] run particle minecraft:explosion 629.0 21 109.0 1 1 1 0 30
execute if entity @s[scores={Time=50}] run particle minecraft:explosion 629.0 21 109.0 1 1 1 0 30
execute if entity @s[scores={Time=55}] run particle minecraft:explosion 629.0 21 109.0 1 1 1 0 30
execute if entity @s[scores={Time=60}] run particle minecraft:explosion 629.0 21 109.0 1 1 1 0 30
execute if entity @s[scores={Time=60}] run fill 628 20 109 629 21 108 minecraft:air
execute if entity @s[scores={Time=65}] run particle minecraft:explosion 629.0 21 109.0 1 1 1 0 30
execute if entity @s[scores={Time=70}] run particle minecraft:explosion 629.0 21 109.0 1 1 1 0 30
execute if entity @s[scores={Time=75}] run particle minecraft:explosion 629.0 21 109.0 1 1 1 0 30
execute if entity @s[scores={Time=80}] run particle minecraft:explosion 629.0 21 109.0 1 1 1 0 30
execute if entity @s[scores={Time=85}] run particle minecraft:explosion 629.0 21 109.0 1 1 1 0 30
execute if entity @s[scores={Time=90}] run particle minecraft:explosion 629.0 21 109.0 1 1 1 0 30
execute if entity @s[scores={Time=95}] run particle minecraft:explosion 629.0 21 109.0 1 1 1 0 30
execute if entity @s[scores={Time=100}] run particle minecraft:explosion 629.0 21 109.0 1 1 1 0 30
execute if entity @s[scores={Time=120}] run function luigis_mansion:room/hidden/observatory/clear
teleport @s[x=645.5,y=20,z=90.5,distance=..1] ~ ~ ~1
tag @s[scores={Time=120}] remove observatory_explosion
scoreboard players reset @s[scores={Time=120}] Time