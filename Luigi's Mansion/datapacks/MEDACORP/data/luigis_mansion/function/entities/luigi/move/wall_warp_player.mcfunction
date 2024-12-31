execute if entity @a[tag=this_luigi,limit=1] run tag @s add keep_luigi
execute if entity @s[tag=!keep_luigi] run scoreboard players operation #temp ID = @s ID
execute if entity @s[tag=!keep_luigi] as @e[tag=player,type=!minecraft:player] if score @s ID = #temp ID run tag @s add this_luigi
scoreboard players reset #temp ID
$execute if entity @s[tag=!separated_camera] as @a[tag=this_luigi,limit=1] $(execute) run teleport @s $(teleport)
execute if entity @s[tag=!separated_camera] if entity @e[tag=this_luigi,limit=1] store result score @s ModelPositionX run data get entity @e[tag=this_luigi,limit=1] Pos[0] 100
execute if entity @s[tag=!separated_camera] if entity @e[tag=this_luigi,limit=1] store result score @s ModelPositionY run data get entity @e[tag=this_luigi,limit=1] Pos[1] 100
execute if entity @s[tag=!separated_camera] if entity @e[tag=this_luigi,limit=1] store result score @s ModelPositionZ run data get entity @e[tag=this_luigi,limit=1] Pos[2] 100
execute if entity @s[tag=!separated_camera] if entity @e[tag=this_luigi,limit=1] store result score @s ModelRotationX run data get entity @e[tag=this_luigi,limit=1] Rotation[1]
execute if entity @s[tag=!separated_camera] if entity @e[tag=this_luigi,limit=1] store result score @s ModelRotationY run data get entity @e[tag=this_luigi,limit=1] Rotation[0]
$execute $(execute) run teleport @s $(teleport)
execute at @s run function luigis_mansion:main/update_last_position
execute if entity @s[tag=!keep_luigi] run tag @a[tag=this_luigi,limit=1] remove this_luigi
tag @s remove keep_luigi