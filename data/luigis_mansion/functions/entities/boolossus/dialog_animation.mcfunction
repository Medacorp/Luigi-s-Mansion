execute unless entity @s[scores={ActionTime=82..}] run scoreboard players add @s ActionTime 1
scoreboard players add @s[scores={ActionTime=83..}] ActionTime 1
execute if entity @s[scores={ActionTime=1}] store result score @s HomeRot run data get entity @s Rotation[0]
execute if entity @s[scores={ActionTime=1..80}] facing entity @a[tag=target,limit=1] feet run teleport @s ~ ~ ~ ~ ~

execute if entity @s[scores={ActionTime=81}] store result entity @s Rotation[0] float 1 run scoreboard players get @s HomeRot
execute if entity @s[scores={ActionTime=81..100}] positioned as @a[tag=target,limit=1] rotated as @s run teleport @s ^ ^ ^-2.5 ~ ~
execute if entity @s[scores={ActionTime=101..}] at @s facing entity @a[tag=target,limit=1] feet rotated ~80 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={ActionTime=101..108}] facing entity @a[tag=target,limit=1] feet positioned as @a[tag=target,limit=1] rotated ~-2 ~ run teleport @s ^ ^ ^-2.5
execute if entity @s[scores={ActionTime=109..116}] facing entity @a[tag=target,limit=1] feet positioned as @a[tag=target,limit=1] rotated ~-3 ~ run teleport @s ^ ^ ^-2.3
execute if entity @s[scores={ActionTime=117..124}] facing entity @a[tag=target,limit=1] feet positioned as @a[tag=target,limit=1] rotated ~-4 ~ run teleport @s ^ ^ ^-2.1
execute if entity @s[scores={ActionTime=125..132}] facing entity @a[tag=target,limit=1] feet positioned as @a[tag=target,limit=1] rotated ~-5 ~ run teleport @s ^ ^ ^-1.9
execute if entity @s[scores={ActionTime=133..140}] facing entity @a[tag=target,limit=1] feet positioned as @a[tag=target,limit=1] rotated ~-6 ~ run teleport @s ^ ^ ^-1.7
execute if entity @s[scores={ActionTime=141..148}] facing entity @a[tag=target,limit=1] feet positioned as @a[tag=target,limit=1] rotated ~-7 ~ run teleport @s ^ ^ ^-1.5
execute if entity @s[scores={ActionTime=149..156}] facing entity @a[tag=target,limit=1] feet positioned as @a[tag=target,limit=1] rotated ~-8 ~ run teleport @s ^ ^ ^-1.3
execute if entity @s[scores={ActionTime=157..164}] facing entity @a[tag=target,limit=1] feet positioned as @a[tag=target,limit=1] rotated ~-9 ~ run teleport @s ^ ^ ^-1.1
execute if entity @s[scores={ActionTime=165..172}] facing entity @a[tag=target,limit=1] feet positioned as @a[tag=target,limit=1] rotated ~-10 ~ run teleport @s ^ ^ ^-0.9
execute if entity @s[scores={ActionTime=173..180}] facing entity @a[tag=target,limit=1] feet positioned as @a[tag=target,limit=1] rotated ~-11 ~ run teleport @s ^ ^ ^-0.7
execute if entity @s[scores={ActionTime=181..}] facing entity @a[tag=target,limit=1] feet positioned as @a[tag=target,limit=1] rotated ~-12 ~ run teleport @s ^ ^ ^-0.5
