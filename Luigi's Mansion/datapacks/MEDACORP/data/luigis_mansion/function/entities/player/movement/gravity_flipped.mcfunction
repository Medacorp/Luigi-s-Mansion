execute store result score #posy Time run data get entity @s Pos[1] 100
scoreboard players operation #temp Time = #posy Time
scoreboard players operation #temp Time /= #100 Constants
scoreboard players operation #temp Time *= #100 Constants
scoreboard players operation #posy Time -= #temp Time
execute if score #posy Time matches ..-1 run scoreboard players add #posy Time 100
execute positioned as @s if block ~0.3 ~2.09 ~ #luigis_mansion:all_ignore run tag @s add px
execute positioned as @s if block ~-0.3 ~2.09 ~ #luigis_mansion:all_ignore run tag @s add nx
execute positioned as @s if block ~ ~2.09 ~0.3 #luigis_mansion:all_ignore run tag @s add pz
execute positioned as @s if block ~ ~2.09 ~-0.3 #luigis_mansion:all_ignore run tag @s add nz
execute positioned as @s unless score #posy Time matches 41..91 if block ~0.3 ~2.09 ~ #minecraft:slabs[type=top] run tag @s add px
execute positioned as @s unless score #posy Time matches 41..91 if block ~-0.3 ~2.09 ~ #minecraft:slabs[type=top] run tag @s add nx
execute positioned as @s unless score #posy Time matches 41..91 if block ~ ~2.09 ~0.3 #minecraft:slabs[type=top] run tag @s add pz
execute positioned as @s unless score #posy Time matches 41..91 if block ~ ~2.09 ~-0.3 #minecraft:slabs[type=top] run tag @s add nz
execute positioned as @s unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~0.3 ~2.09 ~ #minecraft:stairs[facing=east,half=top] run tag @s add px
execute positioned as @s unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~-0.3 ~2.09 ~ #minecraft:stairs[facing=east,half=top] run tag @s add nx
execute positioned as @s unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~ ~2.09 ~0.3 #minecraft:stairs[facing=east,half=top] run tag @s add pz
execute positioned as @s unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~ ~2.09 ~-0.3 #minecraft:stairs[facing=east,half=top] run tag @s add nz
execute positioned as @s unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~0.3 ~2.09 ~ #minecraft:stairs[facing=west,half=top] run tag @s add px
execute positioned as @s unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~-0.3 ~2.09 ~ #minecraft:stairs[facing=west,half=top] run tag @s add nx
execute positioned as @s unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~ ~2.09 ~0.3 #minecraft:stairs[facing=west,half=top] run tag @s add pz
execute positioned as @s unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~ ~2.09 ~-0.3 #minecraft:stairs[facing=west,half=top] run tag @s add nz
execute positioned as @s unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~0.3 ~2.09 ~ #minecraft:stairs[facing=south,half=top] run tag @s add px
execute positioned as @s unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~-0.3 ~2.09 ~ #minecraft:stairs[facing=south,half=top] run tag @s add nx
execute positioned as @s unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~ ~2.09 ~0.3 #minecraft:stairs[facing=south,half=top] run tag @s add pz
execute positioned as @s unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~ ~2.09 ~-0.3 #minecraft:stairs[facing=south,half=top] run tag @s add nz
execute positioned as @s unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~0.3 ~2.09 ~ #minecraft:stairs[facing=north,half=top] run tag @s add px
execute positioned as @s unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~-0.3 ~2.09 ~ #minecraft:stairs[facing=north,half=top] run tag @s add nx
execute positioned as @s unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~ ~2.09 ~0.3 #minecraft:stairs[facing=north,half=top] run tag @s add pz
execute positioned as @s unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~ ~2.09 ~-0.3 #minecraft:stairs[facing=north,half=top] run tag @s add nz
execute positioned as @s unless score #posy Time matches 41..91 unless score #posx Time matches 20..69 if block ~0.3 ~2.09 ~ #minecraft:stairs[facing=east,half=top] run tag @s add px
execute positioned as @s unless score #posy Time matches 41..91 unless score #posx Time matches 20..69 if block ~-0.3 ~2.09 ~ #minecraft:stairs[facing=east,half=top] run tag @s add nx
execute positioned as @s unless score #posy Time matches 41..91 unless score #posx Time matches 20..69 if block ~ ~2.09 ~0.3 #minecraft:stairs[facing=east,half=top] run tag @s add pz
execute positioned as @s unless score #posy Time matches 41..91 unless score #posx Time matches 20..69 if block ~ ~2.09 ~-0.3 #minecraft:stairs[facing=east,half=top] run tag @s add nz
execute positioned as @s unless score #posy Time matches 41..91 unless score #posx Time matches 30..79 if block ~0.3 ~2.09 ~ #minecraft:stairs[facing=west,half=top] run tag @s add px
execute positioned as @s unless score #posy Time matches 41..91 unless score #posx Time matches 30..79 if block ~-0.3 ~2.09 ~ #minecraft:stairs[facing=west,half=top] run tag @s add nx
execute positioned as @s unless score #posy Time matches 41..91 unless score #posx Time matches 30..79 if block ~ ~2.09 ~0.3 #minecraft:stairs[facing=west,half=top] run tag @s add pz
execute positioned as @s unless score #posy Time matches 41..91 unless score #posx Time matches 30..79 if block ~ ~2.09 ~-0.3 #minecraft:stairs[facing=west,half=top] run tag @s add nz
execute positioned as @s unless score #posy Time matches 41..91 unless score #posz Time matches 20..69 if block ~0.3 ~2.09 ~ #minecraft:stairs[facing=south,half=top] run tag @s add px
execute positioned as @s unless score #posy Time matches 41..91 unless score #posz Time matches 20..69 if block ~-0.3 ~2.09 ~ #minecraft:stairs[facing=south,half=top] run tag @s add nx
execute positioned as @s unless score #posy Time matches 41..91 unless score #posz Time matches 20..69 if block ~ ~2.09 ~0.3 #minecraft:stairs[facing=south,half=top] run tag @s add pz
execute positioned as @s unless score #posy Time matches 41..91 unless score #posz Time matches 20..69 if block ~ ~2.09 ~-0.3 #minecraft:stairs[facing=south,half=top] run tag @s add nz
execute positioned as @s unless score #posy Time matches 41..91 unless score #posz Time matches 30..79 if block ~0.3 ~2.09 ~ #minecraft:stairs[facing=north,half=top] run tag @s add px
execute positioned as @s unless score #posy Time matches 41..91 unless score #posz Time matches 30..79 if block ~-0.3 ~2.09 ~ #minecraft:stairs[facing=north,half=top] run tag @s add nx
execute positioned as @s unless score #posy Time matches 41..91 unless score #posz Time matches 30..79 if block ~ ~2.09 ~0.3 #minecraft:stairs[facing=north,half=top] run tag @s add pz
execute positioned as @s unless score #posy Time matches 41..91 unless score #posz Time matches 30..79 if block ~ ~2.09 ~-0.3 #minecraft:stairs[facing=north,half=top] run tag @s add nz
execute positioned as @s run teleport @s[tag=px,tag=nx,tag=pz,tag=nz] ~ ~0.1 ~
execute positioned as @s if score #posy Time matches 90..99 align y run teleport @s[tag=!px,tag=!nx,tag=!pz,tag=!nz] ~ ~ ~
execute positioned as @s if score #posy Time matches 1..9 align y run teleport @s[tag=!px,tag=!nx,tag=!pz,tag=!nz] ~ ~ ~
tag @s remove px
tag @s remove nx
tag @s remove pz
tag @s remove nz