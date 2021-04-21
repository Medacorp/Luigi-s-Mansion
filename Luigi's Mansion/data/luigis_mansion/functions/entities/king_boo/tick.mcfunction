execute if entity @s[tag=dying,tag=boo_death] run function luigis_mansion:entities/ghost/death
execute if entity @s[tag=dying,tag=boo_hurt] run function luigis_mansion:entities/ghost/death

execute if entity @s[tag=dying,scores={HurtTime=1}] run playsound luigis_mansion:entity.king_boo.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead,tag=!warp,tag=!secret_altar] run loot spawn ~ ~ ~ loot luigis_mansion:entities/ghost/king_boo
execute if entity @s[tag=dead,tag=!warp,tag=!secret_altar] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.6 0.2 1 30
execute if entity @s[tag=dead] run teleport @s ~ -100 ~
execute if entity @s[tag=dead] run tag @e[tag=bowser] add dead
execute if entity @s[tag=dead] run tag @e[tag=bowser_body] add dead
execute if entity @s[tag=dead,tag=!warp,tag=!secret_altar] as @p run function luigis_mansion:items/red_diamond
execute if entity @s[tag=dead,tag=!warp,tag=!secret_altar] as @a run function luigis_mansion:entities/ghost/boss_damage
execute if entity @s[tag=dead,tag=!warp,tag=!secret_altar] if score #temp Damage matches ..9 run data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.king_boo.rank set value 2b
execute if entity @s[tag=dead,tag=!warp,tag=!secret_altar] if score #temp Damage matches 10..49 run data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.king_boo.rank set value 1b
execute if entity @s[tag=dead,tag=!warp,tag=!secret_altar] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.king_boo.health int 1 run scoreboard players set @s Health 0
execute if entity @s[tag=dead,tag=!warp,tag=!secret_altar] run advancement grant @a only luigis_mansion:portrait_ghosts/king_boo
execute if entity @s[tag=dead,tag=!warp,tag=!secret_altar] run scoreboard players reset #temp Damage
execute if entity @s[tag=dead,tag=!warp,tag=!secret_altar] run data modify storage luigis_mansion:data current_state.current_data.rooms.secret_altar merge value {cleared:1b}
execute if entity @s[tag=dead,tag=!warp,tag=!secret_altar] run scoreboard players reset #secret_altar Ticking
execute if entity @s[tag=dead,tag=!warp,tag=!secret_altar] as @a run function #luigis_mansion:entities/king_boo/return
execute if entity @s[tag=disappear,tag=!warp,tag=!secret_altar] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.king_boo.health int 1 run scoreboard players operation @s LastHealth = @s Health

execute if entity @s[tag=!boo_hurt,tag=fleeing,tag=!dying] run function luigis_mansion:entities/king_boo/hurt
execute if entity @s[tag=boo_hurt,tag=!dying] run function luigis_mansion:entities/king_boo/hurt
execute if entity @s[tag=fleeing] run function luigis_mansion:entities/king_boo/flee

execute if entity @s[scores={HurtTime=1},tag=boo_hurt] run playsound luigis_mansion:entity.king_boo.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=boo_hurt] Sound 40
execute if entity @s[scores={Sound=0},tag=fleeing] run playsound luigis_mansion:entity.king_boo.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0}] Sound 40

execute if entity @a[gamemode=!spectator,distance=..0.7,limit=1] if entity @s[tag=!dying,tag=!dead,tag=!removed_from_existence] run function luigis_mansion:entities/king_boo/collide

execute at @s[tag=warp] facing entity @p[gamemode=!spectator,tag=same_room] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!fleeing,tag=taunt] run function luigis_mansion:entities/king_boo/taunt
execute at @s[tag=fleeing] run function luigis_mansion:animations/boo/flee
execute at @s[tag=!fleeing,tag=boo_hurt] run function luigis_mansion:animations/boo/hurt
execute at @s[tag=!fleeing,tag=!boo_hurt,tag=!taunt] run function luigis_mansion:animations/boo/idle

scoreboard players set @s[tag=!boo_hurt,tag=!fleeing,tag=!attack,tag=!laugh,tag=!taunt,tag=!dying,tag=!cutscene] ActionTime 0
scoreboard players reset @s[tag=!boo_hurt,tag=!fleeing,tag=!attack,tag=!laugh,tag=!taunt,tag=!dying] HurtTime
tag @s remove disappear
tag @s remove fleeing

execute if entity @s[tag=warp,scores={Room=1..}] run function #luigis_mansion:entities/king_boo/warp
execute if entity @s[tag=secret_altar] run function luigis_mansion:entities/king_boo/secret_altar
execute if entity @s[tag=cutscene] run function luigis_mansion:entities/king_boo/cutscene
execute if entity @s[tag=battle] run function luigis_mansion:entities/king_boo/battle
tag @s[tag=vanish] add dead
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.king_boo.health int 1 run scoreboard players get @s Health
tag @s remove boo_hurt
tag @s remove in_vacuum

execute store result entity @s Pose.Head[0] float 0.01 run data get entity @s Rotation[1] 100
execute store result entity @s Pose.RightArm[2] float 0.01 run data get entity @s Rotation[1] 100
execute store result entity @s Pose.LeftArm[2] float 0.01 run data get entity @s Rotation[1] 100