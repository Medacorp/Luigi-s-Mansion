scoreboard players add @s[scores={ActionTime=72..131}] ActionTime 1
scoreboard players add @s[scores={ActionTime=1..70}] ActionTime 1
execute unless entity @s[scores={ActionTime=1..}] run scoreboard players set @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] store result score @s HomeY run data get entity @s Pos[1] 100
execute if entity @s[scores={ActionTime=1}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"falling_chandelier"},progress:0,room:0}
execute if entity @s[scores={ActionTime=1}] store result storage luigis_mansion:data dialogs[-1].room int 1 run scoreboard players get @s Room
scoreboard players set @s[scores={ActionTime=1}] Sound 0
execute if entity @s[scores={ActionTime=21}] align xz run playsound luigis_mansion:furniture.chandelier.spin hostile @a[tag=same_room] ~ ~11 ~ 2
execute if entity @s[scores={ActionTime=31}] align xz run playsound luigis_mansion:furniture.chandelier.spin hostile @a[tag=same_room] ~ ~11 ~ 2
execute if entity @s[scores={ActionTime=41}] align xz run playsound luigis_mansion:furniture.chandelier.spin hostile @a[tag=same_room] ~ ~11 ~ 2
execute if entity @s[scores={ActionTime=51}] align xz run playsound luigis_mansion:furniture.chandelier.spin hostile @a[tag=same_room] ~ ~11 ~ 2
execute if entity @s[scores={ActionTime=61}] align xz run playsound luigis_mansion:furniture.chandelier.spin hostile @a[tag=same_room] ~ ~11 ~ 2
execute if entity @s[scores={ActionTime=71,Sound=0}] align xz run playsound luigis_mansion:furniture.chandelier.fall hostile @a[tag=same_room] ~ ~5 ~ 2
scoreboard players set @s[scores={ActionTime=71,Sound=0}] Sound 10
teleport @s[scores={ActionTime=71}] ~ ~-1 ~
execute at @s[scores={ActionTime=71}] run clone ~-2 ~1 ~-2 ~1 ~3 ~1 ~-2 ~ ~-2 replace force
execute at @s[scores={ActionTime=71}] run fill ~-2 ~ ~-2 ~1 ~3 ~1 minecraft:air replace minecraft:light
execute at @s[scores={ActionTime=21..71}] align xz if entity @e[tag=luigi,distance=..2,scores={Invulnerable=0}] run tag @s add hit
execute at @s[scores={ActionTime=21..71}] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"chandelier"},amount:10,animation:{namespace:"luigis_mansion",id:"knockback/large"},no_delete:1b}
execute at @s[scores={ActionTime=21..71}] align xz as @e[tag=luigi,distance=..2] run function luigis_mansion:entities/luigi/damage
execute at @s[scores={ActionTime=21..71}] run data remove storage luigis_mansion:data damage
execute at @s[scores={ActionTime=71}] unless block ~ ~-1 ~ minecraft:air run scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=72}] align xz run playsound luigis_mansion:furniture.chandelier.land hostile @a[tag=same_room] ~ ~ ~ 2
execute if entity @s[scores={ActionTime=92},tag=hit] align xz run playsound luigis_mansion:entity.ghost.laugh hostile @a[tag=same_room] ~ ~ ~ 2
execute if entity @s[scores={ActionTime=92},tag=!hit] align xz run playsound luigis_mansion:entity.ghost.complain hostile @a[tag=same_room] ~ ~ ~ 2
teleport @s[scores={ActionTime=132}] ~ ~0.125 ~
execute at @s[scores={ActionTime=132}] run fill ~-2 ~ ~-2 ~1 ~4 ~1 minecraft:air replace minecraft:light
execute store result score @s Time run data get entity @s Pos[1] 100
execute at @s[scores={ActionTime=132,Sound=0}] align xz run playsound luigis_mansion:furniture.chandelier.rise hostile @a[tag=same_room] ~ ~ ~ 2
scoreboard players set @s[scores={ActionTime=132,Sound=0}] Sound 10
execute at @s[scores={ActionTime=132}] unless block ~ ~-0.125 ~ minecraft:air run clone ~-2 ~-0.125 ~-2 ~1 ~0.875 ~1 ~-2 ~0.875 ~-2 replace move
execute if entity @s[scores={ActionTime=132}] if score @s Time = @s HomeY run scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=133}] align xz run playsound luigis_mansion:furniture.chandelier.stop hostile @a[tag=same_room] ~ ~11 ~ 2
kill @s[scores={ActionTime=133}]
tag @s remove dead
tag @s remove remove_from_existence