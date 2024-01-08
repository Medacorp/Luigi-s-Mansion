summon minecraft:marker ^ ^-1 ^ {Tags:["temp","remove_from_existence"]}
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[0] double 0.01 run scoreboard players get @s KnockbackX
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[2] double 0.01 run scoreboard players get @s KnockbackZ

execute if entity @s[scores={IdleTime=-60,Sound=0,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.flee.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-60,Sound=0,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.flee.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={IdleTime=-60,Sound=0,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.flee.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-60,Sound=0,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.flee.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={IdleTime=-60,Sound=0}] Sound 60
execute at @s[scores={IdleTime=-60..-51},tag=look_up,tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ -90
execute at @s[scores={IdleTime=-49},tag=look_up,tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ -80
execute at @s[scores={IdleTime=-48},tag=look_up,tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ -70
execute at @s[scores={IdleTime=-47},tag=look_up,tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ -60
execute at @s[scores={IdleTime=-46},tag=look_up,tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ -50
execute at @s[scores={IdleTime=-45},tag=look_up,tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ -40
execute at @s[scores={IdleTime=-44},tag=look_up,tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ -30
execute at @s[scores={IdleTime=-43},tag=look_up,tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ -20
execute at @s[scores={IdleTime=-42},tag=look_up,tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ -10
execute at @s[scores={IdleTime=-60..-51},tag=look_up,tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ 90
execute at @s[scores={IdleTime=-49},tag=look_up,tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ 80
execute at @s[scores={IdleTime=-48},tag=look_up,tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ 70
execute at @s[scores={IdleTime=-47},tag=look_up,tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ 60
execute at @s[scores={IdleTime=-46},tag=look_up,tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ 50
execute at @s[scores={IdleTime=-45},tag=look_up,tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ 40
execute at @s[scores={IdleTime=-44},tag=look_up,tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ 30
execute at @s[scores={IdleTime=-43},tag=look_up,tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ 20
execute at @s[scores={IdleTime=-42},tag=look_up,tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ 10
execute at @s[scores={IdleTime=-60..-51},tag=!look_up] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^0.16 ~ ~
execute at @s[scores={IdleTime=..-50}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^0.16 ~ ~

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
tag @s[scores={IdleTime=-1}] remove look_up