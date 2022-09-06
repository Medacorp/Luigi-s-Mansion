execute if entity @s[tag=dead] run playsound luigis_beta_mansion:entity.boo.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.2 0.2 1 10
execute if entity @s[tag=dead] run function luigis_beta_mansion:entities/beta_boo/drop_loot

execute if entity @e[tag=same_room,tag=!spectator,distance=..0.7,limit=1] if entity @s[tag=visible] run function luigis_beta_mansion:entities/beta_boo/collide

execute if entity @s[tag=!visible,tag=!turned] run function luigis_beta_mansion:entities/beta_boo/initial_rotation
execute store result score #temp Room run scoreboard players get @s Room
execute as @e[tag=beta_boo,tag=visible] if score @s Room = #temp Room run scoreboard players add #temp ActionTime 1
execute unless score #temp ActionTime matches 2.. unless entity @e[distance=..0.7,tag=same_room,tag=!spectator,limit=1] unless entity @e[tag=beta_boo,tag=visible,distance=..0.7] run tag @s add visible
scoreboard players reset #temp ActionTime
scoreboard players reset #temp Room

data modify entity @s[tag=visible] ArmorItems[3].id set value "minecraft:diamond_pickaxe"
data modify entity @s[tag=visible] HandItems[0].id set value "minecraft:diamond_pickaxe"
data modify entity @s[tag=visible] HandItems[1].id set value "minecraft:diamond_pickaxe"

tag @s remove shy
execute if entity @s[tag=visible] at @e[tag=same_room,tag=!spectator] positioned ^ ^ ^5 run tag @s[distance=..5] add shy
scoreboard players set @s[tag=shy,tag=!was_shy] AnimationProg 0
scoreboard players set @s[tag=!shy,tag=was_shy] AnimationProg 0
execute at @s[tag=!fleeing,tag=!shy,tag=visible] run function luigis_mansion:animations/boo/idle
execute at @s[tag=!fleeing,tag=shy,tag=visible] run function luigis_beta_mansion:animations/boo/shy
execute at @s[tag=fleeing,tag=visible] run function luigis_mansion:animations/boo/flee

tag @s[tag=shy] add was_shy
tag @s[tag=!shy] remove was_shy
execute if entity @s[tag=fleeing] run scoreboard players set #temp Move 12
execute at @s[tag=visible,tag=fleeing] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~-180 ~
execute at @s[tag=visible,tag=fleeing] store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute at @s[tag=visible] unless entity @s[tag=shy,tag=!fleeing] run function luigis_beta_mansion:entities/beta_boo/move
execute at @s[tag=visible] unless entity @s[tag=shy,tag=!fleeing] if block ~ ~-0.01 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~-0.01 ~
execute at @s[tag=visible,tag=shy,tag=!fleeing] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute at @s[scores={Turn=0},tag=visible,tag=!shy,tag=!fleeing] run function luigis_beta_mansion:entities/beta_boo/turn
scoreboard players remove @s[scores={Turn=1..},tag=visible,tag=!shy,tag=!fleeing] Turn 1
execute at @s[tag=visible,scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall

execute store result entity @s Pose.Head[0] float 0.01 run data get entity @s Rotation[1] 100
execute store result entity @s Pose.RightArm[1] float -0.01 run data get entity @s Rotation[1] 100
execute store result entity @s Pose.LeftArm[1] float 0.01 run data get entity @s Rotation[1] 100

tag @s remove fleeing