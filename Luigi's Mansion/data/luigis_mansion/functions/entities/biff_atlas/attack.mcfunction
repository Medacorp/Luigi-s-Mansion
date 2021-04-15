execute if entity @s[scores={Sound=0}] run playsound luigis_mansion:entity.biff_atlas.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Sound=0}] run scoreboard players set @s[scores={Sound=0}] Sound 10
effect give @a[distance=..2,gamemode=!spectator] minecraft:instant_damage 1 0 true
scoreboard players set @a[distance=..2,gamemode=!spectator] ForcedDamage 4