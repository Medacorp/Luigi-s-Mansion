execute positioned as @s unless block ~0.3 ~ ~ #luigis_mansion:all_ignore unless block ~0.3 ~ ~ #minecraft:slabs[type=top] unless block ~0.3 ~ ~ #minecraft:stairs[facing=east,half=top] run teleport @s ~-0.2 ~ ~
execute positioned as @s unless block ~-0.3 ~ ~ #luigis_mansion:all_ignore unless block ~-0.3 ~ ~ #minecraft:slabs[type=top] unless block ~-0.3 ~ ~ #minecraft:stairs[facing=west,half=top] run teleport @s ~0.2 ~ ~
execute positioned as @s unless block ~ ~ ~0.3 #luigis_mansion:all_ignore unless block ~ ~ ~0.3 #minecraft:slabs[type=top] unless block ~ ~ ~0.3 #minecraft:stairs[facing=south,half=top] run teleport @s ~ ~ ~-0.2
execute positioned as @s unless block ~ ~ ~-0.3 #luigis_mansion:all_ignore unless block ~ ~ ~-0.3 #minecraft:slabs[type=top] unless block ~ ~ ~-0.3 #minecraft:stairs[facing=north,half=top] run teleport @s ~ ~ ~0.2
execute positioned as @s if block ~0.3 ~ ~ #minecraft:slabs[type=top] run teleport @s ~ ~-0.5 ~
execute positioned as @s if block ~-0.3 ~ ~ #minecraft:slabs[type=top] run teleport @s ~ ~-0.5 ~
execute positioned as @s if block ~ ~ ~0.3 #minecraft:slabs[type=top] run teleport @s ~ ~-0.5 ~
execute positioned as @s if block ~ ~ ~-0.3 #minecraft:slabs[type=top] run teleport @s ~ ~-0.5 ~
execute positioned as @s if block ~0.3 ~ ~ #minecraft:stairs run teleport @s ~ ~-0.5 ~
execute positioned as @s if block ~-0.3 ~ ~ #minecraft:stairs run teleport @s ~ ~-0.5 ~
execute positioned as @s if block ~ ~ ~0.3 #minecraft:stairs run teleport @s ~ ~-0.5 ~
execute positioned as @s if block ~ ~ ~-0.3 #minecraft:stairs run teleport @s ~ ~-0.5 ~
execute positioned as @s if block ~ ~1 ~ #minecraft:stairs[half=bottom] run teleport @s ~ ~-1 ~
execute store result score #posx Time run data get entity @s Pos[0] 100
scoreboard players operation #posx Time %= #100 Constants
execute if score #posx Time matches ..-1 run scoreboard players add #posx Time 100
execute store result score #posy Time run data get entity @s Pos[1] 100
scoreboard players operation #posy Time %= #100 Constants
execute if score #posy Time matches ..-1 run scoreboard players add #posy Time 100
execute store result score #posz Time run data get entity @s Pos[2] 100
scoreboard players operation #posz Time %= #100 Constants
execute if score #posz Time matches ..-1 run scoreboard players add #posz Time 100
execute positioned as @s if score #posy Time matches 9..59 unless block ~0.3 ~ ~ #luigis_mansion:all_ignore unless block ~0.3 ~ ~ #minecraft:slabs[type=top] unless block ~0.3 ~ ~ #minecraft:stairs[half=top] run teleport @s ~ ~-0.5 ~
execute positioned as @s if score #posy Time matches 9..59 unless block ~-0.3 ~ ~ #luigis_mansion:all_ignore unless block ~-0.3 ~ ~ #minecraft:slabs[type=top] unless block ~-0.3 ~ ~ #minecraft:stairs[half=top] run teleport @s ~ ~-0.5 ~
execute positioned as @s if score #posy Time matches 9..59 unless block ~ ~ ~0.3 #luigis_mansion:all_ignore unless block ~ ~ ~0.3 #minecraft:slabs[type=top] unless block ~ ~ ~0.3 #minecraft:stairs[half=top] run teleport @s ~ ~-0.5 ~
execute positioned as @s if score #posy Time matches 9..59 unless block ~ ~ ~-0.3 #luigis_mansion:all_ignore unless block ~ ~ ~-0.3 #minecraft:slabs[type=top] unless block ~ ~ ~-0.3 #minecraft:stairs[half=top] run teleport @s ~ ~-0.5 ~
execute positioned as @s if score #posx Time matches 20..69 if block ~ ~1 ~ #minecraft:stairs[facing=east,half=top] run teleport @s ~ ~-0.5 ~
execute positioned as @s if score #posx Time matches 30..79 if block ~ ~1 ~ #minecraft:stairs[facing=west,half=top] run teleport @s ~ ~-0.5 ~
execute positioned as @s if score #posz Time matches 20..69 if block ~ ~1 ~ #minecraft:stairs[facing=south,half=top] run teleport @s ~ ~-0.5 ~
execute positioned as @s if score #posz Time matches 30..79 if block ~ ~1 ~ #minecraft:stairs[facing=north,half=top] run teleport @s ~ ~-0.5 ~