execute if entity @a[tag=this_player,limit=1] run tag @s add keep_player
execute if entity @s[tag=!keep_player] run scoreboard players operation #temp ID = @s ID
execute if entity @s[tag=!keep_player] as @a[tag=!spectator] if score @s ID = #temp ID run tag @s add this_player
scoreboard players reset #temp ID
$execute if entity @a[tag=this_player,tag=!separated_camera,limit=1] $(execute) run teleport @s $(teleport)
execute if entity @a[tag=this_player,tag=!separated_camera,limit=1] store result score @a[tag=this_player,limit=1] ModelPositionX run data get entity @s Pos[0] 100
execute if entity @a[tag=this_player,tag=!separated_camera,limit=1] store result score @a[tag=this_player,limit=1] ModelPositionY run data get entity @s Pos[1] 100
execute if entity @a[tag=this_player,tag=!separated_camera,limit=1] store result score @a[tag=this_player,limit=1] ModelPositionZ run data get entity @s Pos[2] 100
execute if entity @a[tag=this_player,tag=!separated_camera,limit=1] store result score @a[tag=this_player,limit=1] ModelRotationX run data get entity @s Rotation[1]
execute if entity @a[tag=this_player,tag=!separated_camera,limit=1] store result score @a[tag=this_player,limit=1] ModelRotationY run data get entity @s Rotation[0]
$execute $(execute) run teleport @s $(teleport)
execute as @a[tag=this_player,limit=1] at @s run function luigis_mansion:main/update_last_position
execute if entity @s[tag=!keep_player] run tag @a[tag=this_player,limit=1] remove this_player
tag @s remove keep_player