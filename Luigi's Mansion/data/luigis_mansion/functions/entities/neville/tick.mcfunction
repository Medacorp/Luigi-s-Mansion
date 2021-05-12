scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=neville_body] if score @s GhostNr = #temp GhostNr run tag @s add this_model

execute if entity @s[tag=dying,scores={HurtTime=1}] run playsound luigis_mansion:entity.neville.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run loot spawn ~ ~ ~ loot luigis_mansion:entities/ghost/neville
execute if entity @s[tag=dead] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.6 0.2 1 30
execute if entity @s[tag=dead] run teleport @s ~ -100 ~
execute if entity @s[tag=dead] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.neville.health int 1 run scoreboard players set @s Health 0
execute if entity @s[tag=dead] run advancement grant @a only luigis_mansion:portrait_ghosts/neville
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.neville.health int 1 run scoreboard players operation @s LastHealth = @s Health

execute if entity @s[scores={HurtTime=1},tag=hurt] run playsound luigis_mansion:entity.neville.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt] Sound 40
execute if entity @s[scores={Sound=0},tag=fleeing] run playsound luigis_mansion:entity.neville.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=fleeing] Sound 40

execute if entity @s[tag=!fleeing,tag=!hurt,tag=!vanish,scores={StunTime=0}] run function luigis_mansion:entities/neville/yawn

execute if entity @s[tag=vanish,scores={VulnerableTime=1..}] run playsound luigis_mansion:entity.neville.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=vanish] run function luigis_mansion:entities/neville/vanish
execute at @s[tag=yawn,tag=!fleeing,tag=!hurt,tag=!vanish,scores={StunTime=0}] run function luigis_mansion:animations/neville/yawn
execute at @s[tag=!hurt,tag=!fleeing,tag=!yawn,tag=!vanish,scores={StunTime=0}] run function luigis_mansion:animations/neville/idle
execute at @s[tag=fleeing] run function luigis_mansion:animations/neville/flee
execute if entity @s[tag=!fleeing,tag=hurt] run function luigis_mansion:entities/neville/drop_book
execute at @s[tag=!fleeing,tag=hurt] run function luigis_mansion:animations/neville/hurt

execute at @s[scores={StunTime=0}] if entity @e[tag=rocking_chair,distance=..2,scores={AnimationProg=1..20},limit=1] run teleport @s ^ ^ ^0.01
execute at @s[scores={StunTime=0}] if entity @e[tag=rocking_chair,distance=..2,scores={AnimationProg=21..60},limit=1] run teleport @s ^ ^ ^-0.01
execute at @s[scores={StunTime=0}] if entity @e[tag=rocking_chair,distance=..2,scores={AnimationProg=61..80},limit=1] run teleport @s ^ ^ ^0.01

execute unless entity @s[tag=!dead,tag=!remove_from_existence] run teleport @e[tag=this_model] ~ -100 ~
execute unless entity @s[tag=!dead,tag=!remove_from_existence] run tag @e[tag=this_model] add dead

scoreboard players reset #temp GhostNr
tag @e[tag=this_model,limit=1] remove this_model