summon minecraft:marker ^ ^-1 ^ {Tags:["temp","remove_from_existence"]}
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[0] double 0.01 run scoreboard players get @s KnockbackX
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[2] double 0.01 run scoreboard players get @s KnockbackZ

execute at @s[scores={IdleTime=-10,Sound=0,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_little player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={IdleTime=-10,Sound=0,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_little player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={IdleTime=-10,Sound=0},tag=!gooigi] Sound 20
execute at @s[scores={IdleTime=..-2}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ ~ run teleport @s ^ ^ ^ ~ ~
execute at @s[scores={IdleTime=-1}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~
kill @e[type=minecraft:marker,tag=temp,limit=1]