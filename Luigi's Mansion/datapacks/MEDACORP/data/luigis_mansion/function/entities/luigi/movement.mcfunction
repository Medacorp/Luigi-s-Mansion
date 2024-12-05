# When camera is separate, but controls movement
execute as @a[tag=this_player,limit=1] run function luigis_mansion:entities/luigi/movement/get_values
execute unless entity @s[nbt={data:{animation:{}}},tag=!idle,tag=!animation_may_move] unless data storage luigis_mansion:data luigi.movement{x:0f,y:"none",z:0f} run function luigis_mansion:entities/luigi/movement/move with storage luigis_mansion:data luigi.movement
execute unless entity @s[nbt={data:{animation:{}}},tag=!idle,tag=!animation_may_move] positioned as @s run function luigis_mansion:entities/luigi/movement/gravity
execute unless entity @s[nbt={data:{animation:{}}},tag=!idle,tag=!animation_may_move,tag=!animation_free_rotation] at @s run function luigis_mansion:entities/luigi/movement/rotate with storage luigis_mansion:data luigi.movement

execute if entity @a[tag=this_player,tag=separated_camera,limit=1] store result score @a[tag=this_player,limit=1] ModelPositionX run data get entity @s Pos[0] 100
execute if entity @a[tag=this_player,tag=separated_camera,limit=1] store result score @a[tag=this_player,limit=1] ModelPositionY run data get entity @s Pos[1] 100
execute if entity @a[tag=this_player,tag=separated_camera,limit=1] store result score @a[tag=this_player,limit=1] ModelPositionZ run data get entity @s Pos[2] 100
execute if entity @a[tag=this_player,tag=separated_camera,limit=1] store result score @a[tag=this_player,limit=1] ModelRotationX run data get entity @s Rotation[1]
execute if entity @a[tag=this_player,tag=separated_camera,limit=1] store result score @a[tag=this_player,limit=1] ModelRotationY run data get entity @s Rotation[0]