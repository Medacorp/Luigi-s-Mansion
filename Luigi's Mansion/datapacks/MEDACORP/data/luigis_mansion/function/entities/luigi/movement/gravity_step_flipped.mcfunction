execute store result score #posy Time run data get entity @s Pos[1] 100
scoreboard players operation #posy Time %= #100 Constants
execute if score #posy Time matches ..-1 run scoreboard players add #posy Time 100
execute if block ~0.3 ~2.09 ~ #luigis_mansion:all_ignore run tag @s add px
execute if block ~-0.3 ~2.09 ~ #luigis_mansion:all_ignore run tag @s add nx
execute if block ~ ~2.09 ~0.3 #luigis_mansion:all_ignore run tag @s add pz
execute if block ~ ~2.09 ~-0.3 #luigis_mansion:all_ignore run tag @s add nz
execute unless score #posy Time matches 41..91 if block ~0.3 ~2.09 ~ #minecraft:slabs[type=top] run tag @s add px
execute unless score #posy Time matches 41..91 if block ~-0.3 ~2.09 ~ #minecraft:slabs[type=top] run tag @s add nx
execute unless score #posy Time matches 41..91 if block ~ ~2.09 ~0.3 #minecraft:slabs[type=top] run tag @s add pz
execute unless score #posy Time matches 41..91 if block ~ ~2.09 ~-0.3 #minecraft:slabs[type=top] run tag @s add nz
execute unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~0.3 ~2.09 ~ #minecraft:stairs[facing=east,half=top] run tag @s add px
execute unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~-0.3 ~2.09 ~ #minecraft:stairs[facing=east,half=top] run tag @s add nx
execute unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~ ~2.09 ~0.3 #minecraft:stairs[facing=east,half=top] run tag @s add pz
execute unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~ ~2.09 ~-0.3 #minecraft:stairs[facing=east,half=top] run tag @s add nz
execute unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~0.3 ~2.09 ~ #minecraft:stairs[facing=west,half=top] run tag @s add px
execute unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~-0.3 ~2.09 ~ #minecraft:stairs[facing=west,half=top] run tag @s add nx
execute unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~ ~2.09 ~0.3 #minecraft:stairs[facing=west,half=top] run tag @s add pz
execute unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~ ~2.09 ~-0.3 #minecraft:stairs[facing=west,half=top] run tag @s add nz
execute unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~0.3 ~2.09 ~ #minecraft:stairs[facing=south,half=top] run tag @s add px
execute unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~-0.3 ~2.09 ~ #minecraft:stairs[facing=south,half=top] run tag @s add nx
execute unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~ ~2.09 ~0.3 #minecraft:stairs[facing=south,half=top] run tag @s add pz
execute unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~ ~2.09 ~-0.3 #minecraft:stairs[facing=south,half=top] run tag @s add nz
execute unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~0.3 ~2.09 ~ #minecraft:stairs[facing=north,half=top] run tag @s add px
execute unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~-0.3 ~2.09 ~ #minecraft:stairs[facing=north,half=top] run tag @s add nx
execute unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~ ~2.09 ~0.3 #minecraft:stairs[facing=north,half=top] run tag @s add pz
execute unless score #posy Time matches 41..91 unless block ~ ~2.09 ~ #minecraft:stairs if block ~ ~2.09 ~-0.3 #minecraft:stairs[facing=north,half=top] run tag @s add nz
execute unless score #posy Time matches 41..91 unless score #posx Time matches 20..69 if block ~0.3 ~2.09 ~ #minecraft:stairs[facing=east,half=top] run tag @s add px
execute unless score #posy Time matches 41..91 unless score #posx Time matches 20..69 if block ~-0.3 ~2.09 ~ #minecraft:stairs[facing=east,half=top] run tag @s add nx
execute unless score #posy Time matches 41..91 unless score #posx Time matches 20..69 if block ~ ~2.09 ~0.3 #minecraft:stairs[facing=east,half=top] run tag @s add pz
execute unless score #posy Time matches 41..91 unless score #posx Time matches 20..69 if block ~ ~2.09 ~-0.3 #minecraft:stairs[facing=east,half=top] run tag @s add nz
execute unless score #posy Time matches 41..91 unless score #posx Time matches 30..79 if block ~0.3 ~2.09 ~ #minecraft:stairs[facing=west,half=top] run tag @s add px
execute unless score #posy Time matches 41..91 unless score #posx Time matches 30..79 if block ~-0.3 ~2.09 ~ #minecraft:stairs[facing=west,half=top] run tag @s add nx
execute unless score #posy Time matches 41..91 unless score #posx Time matches 30..79 if block ~ ~2.09 ~0.3 #minecraft:stairs[facing=west,half=top] run tag @s add pz
execute unless score #posy Time matches 41..91 unless score #posx Time matches 30..79 if block ~ ~2.09 ~-0.3 #minecraft:stairs[facing=west,half=top] run tag @s add nz
execute unless score #posy Time matches 41..91 unless score #posz Time matches 20..69 if block ~0.3 ~2.09 ~ #minecraft:stairs[facing=south,half=top] run tag @s add px
execute unless score #posy Time matches 41..91 unless score #posz Time matches 20..69 if block ~-0.3 ~2.09 ~ #minecraft:stairs[facing=south,half=top] run tag @s add nx
execute unless score #posy Time matches 41..91 unless score #posz Time matches 20..69 if block ~ ~2.09 ~0.3 #minecraft:stairs[facing=south,half=top] run tag @s add pz
execute unless score #posy Time matches 41..91 unless score #posz Time matches 20..69 if block ~ ~2.09 ~-0.3 #minecraft:stairs[facing=south,half=top] run tag @s add nz
execute unless score #posy Time matches 41..91 unless score #posz Time matches 30..79 if block ~0.3 ~2.09 ~ #minecraft:stairs[facing=north,half=top] run tag @s add px
execute unless score #posy Time matches 41..91 unless score #posz Time matches 30..79 if block ~-0.3 ~2.09 ~ #minecraft:stairs[facing=north,half=top] run tag @s add nx
execute unless score #posy Time matches 41..91 unless score #posz Time matches 30..79 if block ~ ~2.09 ~0.3 #minecraft:stairs[facing=north,half=top] run tag @s add pz
execute unless score #posy Time matches 41..91 unless score #posz Time matches 30..79 if block ~ ~2.09 ~-0.3 #minecraft:stairs[facing=north,half=top] run tag @s add nz
teleport @s[tag=px,tag=nx,tag=pz,tag=nz] ~ ~0.08 ~
execute if score #temp2 Gravity matches 1 run scoreboard players add @s[tag=px,tag=nx,tag=pz,tag=nz] Gravity 1
execute if score #posy Time matches 90..99 align y run teleport @s[tag=!px,tag=!nx,tag=!pz,tag=!nz] ~ ~ ~
execute if score #posy Time matches 1..9 align y run teleport @s[tag=!px,tag=!nx,tag=!pz,tag=!nz] ~ ~ ~
tag @s remove px
tag @s remove nx
tag @s remove pz
tag @s remove nz
scoreboard players remove #temp2 Gravity 1
execute if score #temp2 Gravity matches 1.. at @s run function luigis_mansion:entities/luigi/movement/gravity_step_flipped with storage luigis_mansion:data luigi.movement