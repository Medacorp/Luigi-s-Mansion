scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=2}] as @a[tag=same_room,gamemode=!spectator] run function luigis_mansion:other/music/set/bogmire_battle
execute if entity @s[scores={Dialog=60}] run summon minecraft:lightning_bolt 651 103 -32
execute if entity @s[scores={Dialog=70}] run summon minecraft:lightning_bolt 651 103 -32
execute if entity @s[scores={Dialog=80}] run summon minecraft:lightning_bolt 651 103 -32
execute if entity @s[scores={Dialog=90}] run summon minecraft:lightning_bolt 651 103 -32
scoreboard players set @s[scores={Dialog=80}] AnimationProg 0
tag @s[scores={Dialog=80}] add appear
execute if entity @s[scores={Dialog=240}] as @a run function luigis_mansion:room/hidden/bogmire_battle/warp_to
tag @s[scores={Dialog=240}] add dead