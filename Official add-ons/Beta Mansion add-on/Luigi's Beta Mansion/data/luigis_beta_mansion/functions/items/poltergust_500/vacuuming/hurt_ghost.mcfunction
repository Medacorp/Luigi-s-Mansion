tag @s add is_pulled
tag @a[tag=me,limit=1] add is_pulling
execute unless entity @s[scores={ErrorTime=1..}] unless entity @a[tag=me,limit=1,scores={ErrorTime=1..}] run function luigis_mansion:entities/ghost/hurt_pull
execute unless entity @s[scores={ErrorTime=1..}] if entity @a[tag=me,limit=1,scores={ErrorTime=1..}] run function luigis_mansion:entities/ghost/hurt_pull_strong
execute if entity @s[scores={ErrorTime=1..}] run function luigis_mansion:entities/ghost/hurt_pull_strong
execute if entity @s[scores={Health=..0}] run playsound luigis_beta_mansion:item.poltergust_500.reel_in player @a[tag=same_room] ~ ~ ~ 1

execute as @a[tag=me,scores={Sound=0,Health=41..,Shrunk=0},tag=!gooigi,limit=1] at @s run playsound luigis_mansion:entity.player.pull.high_health player @a[tag=same_room] ~ ~ ~ 1
execute as @a[tag=me,scores={Sound=0,Health=41..,Shrunk=1..},tag=!gooigi,limit=1] at @s run playsound luigis_mansion:entity.player.pull.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute as @a[tag=me,scores={Sound=0,Health=..40,Shrunk=0},tag=!gooigi,limit=1] at @s run playsound luigis_mansion:entity.player.pull.low_health player @a[tag=same_room] ~ ~ ~ 1
execute as @a[tag=me,scores={Sound=0,Health=..40,Shrunk=1..},tag=!gooigi,limit=1] at @s run playsound luigis_mansion:entity.player.pull.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @a[tag=me,scores={Sound=0}] Sound 10