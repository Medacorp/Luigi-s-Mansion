spreadplayers ~ ~ 1 100 false @s
execute at @s run summon minecraft:lightning_bolt ~ ~ ~
execute at @s run scoreboard players set @a[distance=..6,scores={Invulnerable=0..1}] Invulnerable 20
tag @s add dead