execute in minecraft:overworld run summon minecraft:marker 0.0 0.0 0.0 {Tags:["temp","remove_from_existence"]}
execute store result entity @e[tag=temp,limit=1] Rotation[0] float 1 run scoreboard players get @s FurnitureXProgress
execute as @e[tag=temp,limit=1] at @s run teleport @s ^ ^ ^1
execute store result score #temp AnimationRotationCosX run data get entity @e[tag=temp,limit=1] Pos[2] 10
execute store result entity @e[tag=temp,limit=1] Rotation[0] float 1 run scoreboard players get @s FurnitureZProgress
execute as @e[tag=temp,limit=1] at @s run teleport @s ^ ^ ^1
execute store result score #temp AnimationRotationCosZ run data get entity @e[tag=temp,limit=1] Pos[2] 10
scoreboard players operation #temp Time = @s FurnitureXOrigin
scoreboard players operation #temp Time -= @s FurnitureXTarget
scoreboard players operation #temp Time /= #2 Constants
scoreboard players operation #temp AnimationRotationCosX *= #temp Time

execute store result entity @e[tag=temp,limit=1] Rotation[0] float 0.05 run scoreboard players get #temp Time
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1
execute store result score #temp AnimationRotationCosX run data get entity @e[tag=temp,limit=1] Pos[2] 1000
execute as @e[tag=temp,limit=1] at @s positioned 0.001 0.0 0.0 run teleport @s ^ ^ ^-1
execute store result score #temp AnimationRotationSinX run data get entity @e[tag=temp,limit=1] Pos[0] 1000

scoreboard players operation #temp Time = @s FurnitureZOrigin
scoreboard players operation #temp Time -= @s FurnitureZTarget
scoreboard players operation #temp Time /= #2 Constants
scoreboard players operation #temp AnimationRotationCosZ *= #temp Time

execute store result entity @e[tag=temp,limit=1] Rotation[0] float -0.05 run scoreboard players get #temp Time
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1
execute store result score #temp AnimationRotationCosZ run data get entity @e[tag=temp,limit=1] Pos[2] 1000
execute as @e[tag=temp,limit=1] at @s positioned 0.001 0.0 0.0 run teleport @s ^ ^ ^-1
execute store result score #temp AnimationRotationSinZ run data get entity @e[tag=temp,limit=1] Pos[0] 1000
kill @e[tag=temp]

data modify storage luigis_mansion:data rotation set value [0.0f,0.0f,0.0f,1.0f]
#x=sin(1/2pitch)*cos(1/2roll)
scoreboard players operation #x Time = #temp AnimationRotationSinX
scoreboard players operation #x Time *= #temp AnimationRotationCosZ
execute store result storage luigis_mansion:data rotation[0] float 0.001 run scoreboard players operation #x Time /= #1000 Constants
execute if entity @s[scores={FurnitureXProgress=0}] if score #x Time matches 0 run scoreboard players reset @s FurnitureXTarget
#z=cos(1/2pitch)*sin(1/2roll)
scoreboard players operation #z Time = #temp AnimationRotationSinZ
scoreboard players operation #z Time *= #temp AnimationRotationCosX
execute store result storage luigis_mansion:data rotation[2] float 0.001 run scoreboard players operation #z Time /= #1000 Constants
execute if entity @s[scores={FurnitureZProgress=0}] if score #z Time matches 0 run scoreboard players reset @s FurnitureZTarget
#w=sqrt(1-x^2-z^2)
scoreboard players set #w Time 1000
scoreboard players operation #x Time *= #x Time
scoreboard players operation #x Time /= #1000 Constants
scoreboard players operation #w Time -= #x Time
scoreboard players operation #z Time *= #z Time
scoreboard players operation #z Time /= #1000 Constants
scoreboard players operation #w Time -= #z Time
scoreboard players set #temp Time 1
scoreboard players set #temp2 Time 0
function luigis_mansion:entities/furniture/type/swinging/square_root
execute store result storage luigis_mansion:data rotation[3] float 0.001 run scoreboard players get #temp2 Time
data modify entity @s transformation.left_rotation set from storage luigis_mansion:data rotation
data remove storage luigis_mansion:data rotation
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #x Time
scoreboard players reset #z Time
scoreboard players reset #w Time
scoreboard players reset #temp AnimationRotationSinX
scoreboard players reset #temp AnimationRotationSinZ
scoreboard players reset #temp AnimationRotationCosX
scoreboard players reset #temp AnimationRotationCosZ