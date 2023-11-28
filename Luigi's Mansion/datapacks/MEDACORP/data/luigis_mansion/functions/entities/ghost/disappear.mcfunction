function luigis_mansion:entities/ghost/turn_invisible
execute if entity @s[tag=no_hidden_move] run teleport @s ~ ~ ~ ~ 90
execute if entity @s[tag=!no_hidden_move] run teleport @s ~ ~ ~ ~ 0
execute if entity @s[scores={HomeX=-2147483648..}] store result entity @s Pos[0] double 0.01 run scoreboard players get @s HomeX
execute if entity @s[scores={HomeY=-2147483648..}] store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY
execute if entity @s[scores={HomeZ=-2147483648..}] store result entity @s Pos[2] double 0.01 run scoreboard players get @s HomeZ
execute at @s[tag=!no_hidden_move] run function luigis_mansion:entities/ghost/hidden/turn
tag @s[tag=disappear_on_vanish] add remove_from_existence
scoreboard players set @s SpawnTime 200
scoreboard players set @s Time 0
scoreboard players set @s ActionTime 0
scoreboard players set @s PathStep 0
scoreboard players set @s ErrorTime 0
scoreboard players reset @s SecondFleeState
scoreboard players operation @s LastHealth = @s Health
tag @s remove disappear
tag @s remove disappear_next_tick
tag @s remove hurt_animation
tag @s remove vanish
tag @s remove visible
tag @s remove second_flee_state
tag @s remove smug
tag @s remove laugh
tag @s remove attack
tag @s remove complain
tag @s add hidden