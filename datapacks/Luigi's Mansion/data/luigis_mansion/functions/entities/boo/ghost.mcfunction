execute if entity @s[tag=dying,tag=boo_death] run function luigis_mansion:entities/ghost/death
execute if entity @s[tag=dying,tag=boo_hurt] run function luigis_mansion:entities/ghost/death

tag @s remove dark_room
function #luigis_mansion:room/dark_room
execute if entity @s[tag=dying,scores={HurtTime=1}] run playsound luigis_mansion:entity.boo.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead,tag=!warped] run function luigis_mansion:entities/boo/drop_loot
execute if entity @s[tag=dead,tag=!warped] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.6 0.2 1 30
execute if entity @s[tag=dead] run teleport @s ~ -100 ~
execute if entity @s[tag=!boo_hurt,tag=fleeing,tag=!dying] run function luigis_mansion:entities/boo/hurt
execute if entity @s[tag=boo_hurt,tag=!dying] run function luigis_mansion:entities/boo/hurt
execute if entity @s[tag=fleeing,tag=!dying] run function luigis_mansion:entities/boo/flee

execute unless entity @s[scores={Dialog=2..}] run scoreboard players set @s[tag=frozen] AnimationProg 0
execute unless entity @s[scores={Dialog=2..}] run scoreboard players set @s[tag=frozen] Dialog 40
scoreboard players remove @s[scores={Dialog=1..}] Dialog 1
tag @s[scores={Dialog=0}] remove frozen
execute at @s[tag=frozen] run particle minecraft:firework ~ ~1 ~ 0.2 0.2 0.2 0 1

execute if entity @s[scores={HurtTime=1},tag=boo_hurt,tag=!fleeing,tag=!frozen] run playsound luigis_mansion:entity.boo.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=boo_hurt,tag=!fleeing,tag=!frozen] Sound 40
execute if entity @s[scores={Sound=0},tag=fleeing,tag=!frozen] run playsound luigis_mansion:entity.boo.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=fleeing,tag=!frozen] Sound 40

scoreboard players operation #temp RoomSection = @s RoomSection

execute if entity @a[gamemode=!spectator,distance=..0.7,limit=1] if entity @s[tag=!dying,tag=!dead,tag=!removed_from_existence,tag=!appear] run function luigis_mansion:entities/boo/collide
execute if entity @s[tag=!fleeing,tag=!attack,tag=can_attack,tag=!laugh,tag=!taunt,tag=!appear,tag=!frozen] if predicate luigis_mansion:boo_attack_chance run tag @s add attack
tag @s[tag=fleeing] remove attack
execute if entity @s[tag=!fleeing,tag=attack,tag=!laugh,tag=!taunt,tag=!appear] run function luigis_mansion:entities/boo/attack

tag @s[tag=boo_hurt] remove rotated
tag @s[tag=attack] remove rotated
execute at @s unless entity @s[tag=!laugh,tag=!taunt] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=!fleeing,tag=!attack,tag=!laugh,tag=!taunt,tag=!boo_hurt,tag=!rotated,tag=!appear,tag=!frozen] run function luigis_mansion:entities/boo/rotate
execute if entity @s[scores={Time=120..},tag=!attack,tag=!appear,tag=!north,tag=!east,tag=!south,tag=!west,tag=!up,tag=!down,tag=!frozen] run function luigis_mansion:entities/boo/turn
execute if score #temp Move matches 1.. at @s[tag=!fleeing,tag=!attack,tag=!laugh,tag=!taunt,tag=!boo_hurt,tag=!appear,tag=move_up,tag=!frozen] unless entity @s[tag=up,x_rotation=-90] run function luigis_mansion:entities/boo/move_up
execute if score #temp Move matches 1.. at @s[tag=!fleeing,tag=!attack,tag=!laugh,tag=!taunt,tag=!boo_hurt,tag=!appear,tag=!move_up,tag=!frozen] unless entity @s[tag=down,x_rotation=90] run function luigis_mansion:entities/boo/move_down
execute if score #temp Move matches 1.. at @s[tag=!fleeing,tag=!attack,tag=!laugh,tag=!taunt,tag=!boo_hurt,tag=!appear,tag=up,tag=!frozen,x_rotation=-90] run function luigis_mansion:entities/boo/move_forward
execute if score #temp Move matches 1.. at @s[tag=!fleeing,tag=!attack,tag=!laugh,tag=!taunt,tag=!boo_hurt,tag=!appear,tag=down,tag=!frozen,x_rotation=90] run function luigis_mansion:entities/boo/move_forward

scoreboard players add @s[tag=new_section,tag=!frozen] BooTimer 1
execute if entity @s[scores={BooTimer=3},tag=!frozen] run function luigis_mansion:entities/boo/entered_new_section
scoreboard players reset @s[scores={BooTimer=3},tag=!frozen] BooTimer
execute if entity @s[tag=remove_from_existence] run function #luigis_mansion:entities/boo/warp
execute if entity @s[tag=!dead,tag=!frozen] run function #luigis_mansion:entities/boo/direction
execute unless score #temp RoomSection = @s RoomSection run tag @s[scores={RoomSection=1..},tag=!appear] add new_section
execute if entity @s[tag=!dead,tag=wall,tag=!frozen] run function luigis_mansion:entities/boo/warp
execute if entity @s[tag=!fleeing,tag=taunt,tag=!frozen] run function luigis_mansion:entities/boo/taunt
execute if entity @s[tag=!fleeing,tag=laugh,tag=!frozen] run function luigis_mansion:entities/boo/laugh
execute if entity @s[tag=appear,tag=!frozen] run function luigis_mansion:entities/boo/appear
execute at @s[tag=!fleeing,tag=!boo_hurt,tag=!laugh,tag=!taunt,tag=!appear,tag=!attack,tag=!frozen] run function luigis_mansion:animations/boo/idle
execute at @s[tag=frozen] run function luigis_mansion:animations/boo/frozen
execute at @s[tag=fleeing,tag=!frozen] run function luigis_mansion:animations/boo/flee
execute at @s[tag=!fleeing,tag=boo_hurt,tag=!frozen] run function luigis_mansion:animations/boo/hurt
tag @s remove wall
tag @s[tag=!up,tag=!down,tag=!left,tag=!right] add can_attack

scoreboard players set @s[tag=!boo_hurt,tag=!fleeing,tag=!attack,tag=!laugh,tag=!taunt,tag=!dying,tag=!frozen] ActionTime 0
scoreboard players reset @s[tag=!boo_hurt,tag=!fleeing,tag=!attack,tag=!laugh,tag=!taunt,tag=!dying,tag=!frozen] HurtTime
tag @s remove disappear
tag @s remove fleeing
tag @s remove boo_hurt
tag @s remove in_vacuum
scoreboard players reset #temp RoomSection

execute store result entity @s Pose.Head[0] float 0.01 run data get entity @s Rotation[1] 100
execute store result entity @s Pose.RightArm[1] float -0.01 run data get entity @s Rotation[1] 100
execute store result entity @s Pose.LeftArm[1] float 0.01 run data get entity @s Rotation[1] 100