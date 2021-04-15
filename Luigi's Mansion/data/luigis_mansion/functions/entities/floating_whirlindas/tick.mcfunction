scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=floating_whirlindas_body] if score @s GhostNr = #temp GhostNr run tag @s add this_floating_whirlindas_body
execute as @e[tag=floating_whirlindas_female] if score @s GhostNr = #temp GhostNr run tag @s add this_floating_whirlindas_female
execute as @e[tag=floating_whirlindas_female_body] if score @s GhostNr = #temp GhostNr run tag @s add this_floating_whirlindas_female_body

execute if entity @s[tag=dying,scores={HurtTime=1}] run playsound luigis_mansion:entity.floating_whirlindas.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run loot spawn ~ ~ ~ loot luigis_mansion:entities/ghost/floating_whirlindas
execute if entity @s[tag=dead] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.6 0.2 1 30
execute if entity @s[tag=dead] run teleport @s ~ -100 ~
execute if entity @s[tag=dead] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.floating_whirlindas.health int 1 run scoreboard players set @s Health 0
execute if entity @s[tag=dead] run advancement grant @a only luigis_mansion:portrait_ghosts/floating_whirlindas
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.floating_whirlindas.health int 1 run scoreboard players operation @s LastHealth = @s Health

execute if entity @s[scores={HurtTime=1},tag=hurt] run playsound luigis_mansion:entity.floating_whirlindas.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt] Sound 40
execute if entity @s[scores={Sound=0},tag=fleeing] run playsound luigis_mansion:entity.floating_whirlindas.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=fleeing] Sound 40

execute at @s[tag=!fleeing,scores={StunTime=0}] run function #luigis_mansion:entities/floating_whirlindas/dance
execute at @s unless entity @s[tag=!fleeing,tag=!hurt] run teleport @e[tag=floating_whirlindas_female,limit=1] ^-0.5 ^ ^1 ~ ~

execute if entity @s[tag=vanish] run function luigis_mansion:entities/floating_whirlindas/vanish
execute at @s[tag=bow,tag=!fleeing,tag=!hurt,scores={StunTime=0}] run function luigis_mansion:animations/floating_whirlindas/bow
execute at @s[tag=!hurt,tag=!fleeing,tag=!bow,tag=!vanish,scores={StunTime=0}] run function luigis_mansion:animations/floating_whirlindas/idle
execute at @s[tag=fleeing] run function luigis_mansion:animations/floating_whirlindas/flee
execute at @s[tag=!fleeing,tag=hurt] run function luigis_mansion:animations/floating_whirlindas/hurt

execute unless entity @s[tag=!dead,tag=!remove_from_existence] run teleport @e[tag=this_floating_whirlindas_body] ~ -100 ~
execute unless entity @s[tag=!dead,tag=!remove_from_existence] run teleport @e[tag=this_floating_whirlindas_female] ~ -100 ~
execute unless entity @s[tag=!dead,tag=!remove_from_existence] run teleport @e[tag=this_floating_whirlindas_female_body] ~ -100 ~
execute unless entity @s[tag=!dead,tag=!remove_from_existence] run tag @e[tag=this_floating_whirlindas_body] add dead
execute unless entity @s[tag=!dead,tag=!remove_from_existence] run tag @e[tag=this_floating_whirlindas_female] add dead
execute unless entity @s[tag=!dead,tag=!remove_from_existence] run tag @e[tag=this_floating_whirlindas_female_body] add dead

scoreboard players reset #temp GhostNr
tag @e[tag=this_floating_whirlindas_body,limit=1] remove this_floating_whirlindas_body
tag @e[tag=this_floating_whirlindas_female,limit=1] remove this_floating_whirlindas_female
tag @e[tag=this_floating_whirlindas_female_body,limit=1] remove this_floating_whirlindas_female_body