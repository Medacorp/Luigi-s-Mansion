teleport @s ^ ^ ^0.01
execute if entity @s[scores={Sound=0}] run playsound luigis_mansion:entity.bone.fly hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0}] Sound 4
scoreboard players remove #temp Move 1
scoreboard players add @s AnimationRotationX 5
data modify entity @s transformation.left_rotation set from storage luigis_mansion:data rotation
data remove storage luigis_mansion:data rotation
$scoreboard players set @s[x=$(x),y=$(y),z=$(z),distance=..0.1] PathStep -1
$data modify entity @s[x=$(x),y=$(y),z=$(z),distance=..0.1] transformation.left_rotation set value [0.0f,0.0f,0.0f,1.0f]
$execute if score #temp Move matches 1.. positioned as @s unless entity @s[x=$(x),y=$(y),z=$(z),distance=..0.1] run function luigis_mansion:entities/bone/move_forward_force {x:$(x)d,y:$(y)d,z:$(z)d}