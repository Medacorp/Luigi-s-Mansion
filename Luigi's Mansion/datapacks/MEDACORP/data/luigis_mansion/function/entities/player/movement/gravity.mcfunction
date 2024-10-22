execute store result score #posy Time run data get entity @s Pos[1] 100
scoreboard players operation #temp Time = #posy Time
scoreboard players operation #temp Time /= #100 Constants
scoreboard players operation #temp Time *= #100 Constants
scoreboard players operation #posy Time -= #temp Time
execute if score #posy Time matches ..-1 run scoreboard players add #posy Time 100
execute positioned as @s if block ~0.3 ~-0.1 ~ #luigis_mansion:all_ignore run tag @s add px
execute positioned as @s if block ~-0.3 ~-0.1 ~ #luigis_mansion:all_ignore run tag @s add nx
execute positioned as @s if block ~ ~-0.1 ~0.3 #luigis_mansion:all_ignore run tag @s add pz
execute positioned as @s if block ~ ~-0.1 ~-0.3 #luigis_mansion:all_ignore run tag @s add nz
execute positioned as @s unless score #posy Time matches 9..59 if block ~0.3 ~-0.1 ~ #minecraft:slabs[type=bottom] run tag @s add px
execute positioned as @s unless score #posy Time matches 9..59 if block ~-0.3 ~-0.1 ~ #minecraft:slabs[type=bottom] run tag @s add nx
execute positioned as @s unless score #posy Time matches 9..59 if block ~ ~-0.1 ~0.3 #minecraft:slabs[type=bottom] run tag @s add pz
execute positioned as @s unless score #posy Time matches 9..59 if block ~ ~-0.1 ~-0.3 #minecraft:slabs[type=bottom] run tag @s add nz
execute positioned as @s unless score #posy Time matches 9..59 unless block ~ ~-0.1 ~ #minecraft:stairs if block ~0.3 ~-0.1 ~ #minecraft:stairs[facing=east,half=bottom] run tag @s add px
execute positioned as @s unless score #posy Time matches 9..59 unless block ~ ~-0.1 ~ #minecraft:stairs if block ~-0.3 ~-0.1 ~ #minecraft:stairs[facing=east,half=bottom] run tag @s add nx
execute positioned as @s unless score #posy Time matches 9..59 unless block ~ ~-0.1 ~ #minecraft:stairs if block ~ ~-0.1 ~0.3 #minecraft:stairs[facing=east,half=bottom] run tag @s add pz
execute positioned as @s unless score #posy Time matches 9..59 unless block ~ ~-0.1 ~ #minecraft:stairs if block ~ ~-0.1 ~-0.3 #minecraft:stairs[facing=east,half=bottom] run tag @s add nz
execute positioned as @s unless score #posy Time matches 9..59 unless block ~ ~-0.1 ~ #minecraft:stairs if block ~0.3 ~-0.1 ~ #minecraft:stairs[facing=west,half=bottom] run tag @s add px
execute positioned as @s unless score #posy Time matches 9..59 unless block ~ ~-0.1 ~ #minecraft:stairs if block ~-0.3 ~-0.1 ~ #minecraft:stairs[facing=west,half=bottom] run tag @s add nx
execute positioned as @s unless score #posy Time matches 9..59 unless block ~ ~-0.1 ~ #minecraft:stairs if block ~ ~-0.1 ~0.3 #minecraft:stairs[facing=west,half=bottom] run tag @s add pz
execute positioned as @s unless score #posy Time matches 9..59 unless block ~ ~-0.1 ~ #minecraft:stairs if block ~ ~-0.1 ~-0.3 #minecraft:stairs[facing=west,half=bottom] run tag @s add nz
execute positioned as @s unless score #posy Time matches 9..59 unless block ~ ~-0.1 ~ #minecraft:stairs if block ~0.3 ~-0.1 ~ #minecraft:stairs[facing=south,half=bottom] run tag @s add px
execute positioned as @s unless score #posy Time matches 9..59 unless block ~ ~-0.1 ~ #minecraft:stairs if block ~-0.3 ~-0.1 ~ #minecraft:stairs[facing=south,half=bottom] run tag @s add nx
execute positioned as @s unless score #posy Time matches 9..59 unless block ~ ~-0.1 ~ #minecraft:stairs if block ~ ~-0.1 ~0.3 #minecraft:stairs[facing=south,half=bottom] run tag @s add pz
execute positioned as @s unless score #posy Time matches 9..59 unless block ~ ~-0.1 ~ #minecraft:stairs if block ~ ~-0.1 ~-0.3 #minecraft:stairs[facing=south,half=bottom] run tag @s add nz
execute positioned as @s unless score #posy Time matches 9..59 unless block ~ ~-0.1 ~ #minecraft:stairs if block ~0.3 ~-0.1 ~ #minecraft:stairs[facing=north,half=bottom] run tag @s add px
execute positioned as @s unless score #posy Time matches 9..59 unless block ~ ~-0.1 ~ #minecraft:stairs if block ~-0.3 ~-0.1 ~ #minecraft:stairs[facing=north,half=bottom] run tag @s add nx
execute positioned as @s unless score #posy Time matches 9..59 unless block ~ ~-0.1 ~ #minecraft:stairs if block ~ ~-0.1 ~0.3 #minecraft:stairs[facing=north,half=bottom] run tag @s add pz
execute positioned as @s unless score #posy Time matches 9..59 unless block ~ ~-0.1 ~ #minecraft:stairs if block ~ ~-0.1 ~-0.3 #minecraft:stairs[facing=north,half=bottom] run tag @s add nz
execute positioned as @s unless score #posy Time matches 9..59 unless score #posx Time matches 20..69 if block ~0.3 ~-0.1 ~ #minecraft:stairs[facing=east,half=bottom] run tag @s add px
execute positioned as @s unless score #posy Time matches 9..59 unless score #posx Time matches 20..69 if block ~-0.3 ~-0.1 ~ #minecraft:stairs[facing=east,half=bottom] run tag @s add nx
execute positioned as @s unless score #posy Time matches 9..59 unless score #posx Time matches 20..69 if block ~ ~-0.1 ~0.3 #minecraft:stairs[facing=east,half=bottom] run tag @s add pz
execute positioned as @s unless score #posy Time matches 9..59 unless score #posx Time matches 20..69 if block ~ ~-0.1 ~-0.3 #minecraft:stairs[facing=east,half=bottom] run tag @s add nz
execute positioned as @s unless score #posy Time matches 9..59 unless score #posx Time matches 30..79 if block ~0.3 ~-0.1 ~ #minecraft:stairs[facing=west,half=bottom] run tag @s add px
execute positioned as @s unless score #posy Time matches 9..59 unless score #posx Time matches 30..79 if block ~-0.3 ~-0.1 ~ #minecraft:stairs[facing=west,half=bottom] run tag @s add nx
execute positioned as @s unless score #posy Time matches 9..59 unless score #posx Time matches 30..79 if block ~ ~-0.1 ~0.3 #minecraft:stairs[facing=west,half=bottom] run tag @s add pz
execute positioned as @s unless score #posy Time matches 9..59 unless score #posx Time matches 30..79 if block ~ ~-0.1 ~-0.3 #minecraft:stairs[facing=west,half=bottom] run tag @s add nz
execute positioned as @s unless score #posy Time matches 9..59 unless score #posz Time matches 20..69 if block ~0.3 ~-0.1 ~ #minecraft:stairs[facing=south,half=bottom] run tag @s add px
execute positioned as @s unless score #posy Time matches 9..59 unless score #posz Time matches 20..69 if block ~-0.3 ~-0.1 ~ #minecraft:stairs[facing=south,half=bottom] run tag @s add nx
execute positioned as @s unless score #posy Time matches 9..59 unless score #posz Time matches 20..69 if block ~ ~-0.1 ~0.3 #minecraft:stairs[facing=south,half=bottom] run tag @s add pz
execute positioned as @s unless score #posy Time matches 9..59 unless score #posz Time matches 20..69 if block ~ ~-0.1 ~-0.3 #minecraft:stairs[facing=south,half=bottom] run tag @s add nz
execute positioned as @s unless score #posy Time matches 9..59 unless score #posz Time matches 30..79 if block ~0.3 ~-0.1 ~ #minecraft:stairs[facing=north,half=bottom] run tag @s add px
execute positioned as @s unless score #posy Time matches 9..59 unless score #posz Time matches 30..79 if block ~-0.3 ~-0.1 ~ #minecraft:stairs[facing=north,half=bottom] run tag @s add nx
execute positioned as @s unless score #posy Time matches 9..59 unless score #posz Time matches 30..79 if block ~ ~-0.1 ~0.3 #minecraft:stairs[facing=north,half=bottom] run tag @s add pz
execute positioned as @s unless score #posy Time matches 9..59 unless score #posz Time matches 30..79 if block ~ ~-0.1 ~-0.3 #minecraft:stairs[facing=north,half=bottom] run tag @s add nz
execute positioned as @s run teleport @s[tag=px,tag=nx,tag=pz,tag=nz] ~ ~-0.1 ~
execute positioned as @s if score #posy Time matches 90..99 align y run teleport @s[tag=!px,tag=!nx,tag=!pz,tag=!nz] ~ ~ ~
execute positioned as @s if score #posy Time matches 1..9 align y run teleport @s[tag=!px,tag=!nx,tag=!pz,tag=!nz] ~ ~ ~
tag @s remove px
tag @s remove nx
tag @s remove pz
tag @s remove nz