summon minecraft:marker ^ ^-1 ^ {Tags:["temp","remove_from_existence"]}
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[0] double 0.01 run scoreboard players get @s KnockbackX
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[2] double 0.01 run scoreboard players get @s KnockbackZ

execute if entity @s[scores={IdleTime=-20,Sound=0,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_little player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-20,Sound=0,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_little player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={IdleTime=-20,Sound=0},tag=!gooigi] Sound 20
execute at @s[scores={IdleTime=-19},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-5
execute at @s[scores={IdleTime=-18},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-10
execute at @s[scores={IdleTime=-17},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-15
execute at @s[scores={IdleTime=-16},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-20
execute at @s[scores={IdleTime=-15},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-25
execute at @s[scores={IdleTime=-14},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-30
execute at @s[scores={IdleTime=-13},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-35
execute at @s[scores={IdleTime=-12},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-40
execute at @s[scores={IdleTime=-11},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-45
execute at @s[scores={IdleTime=-10},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-40
execute at @s[scores={IdleTime=-9},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-35
execute at @s[scores={IdleTime=-8},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-30
execute at @s[scores={IdleTime=-7},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-25
execute at @s[scores={IdleTime=-6},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-20
execute at @s[scores={IdleTime=-5},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-15
execute at @s[scores={IdleTime=-4},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-10
execute at @s[scores={IdleTime=-3},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-5
execute at @s[scores={IdleTime=-19},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~5
execute at @s[scores={IdleTime=-18},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~10
execute at @s[scores={IdleTime=-17},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~15
execute at @s[scores={IdleTime=-16},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~20
execute at @s[scores={IdleTime=-15},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~25
execute at @s[scores={IdleTime=-14},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~30
execute at @s[scores={IdleTime=-13},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~35
execute at @s[scores={IdleTime=-12},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~40
execute at @s[scores={IdleTime=-11},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~45
execute at @s[scores={IdleTime=-10},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~40
execute at @s[scores={IdleTime=-9},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~35
execute at @s[scores={IdleTime=-8},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~30
execute at @s[scores={IdleTime=-7},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~25
execute at @s[scores={IdleTime=-6},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~20
execute at @s[scores={IdleTime=-5},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~15
execute at @s[scores={IdleTime=-4},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~10
execute at @s[scores={IdleTime=-3},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~5
execute at @s[tag=!forward_knockback] rotated ~ 0 run teleport @s ^ ^ ^-0.05
execute at @s[tag=forward_knockback] rotated ~ 0 run teleport @s ^ ^ ^0.05

execute at @s if block ~ ~2 ~ #luigis_mansion:players_ignore unless block ~ ~1.9 ~ #luigis_mansion:players_ignore run teleport @s ~ ~-0.16 ~
execute at @s unless block ~ ~ ~ #luigis_mansion:players_ignore if block ~ ~0.1 ~ #luigis_mansion:players_ignore run teleport @s ~ ~0.16 ~
execute at @s unless block ~0.3 ~ ~ #luigis_mansion:players_ignore if block ~ ~ ~ #luigis_mansion:players_ignore run teleport @s ~-0.16 ~ ~
execute at @s unless block ~-0.3 ~ ~ #luigis_mansion:players_ignore if block ~ ~ ~ #luigis_mansion:players_ignore run teleport @s ~0.16 ~ ~
execute at @s unless block ~ ~ ~0.3 #luigis_mansion:players_ignore if block ~ ~ ~ #luigis_mansion:players_ignore run teleport @s ~ ~ ~-0.16
execute at @s unless block ~ ~ ~-0.3 #luigis_mansion:players_ignore if block ~ ~ ~ #luigis_mansion:players_ignore run teleport @s ~ ~ ~0.16
execute at @s unless block ~0.3 ~1 ~ #luigis_mansion:players_ignore if block ~ ~1 ~ #luigis_mansion:players_ignore run teleport @s ~-0.16 ~ ~
execute at @s unless block ~-0.3 ~1 ~ #luigis_mansion:players_ignore if block ~ ~1 ~ #luigis_mansion:players_ignore run teleport @s ~0.16 ~ ~
execute at @s unless block ~ ~1 ~0.3 #luigis_mansion:players_ignore if block ~ ~1 ~ #luigis_mansion:players_ignore run teleport @s ~ ~ ~-0.16
execute at @s unless block ~ ~1 ~-0.3 #luigis_mansion:players_ignore if block ~ ~1 ~ #luigis_mansion:players_ignore run teleport @s ~ ~ ~0.16
kill @e[type=minecraft:marker,tag=temp,limit=1]
tag @s remove vacuuming_ghost
tag @s[scores={IdleTime=-1}] remove forward_knockback