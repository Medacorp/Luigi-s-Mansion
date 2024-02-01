scoreboard players add @s AnimationProgress 1
tag @s[tag=!gooigi] add animation_may_move
execute at @s[scores={AnimationProgress=1,Sound=0,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_burn player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={AnimationProgress=1,Sound=0,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_burn player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={AnimationProgress=1,Sound=0},tag=!gooigi] Sound 55
execute at @s[scores={AnimationProgress=..40},tag=!gooigi] if score #mirrored Selected matches 0 run teleport @s ^ ^ ^ ~-9 ~
execute at @s[scores={AnimationProgress=..40},tag=!gooigi] if score #mirrored Selected matches 1 run teleport @s ^ ^ ^ ~9 ~
execute at @s[scores={AnimationProgress=55,Sound=0,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.recover.high_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={AnimationProgress=55,Sound=0,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.recover.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @s[scores={AnimationProgress=55,Sound=0,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.recover.low_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={AnimationProgress=55,Sound=0,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.recover.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={AnimationProgress=55,Sound=0},tag=!gooigi] Sound 10
tag @s[tag=!gooigi] remove new_poltergust_grabbed
tag @s[tag=!gooigi] remove poltergust_grabbed

execute if entity @s[tag=gooigi] run summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute if entity @s[tag=gooigi] store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PositionX
execute if entity @s[tag=gooigi] store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PositionY
execute if entity @s[tag=gooigi] store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PositionZ
execute if entity @s[tag=gooigi] store result entity @e[tag=home,limit=1] Rotation[0] float 1 run scoreboard players get @s RotationY
execute if entity @s[tag=gooigi] store result entity @e[tag=home,limit=1] Rotation[1] float 1 run scoreboard players get @s RotationX
execute at @s[tag=gooigi] at @e[tag=home,limit=1] run tp @s ~ 0 ~ ~ ~
execute at @s[tag=gooigi] at @e[tag=home,limit=1] run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=gooigi] run kill @e[tag=home,limit=1]
scoreboard players set @s[scores={AnimationProgress=..59},tag=gooigi] Health 1
scoreboard players set @s[scores={AnimationProgress=60},tag=gooigi] Health 0

tag @s remove vacuuming_ghost
tag @s add disable_flashlight
tag @s add disable_game_boy_horror
tag @s add disable_interact
tag @s add disable_poltergust
execute if entity @s[scores={AnimationProgress=60}] run function luigis_mansion:entities/player/animation/set/none