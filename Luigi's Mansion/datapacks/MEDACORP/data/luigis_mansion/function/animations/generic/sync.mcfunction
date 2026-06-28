execute unless score @s AnimationOldRotationX = @s AnimationRotationX run function luigis_mansion:animations/generic/update_x
execute unless score @s AnimationOldRotationY = @s AnimationRotationY run function luigis_mansion:animations/generic/update_y
execute unless score @s AnimationOldRotationZ = @s AnimationRotationZ run function luigis_mansion:animations/generic/update_z
scoreboard players operation @s AnimationOldRotationX = @s AnimationRotationX
scoreboard players operation @s AnimationOldRotationY = @s AnimationRotationY
scoreboard players operation @s AnimationOldRotationZ = @s AnimationRotationZ
data modify storage luigis_mansion:data rotation set value [0.0f,0.0f,0.0f,1.0f]
#x = spitch * cyaw * croll - cpitch * syaw * sroll
scoreboard players operation #x Time = @s AnimationRotationSinX
scoreboard players operation #x Time *= @s AnimationRotationCosY
scoreboard players operation #x Time /= #1000 Constants
scoreboard players operation #x Time *= @s AnimationRotationCosZ
scoreboard players operation #x Time /= #1000 Constants
scoreboard players operation #temp Time = @s AnimationRotationCosX
scoreboard players operation #temp Time *= @s AnimationRotationSinY
scoreboard players operation #temp Time /= #1000 Constants
scoreboard players operation #temp Time *= @s AnimationRotationSinZ
scoreboard players operation #temp Time /= #1000 Constants
execute store result storage luigis_mansion:data rotation[0] float 0.001 run scoreboard players operation #x Time -= #temp Time
#y = cpitch * syaw * croll + spitch * cyaw * sroll
scoreboard players operation #y Time = @s AnimationRotationCosX
scoreboard players operation #y Time *= @s AnimationRotationSinY
scoreboard players operation #y Time /= #1000 Constants
scoreboard players operation #y Time *= @s AnimationRotationCosZ
scoreboard players operation #y Time /= #1000 Constants
scoreboard players operation #temp Time = @s AnimationRotationSinX
scoreboard players operation #temp Time *= @s AnimationRotationCosY
scoreboard players operation #temp Time /= #1000 Constants
scoreboard players operation #temp Time *= @s AnimationRotationSinZ
scoreboard players operation #temp Time /= #1000 Constants
execute store result storage luigis_mansion:data rotation[1] float 0.001 run scoreboard players operation #y Time += #temp Time
#z = cpitch * cyaw * sroll - spitch * syaw * croll
scoreboard players operation #z Time = @s AnimationRotationCosX
scoreboard players operation #z Time *= @s AnimationRotationCosY
scoreboard players operation #z Time /= #1000 Constants
scoreboard players operation #z Time *= @s AnimationRotationSinZ
scoreboard players operation #z Time /= #1000 Constants
scoreboard players operation #temp Time = @s AnimationRotationSinX
scoreboard players operation #temp Time *= @s AnimationRotationSinY
scoreboard players operation #temp Time /= #1000 Constants
scoreboard players operation #temp Time *= @s AnimationRotationCosZ
scoreboard players operation #temp Time /= #1000 Constants
execute store result storage luigis_mansion:data rotation[2] float 0.001 run scoreboard players operation #z Time -= #temp Time
#w = cpitch * cyaw * croll + spitch * syaw * sroll
scoreboard players operation #w Time = @s AnimationRotationCosX
scoreboard players operation #w Time *= @s AnimationRotationCosY
scoreboard players operation #w Time /= #1000 Constants
scoreboard players operation #w Time *= @s AnimationRotationCosZ
scoreboard players operation #w Time /= #1000 Constants
scoreboard players operation #temp Time = @s AnimationRotationSinX
scoreboard players operation #temp Time *= @s AnimationRotationSinY
scoreboard players operation #temp Time /= #1000 Constants
scoreboard players operation #temp Time *= @s AnimationRotationSinZ
scoreboard players operation #temp Time /= #1000 Constants
execute store result storage luigis_mansion:data rotation[3] float 0.001 run scoreboard players operation #w Time += #temp Time
data modify entity @s transformation.left_rotation set from storage luigis_mansion:data rotation
data remove storage luigis_mansion:data rotation
scoreboard players reset #temp Time
scoreboard players reset #w Time
scoreboard players reset #x Time
scoreboard players reset #y Time
scoreboard players reset #z Time