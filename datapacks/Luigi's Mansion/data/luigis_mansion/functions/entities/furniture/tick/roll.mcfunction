function luigis_mansion:animations/furniture/roll
execute if entity @s[scores={PoltergustSound=0,ActionTime=1..10}] run playsound luigis_mansion:block.search.roll block @a[tag=same_room] ~ ~ ~ 1 1
execute if entity @s[scores={PoltergustSound=0,ActionTime=11..20}] run playsound luigis_mansion:block.search.roll block @a[tag=same_room] ~ ~ ~ 1 1.25
execute if entity @s[scores={PoltergustSound=0,ActionTime=21..30}] run playsound luigis_mansion:block.search.roll block @a[tag=same_room] ~ ~ ~ 1 1.5
execute if entity @s[scores={PoltergustSound=0,ActionTime=31..40}] run playsound luigis_mansion:block.search.roll block @a[tag=same_room] ~ ~ ~ 1 1.75
execute if entity @s[scores={PoltergustSound=0,ActionTime=41..}] run playsound luigis_mansion:block.search.roll block @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={PoltergustSound=0,ActionTime=1..}] PoltergustSound 5
tag @s add was_shaking