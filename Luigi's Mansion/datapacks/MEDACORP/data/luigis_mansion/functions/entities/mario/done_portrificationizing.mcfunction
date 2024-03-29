scoreboard players add @s Dialog 1
data modify entity @s[scores={Dialog=1}] data.animation set value {namespace:"luigis_mansion",id:"shot_out"}
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:entity.mario.wowch neutral @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={Dialog=20}] data.animation set value {namespace:"luigis_mansion",id:"stuck"}
execute if entity @s[scores={Dialog=1..18}] rotated 173.7 0 run teleport @s ^ ^ ^1 ~ 0
execute if entity @s[scores={Dialog=80}] run playsound luigis_mansion:entity.mario.vent_stuck neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=141..160}] rotated -6.3 0 run teleport @s ^ ^ ^0.05
execute if entity @s[scores={Dialog=141..160}] at @s run teleport @s ~ ~ ~ ~4.55 ~
data modify entity @s[scores={Dialog=160}] data.animation set value {namespace:"luigis_mansion",id:"dizzy"}
execute if entity @s[scores={Dialog=160}] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.mario.vent_stuck
execute if entity @s[scores={Dialog=160}] run playsound luigis_mansion:entity.mario.dizzy_0 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=200}] run playsound luigis_mansion:entity.mario.dizzy_1 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=240}] run playsound luigis_mansion:entity.mario.dizzy_0 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=280}] run playsound luigis_mansion:entity.mario.dizzy_1 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=320}] run playsound luigis_mansion:entity.mario.dizzy_0 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=360}] run playsound luigis_mansion:entity.mario.dizzy_1 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=400}] run playsound luigis_mansion:entity.mario.dizzy_0 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=440}] run playsound luigis_mansion:entity.mario.dizzy_1 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=480}] run playsound luigis_mansion:entity.mario.dizzy_0 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=520}] run playsound luigis_mansion:entity.mario.dizzy_1 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=560}] run playsound luigis_mansion:entity.mario.dizzy_0 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=600}] run playsound luigis_mansion:entity.mario.dizzy_1 neutral @a[tag=same_room] ~ ~ ~ 1