execute if entity @s[tag=dying,tag=boo_death] run function luigis_mansion:entities/ghost/death
execute if entity @s[tag=dying,tag=boo_hurt] run function luigis_mansion:entities/ghost/death

execute if entity @s[tag=dying,scores={HurtTime=1}] run playsound luigis_mansion:entity.boo.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead,tag=!warped] run loot spawn ~ ~ ~ loot luigis_mansion:entities/ghost/boo
execute if entity @s[tag=dead,tag=!warped] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.6 0.2 1 30
execute if entity @s[tag=dead] run teleport @s ~ -100 ~
execute if entity @s[tag=dead,tag=!warped] run function #luigis_mansion:entities/boo/captured
execute if entity @s[tag=!boo_hurt,tag=fleeing,tag=!dying] run function luigis_mansion:entities/boo/hurt
execute if entity @s[tag=boo_hurt,tag=!dying] run function luigis_mansion:entities/boo/hurt
execute if entity @s[tag=fleeing,tag=!dying] run function luigis_mansion:entities/boo/flee

execute if entity @s[scores={HurtTime=1},tag=boo_hurt] run playsound luigis_mansion:entity.boo.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=boo_hurt] Sound 40
execute if entity @s[scores={Sound=0},tag=fleeing] run playsound luigis_mansion:entity.boo.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0}] Sound 40

scoreboard players operation @s HallwaySection = @s RoomSection

execute if entity @a[gamemode=!spectator,distance=..0.7,limit=1] run function luigis_mansion:entities/boo/collide
execute if entity @s[tag=!fleeing,tag=!attack,tag=can_attack,tag=!laugh,tag=!taunt,tag=!appear] if predicate luigis_mansion:boo_attack_chance run tag @s add attack
tag @s[tag=fleeing] remove attack
execute if entity @s[tag=!fleeing,tag=attack,tag=!laugh,tag=!taunt,tag=!appear] run function luigis_mansion:entities/boo/attack

tag @s[tag=boo_hurt] remove rotated
tag @s[tag=attack] remove rotated
execute at @s[tag=laugh] facing entity @p[gamemode=!spectator] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=!fleeing,tag=!attack,tag=!laugh,tag=!taunt,tag=!boo_hurt,tag=!rotated,tag=!appear] run function luigis_mansion:entities/boo/rotate
execute if entity @s[scores={Time=120..},tag=!appear] run function luigis_mansion:entities/boo/turn
execute if score #temp Move matches 1.. at @s[tag=!fleeing,tag=!attack,tag=!laugh,tag=!taunt,tag=!boo_hurt,tag=!appear] unless entity @s[tag=!fleeing,tag=!attack,tag=!laugh,tag=!taunt,tag=!boo_hurt,tag=!north,tag=!east,tag=!south,tag=!west,tag=!up,tag=!down] run function luigis_mansion:entities/boo/move_forward
execute if score #temp Move matches 1.. at @s[tag=!fleeing,tag=!attack,tag=!laugh,tag=!taunt,tag=!boo_hurt,tag=!appear,tag=!north,tag=!east,tag=!south,tag=!west,tag=!up,tag=!down] run function luigis_mansion:entities/boo/move_forward_no_direction
scoreboard players add @s[tag=new_section] BooTimer 1
execute if entity @s[scores={BooTimer=3}] run function luigis_mansion:entities/boo/entered_new_section
scoreboard players reset @s[scores={BooTimer=3}] BooTimer
execute if entity @s[tag=remove_from_existence] run function #luigis_mansion:entities/boo/warp
execute if entity @s[tag=!dead] run function #luigis_mansion:entities/boo/direction
execute unless score @s HallwaySection = @s RoomSection run tag @s[tag=!appear] add new_section
execute if entity @s[tag=!dead,tag=wall] run function luigis_mansion:entities/boo/warp
execute if entity @s[tag=!fleeing,tag=laugh] run function luigis_mansion:entities/boo/laugh
execute if entity @s[tag=!fleeing,tag=taunt] run function luigis_mansion:entities/boo/taunt
execute if entity @s[tag=appear] run function luigis_mansion:entities/boo/appear
execute at @s[tag=!fleeing,tag=!boo_hurt,tag=!laugh,tag=!taunt,tag=!appear] run function luigis_mansion:animations/boo/idle
execute at @s[tag=fleeing] run function luigis_mansion:animations/boo/flee
execute at @s[tag=!fleeing,tag=boo_hurt] run function luigis_mansion:animations/boo/hurt
tag @s remove wall
tag @s[tag=!up,tag=!down,tag=!left,tag=!right] add can_attack

scoreboard players set @s[tag=!boo_hurt,tag=!fleeing,tag=!attack,tag=!laugh,tag=!taunt,tag=!dying] ActionTime 0
scoreboard players reset @s[tag=!boo_hurt,tag=!fleeing,tag=!attack,tag=!laugh,tag=!taunt,tag=!dying] HurtTime
tag @s remove disappear
tag @s remove fleeing
tag @s remove boo_hurt
tag @s remove in_vacuum

execute store result entity @s Pose.Head[0] float 0.01 run data get entity @s Rotation[1] 100
execute store result entity @s Pose.RightArm[2] float 0.01 run data get entity @s Rotation[1] 100
execute store result entity @s Pose.LeftArm[2] float 0.01 run data get entity @s Rotation[1] 100