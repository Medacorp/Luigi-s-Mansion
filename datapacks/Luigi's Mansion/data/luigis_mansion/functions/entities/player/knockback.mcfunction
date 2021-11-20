summon minecraft:marker ^ ^-1 ^ {Tags:["temp"]}
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[0] double 0.01 run scoreboard players get @s KnockbackX
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[2] double 0.01 run scoreboard players get @s KnockbackZ

execute at @s[scores={KnockbackTime=2..,KnockbackType=1}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ ~ run teleport @s ^ ^ ^ ~ ~
execute at @s[scores={KnockbackTime=1,KnockbackType=1}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~

execute at @s[scores={KnockbackType=2}] run function luigis_mansion:entities/player/knockback_lock_position
execute at @s[scores={KnockbackTime=19,KnockbackType=2}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-5
execute at @s[scores={KnockbackTime=18,KnockbackType=2}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-10
execute at @s[scores={KnockbackTime=17,KnockbackType=2}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-15
execute at @s[scores={KnockbackTime=16,KnockbackType=2}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-20
execute at @s[scores={KnockbackTime=15,KnockbackType=2}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-25
execute at @s[scores={KnockbackTime=14,KnockbackType=2}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-30
execute at @s[scores={KnockbackTime=13,KnockbackType=2}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-35
execute at @s[scores={KnockbackTime=12,KnockbackType=2}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-40
execute at @s[scores={KnockbackTime=11,KnockbackType=2}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-45
execute at @s[scores={KnockbackTime=10,KnockbackType=2}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-40
execute at @s[scores={KnockbackTime=9,KnockbackType=2}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-35
execute at @s[scores={KnockbackTime=8,KnockbackType=2}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-30
execute at @s[scores={KnockbackTime=7,KnockbackType=2}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-25
execute at @s[scores={KnockbackTime=6,KnockbackType=2}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-20
execute at @s[scores={KnockbackTime=5,KnockbackType=2}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-15
execute at @s[scores={KnockbackTime=4,KnockbackType=2}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-10
execute at @s[scores={KnockbackTime=3,KnockbackType=2}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-5
execute at @s[scores={KnockbackTime=1..,KnockbackType=2}] rotated ~ 0 run teleport @s ^ ^ ^-0.05

execute at @s[scores={KnockbackType=3}] run function luigis_mansion:entities/player/knockback_lock_position
execute at @s[scores={KnockbackTime=21..,KnockbackType=3}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^-0.125 ~ ~

execute at @s[scores={KnockbackTime=20..,KnockbackType=4}] if score #mirrored Selected matches 0 run teleport @s ^ ^ ^ ~-10 ~
execute at @s[scores={KnockbackTime=20..,KnockbackType=4}] if score #mirrored Selected matches 1 run teleport @s ^ ^ ^ ~10 ~
# move to head animation
execute at @s[scores={KnockbackType=5..,KnockbackType=4}] run particle minecraft:smoke ~ ~1.9 ~ 0.2 0.2 0.2 0 3 normal @a[tag=same_room]
execute at @s[scores={KnockbackType=..19,KnockbackType=4}] run function luigis_mansion:entities/player/knockback_lock_position

execute at @s[scores={KnockbackType=1..,KnockbackType=5}] run summon minecraft:marker ~ ~ ~ {Tags:["home"]}
execute at @s[scores={KnockbackType=1..,KnockbackType=5}] store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PosX
execute at @s[scores={KnockbackType=1..,KnockbackType=5}] store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PosY
execute at @s[scores={KnockbackType=1..,KnockbackType=5}] store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PosZ
execute at @s[scores={KnockbackType=1..,KnockbackType=5}] store result entity @e[tag=home,limit=1] Rotation[0] float 0.01 run scoreboard players get @s RotY
execute at @s[scores={KnockbackType=1..,KnockbackType=5}] store result entity @e[tag=home,limit=1] Rotation[1] float 0.01 run scoreboard players get @s RotX
execute at @s[scores={KnockbackType=1..,KnockbackType=5}] at @e[tag=home,limit=1] run tp @s ~ ~ ~ ~ ~
# move to head animation
execute at @s[scores={KnockbackType=3..,KnockbackType=5}] run particle minecraft:falling_water ~ ~1 ~ 0.4 0.4 0.4 0 10 normal @a[tag=same_room]
execute at @s[scores={KnockbackType=1..,KnockbackType=5}] run kill @e[tag=home,limit=1]

execute at @s[scores={KnockbackType=1..,KnockbackType=6}] run summon minecraft:marker ~ ~ ~ {Tags:["home"]}
execute at @s[scores={KnockbackType=1..,KnockbackType=6}] store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PosX
execute at @s[scores={KnockbackType=1..,KnockbackType=6}] store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PosY
execute at @s[scores={KnockbackType=1..,KnockbackType=6}] store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PosZ
execute at @s[scores={KnockbackType=1..,KnockbackType=6}] store result entity @e[tag=home,limit=1] Rotation[0] float 0.01 run scoreboard players get @s RotY
execute at @s[scores={KnockbackType=1..,KnockbackType=6}] store result entity @e[tag=home,limit=1] Rotation[1] float 0.01 run scoreboard players get @s RotX
execute at @s[scores={KnockbackType=10..,KnockbackType=6}] unless entity @e[tag=home,limit=1,distance=..0.1] run scoreboard players remove @s KnockbackTime 2
execute at @s[scores={KnockbackType=1..,KnockbackType=6}] at @e[tag=home,limit=1] run tp @s ~ ~ ~ ~ ~
scoreboard players set @s[scores={KnockbackType=10..,KnockbackType=6,Invulnerable=6..}] Invulnerable 5
execute at @s[scores={KnockbackType=10..,KnockbackType=6}] run effect give @s minecraft:instant_damage 1 0 true
execute at @s[scores={KnockbackType=10..,KnockbackType=6}] run scoreboard players set @s ForcedDamage -5
# move to head animation
execute at @s[scores={KnockbackType=10..,KnockbackType=6}] run particle minecraft:firework ~ ~1 ~ 0.4 0.4 0.4 0 10 normal @a[tag=same_room]
scoreboard players set @s[scores={KnockbackTime=10,KnockbackType=6}] Invulnerable 70
execute at @s[scores={KnockbackType=1..,KnockbackType=6}] run kill @e[tag=home,limit=1]

execute at @s if block ~ ~1 ~ #luigis_mansion:ghosts_ignore unless block ~ ~1.9 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~-0.125 ~
execute at @s unless block ~ ~ ~ #luigis_mansion:ghosts_ignore if block ~ ~0.1 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~0.125 ~
execute at @s unless block ~0.3 ~ ~ #luigis_mansion:ghosts_ignore if block ~ ~ ~ #luigis_mansion:ghosts_ignore run teleport @s ~-0.125 ~ ~
execute at @s unless block ~-0.3 ~ ~ #luigis_mansion:ghosts_ignore if block ~ ~ ~ #luigis_mansion:ghosts_ignore run teleport @s ~0.125 ~ ~
execute at @s unless block ~ ~ ~0.3 #luigis_mansion:ghosts_ignore if block ~ ~ ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~ ~-0.125
execute at @s unless block ~ ~ ~-0.3 #luigis_mansion:ghosts_ignore if block ~ ~ ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~ ~0.125
kill @e[type=minecraft:marker,tag=temp,limit=1]
scoreboard players remove @s KnockbackTime 1
scoreboard players reset @s[scores={KnockbackTime=0}] KnockbackX
scoreboard players reset @s[scores={KnockbackTime=0}] KnockbackZ
scoreboard players reset @s[scores={KnockbackTime=0}] KnockbackType
scoreboard players reset @s[scores={KnockbackTime=0}] KnockbackTime