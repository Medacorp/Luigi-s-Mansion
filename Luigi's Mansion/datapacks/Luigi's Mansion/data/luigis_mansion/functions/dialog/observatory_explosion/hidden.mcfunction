scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] run setblock 629 20 109 minecraft:magma_block
execute if entity @s[scores={Dialog=1}] run setblock 629 21 108 minecraft:magma_block
execute if entity @s[scores={Dialog=1}] run setblock 628 20 108 minecraft:magma_block
execute if entity @s[scores={Dialog=1}] run setblock 628 21 109 minecraft:magma_block
execute if entity @s[scores={Dialog=20}] run fill 628 20 109 629 21 108 minecraft:magma_block
execute if entity @s[scores={Dialog=40}] run particle minecraft:explosion 629.0 21 109.0 1 1 1 0 30
execute if entity @s[scores={Dialog=45}] run particle minecraft:explosion 629.0 21 109.0 1 1 1 0 30
execute if entity @s[scores={Dialog=50}] run particle minecraft:explosion 629.0 21 109.0 1 1 1 0 30
execute if entity @s[scores={Dialog=55}] run particle minecraft:explosion 629.0 21 109.0 1 1 1 0 30
execute if entity @s[scores={Dialog=60}] run particle minecraft:explosion 629.0 21 109.0 1 1 1 0 30
execute if entity @s[scores={Dialog=60}] run fill 628 20 109 629 21 108 minecraft:air
execute if entity @s[scores={Dialog=65}] run particle minecraft:explosion 629.0 21 109.0 1 1 1 0 30
execute if entity @s[scores={Dialog=70}] run particle minecraft:explosion 629.0 21 109.0 1 1 1 0 30
execute if entity @s[scores={Dialog=75}] run particle minecraft:explosion 629.0 21 109.0 1 1 1 0 30
execute if entity @s[scores={Dialog=80}] run particle minecraft:explosion 629.0 21 109.0 1 1 1 0 30
execute if entity @s[scores={Dialog=85}] run particle minecraft:explosion 629.0 21 109.0 1 1 1 0 30
execute if entity @s[scores={Dialog=90}] run particle minecraft:explosion 629.0 21 109.0 1 1 1 0 30
execute if entity @s[scores={Dialog=95}] run particle minecraft:explosion 629.0 21 109.0 1 1 1 0 30
execute if entity @s[scores={Dialog=100}] run particle minecraft:explosion 629.0 21 109.0 1 1 1 0 30
execute if entity @s[scores={Dialog=120}] run function luigis_mansion:room/hidden/observatory/clear
teleport @s[x=645.5,y=20,z=90.5,distance=..1] ~ ~ ~1
tag @s[scores={Dialog=120}] remove observatory_explosion
scoreboard players set @s[scores={Dialog=120}] Dialog 0