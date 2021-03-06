execute if entity @s[tag=dying,tag=boo_death] run function luigis_mansion:entities/ghost/death
execute if entity @s[tag=dying,tag=boo_hurt] run function luigis_mansion:entities/ghost/death

execute if entity @s[tag=dying,scores={DeathTime=1}] if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.king_boo{loot_at_0:1b} run function luigis_mansion:entities/king_boo/drop_loot
execute if entity @s[tag=dead] run function luigis_mansion:entities/king_boo/at_death

execute if entity @s[tag=!boo_hurt,tag=fleeing,tag=!dying] run function luigis_mansion:entities/king_boo/hurt
execute if entity @s[tag=boo_hurt,tag=!dying] run function luigis_mansion:entities/king_boo/hurt
execute if entity @s[tag=fleeing] run function luigis_mansion:entities/king_boo/flee

execute if entity @s[scores={HurtTime=1},tag=boo_hurt,tag=!fleeing] run playsound luigis_mansion:entity.king_boo.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=boo_hurt,tag=!fleeing] Sound 40
execute if entity @s[scores={Sound=0},tag=fleeing,tag=!dying] run playsound luigis_mansion:entity.king_boo.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0}] Sound 40

execute at @s[tag=magic] run function luigis_mansion:animations/boo/magic
execute at @s[tag=laugh] run function luigis_mansion:entities/king_boo/laugh
execute at @s[tag=complain] run function luigis_mansion:animations/boo/hurt
execute at @s[tag=appear] run function luigis_mansion:animations/boo/appear
execute at @s[tag=fleeing] run function luigis_mansion:animations/boo/flee
execute at @s[tag=!fleeing,tag=boo_hurt] run function luigis_mansion:animations/boo/hurt
execute at @s[tag=!fleeing,tag=!boo_hurt,tag=!magic,tag=!complain,tag=!appear,tag=!laugh] run function luigis_mansion:animations/boo/idle

scoreboard players set @s[tag=!boo_hurt,tag=!fleeing,tag=!attack,tag=!laugh,tag=!taunt,tag=!dying,tag=!cutscene] ActionTime 0
scoreboard players reset @s[tag=!boo_hurt,tag=!fleeing,tag=!attack,tag=!laugh,tag=!taunt,tag=!dying] HurtTime
tag @s remove disappear
tag @s remove fleeing

function #luigis_mansion:entities/king_boo/tick
tag @s[tag=vanish] add dead
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.king_boo.health int 1 run scoreboard players get @s Health
tag @s remove boo_hurt
tag @s remove in_vacuum
tag @s remove is_pulled

execute store result entity @s Pose.Head[0] float 0.01 run data get entity @s Rotation[1] 100
execute store result entity @s Pose.RightArm[1] float -0.01 run data get entity @s Rotation[1] 100
execute store result entity @s Pose.LeftArm[1] float 0.01 run data get entity @s Rotation[1] 100
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall