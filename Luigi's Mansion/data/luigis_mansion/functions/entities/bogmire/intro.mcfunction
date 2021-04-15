scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=2}] run scoreboard players set @a[tag=same_room] MusicType 16
execute if entity @s[scores={Dialog=2}] run scoreboard players set @a[tag=same_room] Music 0
execute if entity @s[scores={Dialog=60}] run summon minecraft:lightning_bolt 651 103 47
execute if entity @s[scores={Dialog=70}] run summon minecraft:lightning_bolt 651 103 47
execute if entity @s[scores={Dialog=80}] run summon minecraft:lightning_bolt 651 103 47
execute if entity @s[scores={Dialog=90}] run summon minecraft:lightning_bolt 651 103 47
scoreboard players set @s[scores={Dialog=80}] AnimationProg 0
tag @s[scores={Dialog=80}] add appear
execute if entity @s[scores={Dialog=240}] as @a run function luigis_mansion:entities/bogmire/to_arena
tag @s[scores={Dialog=240}] add dead