tag @s add animation_may_move
execute at @s[scores={IdleTime=-60,Sound=0,Shrunk=0}] run playsound luigis_mansion:entity.player.hurt_burn player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={IdleTime=-60,Sound=0,Shrunk=1..}] run playsound luigis_mansion:entity.player.hurt_burn player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={IdleTime=-60,Sound=0}] Sound 55
execute at @s[scores={IdleTime=..-21}] if score #mirrored Selected matches 0 run teleport @s ^ ^ ^ ~-9 ~
execute at @s[scores={IdleTime=..-21}] if score #mirrored Selected matches 1 run teleport @s ^ ^ ^ ~9 ~
execute at @s[scores={IdleTime=-5,Sound=0,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.recover.high_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={IdleTime=-5,Sound=0,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.recover.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @s[scores={IdleTime=-5,Sound=0,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.recover.low_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={IdleTime=-5,Sound=0,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.recover.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={IdleTime=-5,Sound=0}] Sound 10

tag @s remove vacuuming_ghost