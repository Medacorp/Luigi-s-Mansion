scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=chauncey_body] if score @s GhostNr = #temp GhostNr run tag @s add this_model

execute if entity @s[tag=dying,scores={HurtTime=1}] run playsound luigis_mansion:entity.chauncey.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run function luigis_mansion:entities/chauncey/drop_loot
execute if entity @s[tag=dead] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.6 0.2 1 30
execute if entity @s[tag=dead] run teleport @s ~ -100 ~
execute if entity @s[tag=dead] as @a run function luigis_mansion:entities/ghost/boss_damage
execute if entity @s[tag=dead] if score #temp Damage matches ..9 run data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.chauncey.rank set value 2b
execute if entity @s[tag=dead] if score #temp Damage matches 10..49 run data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.chauncey.rank set value 1b
execute if entity @s[tag=dead] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.chauncey.health int 1 run scoreboard players set @s Health 0
execute if entity @s[tag=dead] run advancement grant @a only luigis_mansion:portrait_ghosts/chauncey
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.chauncey.health int 1 run scoreboard players operation @s LastHealth = @s Health
execute if entity @s[tag=dead] run scoreboard players reset #temp Damage
execute if entity @s[tag=dead] run data modify storage luigis_mansion:data current_state.current_data.rooms.nursery merge value {cleared:1b}
execute if entity @s[tag=dead] run scoreboard players reset #nursery Ticking
execute if entity @s[tag=dead] as @a run function luigis_mansion:entities/chauncey/return

execute if entity @s[scores={HurtTime=1},tag=hurt] run playsound luigis_mansion:entity.chauncey.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt] Sound 40
execute if entity @s[scores={Sound=0},tag=fleeing] run playsound luigis_mansion:entity.chauncey.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=fleeing] Sound 40

tag @s[tag=vanish,tag=fight] add disappear
execute if entity @s[tag=!fleeing,tag=!hurt] run function #luigis_mansion:entities/chauncey/tick
execute if entity @s[tag=attack] run function luigis_mansion:entities/chauncey/attack
execute if entity @s[tag=!fleeing,tag=!attack,tag=laugh] run function luigis_mansion:entities/chauncey/laugh
execute if entity @s[tag=!fleeing,tag=!attack,tag=complain] run function luigis_mansion:entities/chauncey/complain
execute if entity @s[tag=vanish,tag=!fight] run function luigis_mansion:entities/chauncey/vanish
execute at @s[tag=sleep] run function luigis_mansion:animations/chauncey/sleep
execute at @s[tag=wake_up] run function luigis_mansion:animations/chauncey/wake_up
execute at @s[tag=yawn] run function luigis_mansion:animations/chauncey/yawn
execute at @s[tag=move] run function luigis_mansion:animations/chauncey/move
execute at @s[tag=grab_rambler] run function luigis_mansion:animations/chauncey/grab_rambler
execute at @s[tag=rambling] run function luigis_mansion:animations/chauncey/rambling
execute at @s[tag=knocked_back] run function luigis_mansion:animations/chauncey/knocked_back
execute at @s[tag=look_down] run function luigis_mansion:animations/chauncey/look_down
execute at @s[tag=scream] run function luigis_mansion:animations/chauncey/scream
execute at @s[tag=wink] run function luigis_mansion:animations/chauncey/wink
execute at @s[tag=dizzy,tag=!fleeing,tag=!hurt,tag=!vanish] run function luigis_mansion:animations/chauncey/dizzy
execute at @s[tag=bounce] run function luigis_mansion:animations/chauncey/bounce
# run twice per tick
execute at @s[tag=fast_bounce] run function luigis_mansion:animations/chauncey/bounce
execute at @s[tag=fast_bounce] run function luigis_mansion:animations/chauncey/bounce
execute at @s[tag=!hurt,tag=!fleeing,tag=!scream,tag=!move,tag=!vanish,tag=!laugh,tag=!look_down,tag=!wink,tag=!sleep,tag=!grab_rambler,tag=!rambling,tag=!knocked_back,tag=!dizzy,tag=!bounce,tag=!fast_bounce,tag=!wake_up,tag=!yawn,tag=!attack,tag=!complain,scores={StunTime=0}] run function luigis_mansion:animations/chauncey/idle
execute at @s[tag=fleeing] run function luigis_mansion:animations/chauncey/flee
execute if entity @s[tag=!fleeing,tag=hurt] run function luigis_mansion:entities/chauncey/drop_rambler
execute at @s[tag=!fleeing,tag=hurt] run function luigis_mansion:animations/chauncey/hurt

execute unless entity @s[tag=!dead,tag=!remove_from_existence] run teleport @e[tag=this_model] ~ -100 ~
execute unless entity @s[tag=!dead,tag=!remove_from_existence] run tag @e[tag=this_model] add dead

scoreboard players reset #temp GhostNr
tag @e[tag=this_model,limit=1] remove this_model