execute unless entity @s[scores={ActionTime=1..}] run scoreboard players set @s ActionTime 1
scoreboard players add @s[scores={ActionTime=1..29}] ActionTime 1
scoreboard players add @s[scores={ActionTime=31..}] ActionTime 1
scoreboard players reset #temp Time
execute if entity @s[scores={ActionTime=20..30}] positioned ^ ^ ^0.5 run function luigis_mansion:entities/bowser/suck
execute if entity @a[tag=got_sucked,distance=..3] run scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=30}] unless entity @a[tag=got_sucked] run tag @s remove vacuum
execute if entity @s[scores={ActionTime=30}] unless entity @a[tag=got_sucked] run scoreboard players reset @s ActionTime
execute if entity @s[scores={ActionTime=31}] run tag @a[tag=got_sucked,distance=..4,sort=nearest,limit=1] add vacuumed
execute if entity @s[scores={ActionTime=32..89}] run teleport @a[tag=vacuumed,distance=..4,limit=1] ~ ~2 ~
execute if entity @s[scores={ActionTime=90}] as @a[tag=vacuumed,distance=..4,limit=1,tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute if entity @s[scores={ActionTime=90}] run effect give @a[tag=vacuumed,distance=..4,limit=1] minecraft:instant_damage 1 0 true
execute if entity @s[scores={ActionTime=90}] run scoreboard players set @a[tag=vacuumed,distance=..4,limit=1] ForcedDamage 4
execute if entity @s[scores={ActionTime=90..99}] rotated ~-45 ~ as @a[tag=vacuumed,limit=1] positioned as @s run teleport @s ^ ^ ^0.3
execute if entity @s[scores={ActionTime=100}] run tag @a[tag=vacuumed,limit=1] remove vacuumed
execute if entity @s[scores={ActionTime=31..99}] run tag @a[tag=vacuumed,distance=4..,limit=1] remove vacuumed
tag @s[scores={ActionTime=110}] remove vacuum
scoreboard players reset @s[scores={ActionTime=110}] ActionTime
tag @a[tag=got_sucked] remove got_sucked
tag @a[tag=pulled] remove pulled
scoreboard players reset #temp Time