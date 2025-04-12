scoreboard players operation #temp MirrorZ *= #100 Constants
scoreboard players add #temp MirrorZ 50
execute store result score #temp ActionTime run data get entity @s Pos[2] 100
scoreboard players operation #temp ActionTime -= #temp MirrorZ
execute store result entity @s Pos[2] double 0.01 run scoreboard players operation #temp MirrorZ -= #temp ActionTime
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["weak_flashlight","reflected","new","never_move"],data:{entity:{namespace:"3ds_remake",id:"weak_flashlight"}}}
execute at @s run teleport @e[type=minecraft:marker,tag=weak_flashlight,tag=reflected,tag=new,limit=1] ~ ~ ~ ~ ~
execute as @e[type=minecraft:marker,tag=weak_flashlight,tag=reflected,tag=new,limit=1] store result entity @s Rotation[0] float -0.01 run data get entity @s Rotation[0] 100
execute as @e[type=minecraft:marker,tag=weak_flashlight,tag=reflected,tag=new,limit=1] at @s run teleport @s ~ ~ ~ ~-180 ~
scoreboard players operation @e[type=minecraft:marker,tag=weak_flashlight,tag=reflected,tag=new,limit=1] Room = @s Room
scoreboard players operation @e[type=minecraft:marker,tag=weak_flashlight,tag=reflected,tag=new,limit=1] PathStep = @s PathStep
execute as @e[type=minecraft:marker,tag=weak_flashlight,tag=reflected,tag=new,limit=1] store result score @s HomeRotationX run data get entity @s Rotation[0]
execute as @e[type=minecraft:marker,tag=weak_flashlight,tag=reflected,tag=new,limit=1] store result score @s HomeRotationY run data get entity @s Rotation[1]
execute as @e[type=minecraft:marker,tag=weak_flashlight,tag=reflected,tag=new,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[type=minecraft:marker,tag=weak_flashlight,tag=reflected,tag=new,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[type=minecraft:marker,tag=weak_flashlight,tag=reflected,tag=new,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
tag @e[type=minecraft:marker,tag=weak_flashlight,tag=reflected,tag=new,limit=1] remove new
teleport @s ~ ~ ~
scoreboard players reset #temp ActionTime