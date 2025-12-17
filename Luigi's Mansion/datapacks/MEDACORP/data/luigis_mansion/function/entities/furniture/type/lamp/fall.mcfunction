scoreboard players add @s[scores={ActionTime=72..131}] ActionTime 1
scoreboard players add @s[scores={ActionTime=1..70}] ActionTime 1
execute unless entity @s[scores={ActionTime=1..}] run scoreboard players set @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] store result score @s HomeY run data get entity @s Pos[1] 100
execute if entity @s[scores={ActionTime=1}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"falling_chandelier"},progress:0,room:0}
execute if entity @s[scores={ActionTime=1}] store result storage luigis_mansion:data dialogs[-1].room int 1 run scoreboard players get @s Room
scoreboard players set @s[scores={ActionTime=1}] Sound 0
execute if entity @s[scores={ActionTime=21}] align xz run playsound luigis_mansion:furniture.chandelier.spin hostile @a[tag=same_room] ~ ~ ~ 5
execute if entity @s[scores={ActionTime=31}] align xz run playsound luigis_mansion:furniture.chandelier.spin hostile @a[tag=same_room] ~ ~ ~ 5
execute if entity @s[scores={ActionTime=41}] align xz run playsound luigis_mansion:furniture.chandelier.spin hostile @a[tag=same_room] ~ ~ ~ 5
execute if entity @s[scores={ActionTime=51}] align xz run playsound luigis_mansion:furniture.chandelier.spin hostile @a[tag=same_room] ~ ~ ~ 5
execute if entity @s[scores={ActionTime=61}] align xz run playsound luigis_mansion:furniture.chandelier.spin hostile @a[tag=same_room] ~ ~ ~ 5
execute if entity @s[scores={ActionTime=71,Sound=0}] align xz run playsound luigis_mansion:furniture.chandelier.fall hostile @a[tag=same_room] ~ ~ ~ 5
scoreboard players set @s[scores={ActionTime=71,Sound=0}] Sound 10
teleport @s[scores={ActionTime=71}] ~ ~-1 ~
execute at @s[scores={ActionTime=21..71}] align xz if entity @e[tag=luigi,distance=..2,scores={Invulnerable=0}] run tag @s add hit
execute at @s[scores={ActionTime=21..72}] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"chandelier"},amount:10,animation:{namespace:"luigis_mansion",id:"knockback/large"},no_delete:1b}
execute at @s[scores={ActionTime=21..72}] align xz as @e[tag=luigi,distance=..2] run function luigis_mansion:entities/luigi/damage
execute at @s[scores={ActionTime=21..72}] run data remove storage luigis_mansion:data damage
execute at @s[scores={ActionTime=71}] unless block ~ ~-1 ~ minecraft:air run scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=72}] align xz run playsound luigis_mansion:furniture.chandelier.land hostile @a[tag=same_room] ~ ~ ~ 5
execute if entity @s[scores={ActionTime=92},tag=hit] align xz run playsound luigis_mansion:entity.ghost.laugh hostile @a[tag=same_room] ~ ~ ~ 5
execute if entity @s[scores={ActionTime=92},tag=!hit] align xz run playsound luigis_mansion:entity.ghost.complain hostile @a[tag=same_room] ~ ~ ~ 5
teleport @s[scores={ActionTime=132}] ~ ~0.125 ~
execute store result score @s Time run data get entity @s Pos[1] 100
execute at @s[scores={ActionTime=132,Sound=0}] align xz run playsound luigis_mansion:furniture.chandelier.rise hostile @a[tag=same_room] ~ ~ ~ 5
scoreboard players set @s[scores={ActionTime=132,Sound=0}] Sound 10
execute if entity @s[scores={ActionTime=132}] if score @s Time = @s HomeY run scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=133}] align xz run playsound luigis_mansion:furniture.chandelier.stop hostile @a[tag=same_room] ~ ~ ~ 5
kill @s[scores={ActionTime=133}]
tag @s remove dead
tag @s remove remove_from_existence

summon minecraft:marker ~ ~1.43875 ~ {Tags:["location","remove_from_existence"]}
scoreboard players operation #temp Time = @s FurnitureLightLeft
scoreboard players operation #temp2 Time = @s FurnitureLightUp
scoreboard players operation #temp3 Time = @s FurnitureLightForward
execute as @e[tag=location,limit=1] positioned as @s run function luigis_mansion:entities/furniture/spawn/move
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time
execute positioned as @e[tag=location,limit=1] run function luigis_mansion:entities/furniture/type/lamp/light
execute if entity @s[scores={MirrorX=-2147483648..}] as @e[tag=location,limit=1] at @s run function luigis_mansion:entities/furniture/type/lamp/mirror_x
execute if entity @s[scores={MirrorZ=-2147483648..}] as @e[tag=location,limit=1] at @s run function luigis_mansion:entities/furniture/type/lamp/mirror_z
kill @e[tag=location,limit=1]