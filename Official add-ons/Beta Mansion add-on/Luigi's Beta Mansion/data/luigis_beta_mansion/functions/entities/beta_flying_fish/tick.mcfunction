execute if entity @s[tag=dead,tag=normal_death] run playsound luigis_beta_mansion:entity.flying_fish.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead,tag=element_death] run playsound luigis_beta_mansion:entity.flying_fish.element_death hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run function luigis_beta_mansion:entities/beta_flying_fish/drop_loot
execute if entity @s[tag=dead] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.2 0.2 1 10
execute if entity @s[tag=dead] run teleport @s ~ -100 ~

tag @s remove fleeing

execute store result score #temp Room run scoreboard players get @s Room
execute as @e[tag=beta_flying_fish,tag=visible] if score @s Room = #temp Room run scoreboard players add #temp ActionTime 1
execute unless score #temp ActionTime matches 3.. unless entity @e[distance=..0.7,tag=same_room,tag=!spectator,limit=1] positioned ~-0.05 ~ ~ unless entity @e[tag=beta_flying_fish,tag=visible,distance=..0.55] run tag @s add visible
scoreboard players reset #temp ActionTime
scoreboard players reset #temp Room

data modify entity @s[tag=visible] ArmorItems[3].id set value "minecraft:leather_chestplate"
execute if entity @s[tag=visible] run function luigis_beta_mansion:entities/beta_flying_fish/circle
data modify entity @s Pose.Head[0] set from entity @s Rotation[1]
execute at @s[tag=visible,scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall