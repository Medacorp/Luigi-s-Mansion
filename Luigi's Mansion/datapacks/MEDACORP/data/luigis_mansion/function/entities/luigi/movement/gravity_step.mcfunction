execute store result score #posy Time run data get entity @s Pos[1] 100
scoreboard players operation #posy Time %= #100 Constants
execute if score #posy Time matches ..-1 run scoreboard players add #posy Time 100
execute if block ~0.3 ~-0.08 ~ #luigis_mansion:all_ignore run tag @s add px
execute if block ~-0.3 ~-0.08 ~ #luigis_mansion:all_ignore run tag @s add nx
execute if block ~ ~-0.08 ~0.3 #luigis_mansion:all_ignore run tag @s add pz
execute if block ~ ~-0.08 ~-0.3 #luigis_mansion:all_ignore run tag @s add nz
execute unless score #posy Time matches 9..59 if block ~0.3 ~-0.08 ~ #minecraft:slabs[type=bottom] run tag @s add px
execute unless score #posy Time matches 9..59 if block ~-0.3 ~-0.08 ~ #minecraft:slabs[type=bottom] run tag @s add nx
execute unless score #posy Time matches 9..59 if block ~ ~-0.08 ~0.3 #minecraft:slabs[type=bottom] run tag @s add pz
execute unless score #posy Time matches 9..59 if block ~ ~-0.08 ~-0.3 #minecraft:slabs[type=bottom] run tag @s add nz
execute unless score #posy Time matches 9..59 unless block ~ ~-0.08 ~ #minecraft:stairs if block ~0.3 ~-0.08 ~ #minecraft:stairs[facing=east,half=bottom] run tag @s add px
execute unless score #posy Time matches 9..59 unless block ~ ~-0.08 ~ #minecraft:stairs if block ~-0.3 ~-0.08 ~ #minecraft:stairs[facing=east,half=bottom] run tag @s add nx
execute unless score #posy Time matches 9..59 unless block ~ ~-0.08 ~ #minecraft:stairs if block ~ ~-0.08 ~0.3 #minecraft:stairs[facing=east,half=bottom] run tag @s add pz
execute unless score #posy Time matches 9..59 unless block ~ ~-0.08 ~ #minecraft:stairs if block ~ ~-0.08 ~-0.3 #minecraft:stairs[facing=east,half=bottom] run tag @s add nz
execute unless score #posy Time matches 9..59 unless block ~ ~-0.08 ~ #minecraft:stairs if block ~0.3 ~-0.08 ~ #minecraft:stairs[facing=west,half=bottom] run tag @s add px
execute unless score #posy Time matches 9..59 unless block ~ ~-0.08 ~ #minecraft:stairs if block ~-0.3 ~-0.08 ~ #minecraft:stairs[facing=west,half=bottom] run tag @s add nx
execute unless score #posy Time matches 9..59 unless block ~ ~-0.08 ~ #minecraft:stairs if block ~ ~-0.08 ~0.3 #minecraft:stairs[facing=west,half=bottom] run tag @s add pz
execute unless score #posy Time matches 9..59 unless block ~ ~-0.08 ~ #minecraft:stairs if block ~ ~-0.08 ~-0.3 #minecraft:stairs[facing=west,half=bottom] run tag @s add nz
execute unless score #posy Time matches 9..59 unless block ~ ~-0.08 ~ #minecraft:stairs if block ~0.3 ~-0.08 ~ #minecraft:stairs[facing=south,half=bottom] run tag @s add px
execute unless score #posy Time matches 9..59 unless block ~ ~-0.08 ~ #minecraft:stairs if block ~-0.3 ~-0.08 ~ #minecraft:stairs[facing=south,half=bottom] run tag @s add nx
execute unless score #posy Time matches 9..59 unless block ~ ~-0.08 ~ #minecraft:stairs if block ~ ~-0.08 ~0.3 #minecraft:stairs[facing=south,half=bottom] run tag @s add pz
execute unless score #posy Time matches 9..59 unless block ~ ~-0.08 ~ #minecraft:stairs if block ~ ~-0.08 ~-0.3 #minecraft:stairs[facing=south,half=bottom] run tag @s add nz
execute unless score #posy Time matches 9..59 unless block ~ ~-0.08 ~ #minecraft:stairs if block ~0.3 ~-0.08 ~ #minecraft:stairs[facing=north,half=bottom] run tag @s add px
execute unless score #posy Time matches 9..59 unless block ~ ~-0.08 ~ #minecraft:stairs if block ~-0.3 ~-0.08 ~ #minecraft:stairs[facing=north,half=bottom] run tag @s add nx
execute unless score #posy Time matches 9..59 unless block ~ ~-0.08 ~ #minecraft:stairs if block ~ ~-0.08 ~0.3 #minecraft:stairs[facing=north,half=bottom] run tag @s add pz
execute unless score #posy Time matches 9..59 unless block ~ ~-0.08 ~ #minecraft:stairs if block ~ ~-0.08 ~-0.3 #minecraft:stairs[facing=north,half=bottom] run tag @s add nz
execute unless score #posy Time matches 9..59 unless score #posx Time matches 20..69 if block ~0.3 ~-0.08 ~ #minecraft:stairs[facing=east,half=bottom] run tag @s add px
execute unless score #posy Time matches 9..59 unless score #posx Time matches 20..69 if block ~-0.3 ~-0.08 ~ #minecraft:stairs[facing=east,half=bottom] run tag @s add nx
execute unless score #posy Time matches 9..59 unless score #posx Time matches 20..69 if block ~ ~-0.08 ~0.3 #minecraft:stairs[facing=east,half=bottom] run tag @s add pz
execute unless score #posy Time matches 9..59 unless score #posx Time matches 20..69 if block ~ ~-0.08 ~-0.3 #minecraft:stairs[facing=east,half=bottom] run tag @s add nz
execute unless score #posy Time matches 9..59 unless score #posx Time matches 30..79 if block ~0.3 ~-0.08 ~ #minecraft:stairs[facing=west,half=bottom] run tag @s add px
execute unless score #posy Time matches 9..59 unless score #posx Time matches 30..79 if block ~-0.3 ~-0.08 ~ #minecraft:stairs[facing=west,half=bottom] run tag @s add nx
execute unless score #posy Time matches 9..59 unless score #posx Time matches 30..79 if block ~ ~-0.08 ~0.3 #minecraft:stairs[facing=west,half=bottom] run tag @s add pz
execute unless score #posy Time matches 9..59 unless score #posx Time matches 30..79 if block ~ ~-0.08 ~-0.3 #minecraft:stairs[facing=west,half=bottom] run tag @s add nz
execute unless score #posy Time matches 9..59 unless score #posz Time matches 20..69 if block ~0.3 ~-0.08 ~ #minecraft:stairs[facing=south,half=bottom] run tag @s add px
execute unless score #posy Time matches 9..59 unless score #posz Time matches 20..69 if block ~-0.3 ~-0.08 ~ #minecraft:stairs[facing=south,half=bottom] run tag @s add nx
execute unless score #posy Time matches 9..59 unless score #posz Time matches 20..69 if block ~ ~-0.08 ~0.3 #minecraft:stairs[facing=south,half=bottom] run tag @s add pz
execute unless score #posy Time matches 9..59 unless score #posz Time matches 20..69 if block ~ ~-0.08 ~-0.3 #minecraft:stairs[facing=south,half=bottom] run tag @s add nz
execute unless score #posy Time matches 9..59 unless score #posz Time matches 30..79 if block ~0.3 ~-0.08 ~ #minecraft:stairs[facing=north,half=bottom] run tag @s add px
execute unless score #posy Time matches 9..59 unless score #posz Time matches 30..79 if block ~-0.3 ~-0.08 ~ #minecraft:stairs[facing=north,half=bottom] run tag @s add nx
execute unless score #posy Time matches 9..59 unless score #posz Time matches 30..79 if block ~ ~-0.08 ~0.3 #minecraft:stairs[facing=north,half=bottom] run tag @s add pz
execute unless score #posy Time matches 9..59 unless score #posz Time matches 30..79 if block ~ ~-0.08 ~-0.3 #minecraft:stairs[facing=north,half=bottom] run tag @s add nz
teleport @s[tag=px,tag=nx,tag=pz,tag=nz] ~ ~-0.08 ~
execute if score #posy Time matches 90..99 align y run teleport @s[tag=!px,tag=!nx,tag=!pz,tag=!nz,scores={Gravity=0}] ~ ~ ~
execute if score #posy Time matches 1..9 align y run teleport @s[tag=!px,tag=!nx,tag=!pz,tag=!nz,scores={Gravity=0}] ~ ~ ~
execute if score #temp2 Gravity matches 1 run scoreboard players add @s[tag=px,tag=nx,tag=pz,tag=nz] Gravity 1
tag @s remove px
tag @s remove nx
tag @s remove pz
tag @s remove nz
scoreboard players remove #temp2 Gravity 1
execute if score #temp2 Gravity matches 1.. at @s run function luigis_mansion:entities/luigi/movement/gravity_step