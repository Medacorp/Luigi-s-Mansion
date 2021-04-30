scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=2}] align xz run playsound luigis_mansion:block.chandelier.spin hostile @a[tag=same_room] ~ ~11 ~ 2
execute if entity @s[scores={ActionTime=12}] align xz run playsound luigis_mansion:block.chandelier.spin hostile @a[tag=same_room] ~ ~11 ~ 2
execute if entity @s[scores={ActionTime=22}] align xz run playsound luigis_mansion:block.chandelier.spin hostile @a[tag=same_room] ~ ~11 ~ 2
execute if entity @s[scores={ActionTime=32}] align xz run playsound luigis_mansion:block.chandelier.spin hostile @a[tag=same_room] ~ ~11 ~ 2
execute if entity @s[scores={ActionTime=42}] align xz run playsound luigis_mansion:block.chandelier.spin hostile @a[tag=same_room] ~ ~11 ~ 2
execute if entity @s[scores={ActionTime=52}] align xz run playsound luigis_mansion:block.chandelier.fall hostile @a[tag=same_room] ~ ~5 ~ 2
execute if entity @s[scores={ActionTime=52..61}] run clone ~-2 ~1 ~-2 ~1 ~12 ~1 ~-2 ~ ~-2 replace force
execute if entity @s[scores={ActionTime=62}] align xz run playsound luigis_mansion:block.chandelier.land hostile @a[tag=same_room] ~ ~ ~ 2
execute if entity @s[scores={ActionTime=60}] align xz run effect give @a[distance=..2,gamemode=!spectator] minecraft:instant_damage 1 0 true
execute if entity @s[scores={ActionTime=60}] align xz run scoreboard players set @a[distance=..2,gamemode=!spectator] ForcedDamage 4
execute if entity @s[scores={ActionTime=60}] align xz if entity @a[distance=..2,gamemode=!spectator] run tag @s add hit
execute if entity @s[scores={ActionTime=82},tag=hit] align xz run playsound luigis_mansion:entity.ghost.laugh hostile @a[tag=same_room] ~ ~ ~ 2
execute if entity @s[scores={ActionTime=82},tag=!hit] align xz run playsound luigis_mansion:entity.ghost.complain hostile @a[tag=same_room] ~ ~ ~ 2
execute if entity @s[scores={ActionTime=62..136}] align xz run scoreboard players set @a[distance=..2,gamemode=!spectator] Invulnerable 10
execute if entity @s[scores={ActionTime=121}] align xz run playsound luigis_mansion:block.chandelier.rise hostile @a[tag=same_room] ~ ~1.5 ~ 2
execute if entity @s[scores={ActionTime=122}] run clone ~-2 ~ ~-2 ~1 ~12 ~1 ~-2 ~1 ~-2 replace force
execute if entity @s[scores={ActionTime=122}] run fill ~-2 ~ ~-2 ~1 ~ ~1 minecraft:air
execute if entity @s[scores={ActionTime=52..200}] run fill ~-2 ~ ~-2 ~1 ~12 ~1 minecraft:air replace minecraft:light
execute if entity @s[scores={ActionTime=128}] run clone ~-2 ~ ~-2 ~1 ~12 ~1 ~-2 ~1 ~-2 replace force
execute if entity @s[scores={ActionTime=131}] align xz run playsound luigis_mansion:block.chandelier.rise hostile @a[tag=same_room] ~ ~3 ~ 2
execute if entity @s[scores={ActionTime=136}] run clone ~-2 ~ ~-2 ~1 ~12 ~1 ~-2 ~1 ~-2 replace force
execute if entity @s[scores={ActionTime=141}] align xz run playsound luigis_mansion:block.chandelier.rise hostile @a[tag=same_room] ~ ~4.5 ~ 2
execute if entity @s[scores={ActionTime=144}] run clone ~-2 ~ ~-2 ~1 ~12 ~1 ~-2 ~1 ~-2 replace force
execute if entity @s[scores={ActionTime=151}] align xz run playsound luigis_mansion:block.chandelier.rise hostile @a[tag=same_room] ~ ~5 ~ 2
execute if entity @s[scores={ActionTime=152}] run clone ~-2 ~ ~-2 ~1 ~12 ~1 ~-2 ~1 ~-2 replace force
execute if entity @s[scores={ActionTime=160}] run clone ~-2 ~ ~-2 ~1 ~12 ~1 ~-2 ~1 ~-2 replace force
execute if entity @s[scores={ActionTime=161}] align xz run playsound luigis_mansion:block.chandelier.rise hostile @a[tag=same_room] ~ ~7 ~ 2
execute if entity @s[scores={ActionTime=168}] run clone ~-2 ~ ~-2 ~1 ~12 ~1 ~-2 ~1 ~-2 replace force
execute if entity @s[scores={ActionTime=171}] align xz run playsound luigis_mansion:block.chandelier.rise hostile @a[tag=same_room] ~ ~8 ~ 2
execute if entity @s[scores={ActionTime=176}] run clone ~-2 ~ ~-2 ~1 ~12 ~1 ~-2 ~1 ~-2 replace force
execute if entity @s[scores={ActionTime=181}] align xz run playsound luigis_mansion:block.chandelier.rise hostile @a[tag=same_room] ~ ~9.5 ~ 2
execute if entity @s[scores={ActionTime=184}] run clone ~-2 ~ ~-2 ~1 ~12 ~1 ~-2 ~1 ~-2 replace force
execute if entity @s[scores={ActionTime=191}] align xz run playsound luigis_mansion:block.chandelier.rise hostile @a[tag=same_room] ~ ~10.5 ~ 2
execute if entity @s[scores={ActionTime=192}] run clone ~-2 ~ ~-2 ~1 ~12 ~1 ~-2 ~1 ~-2 replace force
execute if entity @s[scores={ActionTime=200}] align xz run playsound luigis_mansion:block.chandelier.stop hostile @a[tag=same_room] ~ ~11 ~ 2
kill @s[scores={ActionTime=200}]
tag @s remove dead
tag @s remove remove_from_existence