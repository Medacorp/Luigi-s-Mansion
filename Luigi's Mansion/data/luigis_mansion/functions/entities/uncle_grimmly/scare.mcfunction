scoreboard players add @s Dialog 1
execute if entity @s[scores={VulnerableTime=0}] at @a[tag=same_room,gamemode=!spectator] positioned ^ ^ ^8 run tag @s[distance=..8] add invisible
effect give @s[tag=invisible] minecraft:invisibility 1 0 true
effect clear @s[tag=!invisible] minecraft:invisibility
execute if predicate luigis_mansion:uncle_grimmly_scare run scoreboard players set @s[scores={Dialog=20},tag=!invisible] VulnerableTime 20
execute if entity @s[scores={Dialog=20,VulnerableTime=20}] run playsound luigis_mansion:entity.uncle_grimmly.scare hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=20}] Dialog 0
tag @s remove invisible