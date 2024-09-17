scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=5,Sound=0,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.scare.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=5,Sound=0,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.scare.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={AnimationProgress=5,Sound=0,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.scare.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=5,Sound=0,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.scare.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={AnimationProgress=5,Sound=0}] Sound 8
execute if entity @s[scores={AnimationProgress=15}] run data modify storage luigis_mansion:data damage set value {amount:0}
execute if entity @s[scores={AnimationProgress=15}] store result storage luigis_mansion:data damage.amount int 1 run scoreboard players get @s KnockbackDamage
execute if entity @s[scores={AnimationProgress=15}] if data storage luigis_mansion:data my_memory.hurt_by.attacker[0] run data modify storage luigis_mansion:data damage.attacker set from storage luigis_mansion:data my_memory.hurt_by.attacker[0].id
execute if entity @s[scores={AnimationProgress=15}] run function luigis_mansion:entities/player/damage
summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PositionX
execute store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PositionY
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PositionZ
execute store result entity @e[tag=home,limit=1] Rotation[0] float 1 run scoreboard players get @s RotationY
execute store result entity @e[tag=home,limit=1] Rotation[1] float 1 run scoreboard players get @s RotationX
execute at @e[tag=home,limit=1] run tp @s ~ 0 ~ ~ ~
execute at @e[tag=home,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s[scores={AnimationProgress=5..24}] rotated ~9 0 run teleport @s ^ ^ ^-0.07 ~ ~
execute if entity @s[scores={AnimationProgress=25,Sound=0,Shrunk=0}] run playsound luigis_mansion:entity.player.hurt_little player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=25,Sound=0,Shrunk=1..}] run playsound luigis_mansion:entity.player.hurt_little player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={AnimationProgress=25,Sound=0}] Sound 95
execute at @s[scores={AnimationProgress=60..80}] rotated ~ 0 run teleport @s ^ ^ ^0.05
execute at @s[scores={AnimationProgress=60..80}] run teleport @s ^ ^ ^ ~ ~3
execute at @s[scores={AnimationProgress=121..130}] run teleport @s ^ ^ ^ ~ ~-9
execute if entity @s[scores={AnimationProgress=120,Sound=0,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.sigh.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=120,Sound=0,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.sigh.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={AnimationProgress=120,Sound=0,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.sigh.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=120,Sound=0,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.sigh.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={AnimationProgress=120,Sound=0}] Sound 20
tag @s add pause_dialog
tag @s add door_animation
kill @e[tag=home,limit=1]
tag @s remove new_poltergust_grabbed
tag @s remove poltergust_grabbed
tag @s remove vacuuming_ghost
tag @s add disable_flashlight
tag @s add disable_game_boy_horror
tag @s add disable_interact
tag @s add disable_poltergust
tag @s add animation_may_move
tag @s[scores={AnimationProgress=140}] remove door_animation
execute if entity @s[scores={AnimationProgress=140}] run function luigis_mansion:entities/player/animation/set/none