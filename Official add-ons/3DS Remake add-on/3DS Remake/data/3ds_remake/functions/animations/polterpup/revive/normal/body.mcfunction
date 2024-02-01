scoreboard players add @s AnimationProgress 1
execute at @s[scores={AnimationProgress=21}] run teleport @s ^ ^0.05 ^-0.02
execute at @s[scores={AnimationProgress=22}] run teleport @s ^ ^0.1 ^-0.04
execute at @s[scores={AnimationProgress=23}] run teleport @s ^ ^0.15 ^-0.06
execute at @s[scores={AnimationProgress=24}] run teleport @s ^ ^0.2 ^-0.08
execute at @s[scores={AnimationProgress=25}] run teleport @s ^ ^0.25 ^-0.1
execute at @s[scores={AnimationProgress=26}] run teleport @s ^ ^0.3 ^-0.12
execute at @s[scores={AnimationProgress=27}] run teleport @s ^ ^0.35 ^-0.14
execute at @s[scores={AnimationProgress=28}] run teleport @s ^ ^0.4 ^-0.16
execute at @s[scores={AnimationProgress=29}] run teleport @s ^ ^0.45 ^-0.18
execute at @s[scores={AnimationProgress=30..70}] run teleport @s ^ ^0.5 ^-0.2
execute at @s[scores={AnimationProgress=71}] run teleport @s ^ ^0.45 ^-0.18
execute at @s[scores={AnimationProgress=72}] run teleport @s ^ ^0.4 ^-0.16
execute at @s[scores={AnimationProgress=73}] run teleport @s ^ ^0.35 ^-0.14
execute at @s[scores={AnimationProgress=74}] run teleport @s ^ ^0.3 ^-0.12
execute at @s[scores={AnimationProgress=75}] run teleport @s ^ ^0.25 ^-0.1
execute at @s[scores={AnimationProgress=76}] run teleport @s ^ ^0.2 ^-0.08
execute at @s[scores={AnimationProgress=77}] run teleport @s ^ ^0.15 ^-0.06
execute at @s[scores={AnimationProgress=78}] run teleport @s ^ ^0.1 ^-0.04
execute at @s[scores={AnimationProgress=79}] run teleport @s ^ ^0.05 ^-0.02
execute at @s[scores={AnimationProgress=156}] run teleport @s ^ ^0.1 ^-0.04
execute at @s[scores={AnimationProgress=157}] run teleport @s ^ ^0.2 ^-0.08
execute at @s[scores={AnimationProgress=158}] run teleport @s ^ ^0.3 ^-0.12
execute at @s[scores={AnimationProgress=159}] run teleport @s ^ ^0.4 ^-0.16
execute at @s[scores={AnimationProgress=160..180}] run teleport @s ^ ^0.5 ^-0.2
execute at @s[scores={AnimationProgress=181}] run teleport @s ^ ^0.4 ^-0.16
execute at @s[scores={AnimationProgress=182}] run teleport @s ^ ^0.3 ^-0.12
execute at @s[scores={AnimationProgress=183}] run teleport @s ^ ^0.2 ^-0.08
execute at @s[scores={AnimationProgress=184}] run teleport @s ^ ^0.1 ^-0.04
execute at @s[scores={AnimationProgress=196}] run teleport @s ^ ^0.15 ^-0.13
execute at @s[scores={AnimationProgress=197}] run teleport @s ^ ^0.3 ^-0.26
execute at @s[scores={AnimationProgress=198}] run teleport @s ^ ^0.45 ^-0.39
execute at @s[scores={AnimationProgress=199}] run teleport @s ^ ^0.5 ^-0.52
execute at @s[scores={AnimationProgress=200..250}] run teleport @s ^ ^0.65 ^-0.65
execute at @s[scores={AnimationProgress=251}] run teleport @s ^ ^0.5 ^-0.52
execute at @s[scores={AnimationProgress=252}] run teleport @s ^ ^0.35 ^-0.39
execute at @s[scores={AnimationProgress=253}] run teleport @s ^ ^0.3 ^-0.26
execute at @s[scores={AnimationProgress=254}] run teleport @s ^ ^0.15 ^-0.13
execute at @s[scores={AnimationProgress=256}] run teleport @s ^ ^0.05 ^
execute at @s[scores={AnimationProgress=257}] run teleport @s ^ ^0.1 ^
execute at @s[scores={AnimationProgress=258}] run teleport @s ^ ^0.15 ^
execute at @s[scores={AnimationProgress=259}] run teleport @s ^ ^0.2 ^
execute at @s[scores={AnimationProgress=260}] run teleport @s ^ ^0.25 ^
execute at @s[scores={AnimationProgress=261}] run teleport @s ^ ^0.3 ^
execute at @s[scores={AnimationProgress=262}] run teleport @s ^ ^0.35 ^
execute at @s[scores={AnimationProgress=263}] run teleport @s ^ ^0.4 ^
execute at @s[scores={AnimationProgress=264}] run teleport @s ^ ^0.45 ^
execute at @s[scores={AnimationProgress=265..299}] run teleport @s ^ ^0.5 ^
execute at @s[scores={AnimationProgress=300}] run teleport @s ^ ^0.45 ^
execute at @s[scores={AnimationProgress=301}] run teleport @s ^ ^0.4 ^
execute at @s[scores={AnimationProgress=302}] run teleport @s ^ ^0.35 ^
execute at @s[scores={AnimationProgress=303}] run teleport @s ^ ^0.3 ^
execute at @s[scores={AnimationProgress=304}] run teleport @s ^ ^0.25 ^
execute at @s[scores={AnimationProgress=305}] run teleport @s ^ ^0.2 ^
execute at @s[scores={AnimationProgress=306}] run teleport @s ^ ^0.15 ^
execute at @s[scores={AnimationProgress=307}] run teleport @s ^ ^0.1 ^
execute at @s[scores={AnimationProgress=308}] run teleport @s ^ ^0.05 ^
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-90.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProgress=21..30}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProgress=71..80}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProgress=156..160}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 8
execute if entity @s[scores={AnimationProgress=181..185}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 8
execute if entity @s[scores={AnimationProgress=196..200}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 16
execute if entity @s[scores={AnimationProgress=251..255}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 16
execute if entity @s[scores={AnimationProgress=331..340}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProgress=40}] run playsound 3ds_remake:entity.polterpup.first_bark neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=60}] run playsound 3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProgress=65}] run playsound 3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProgress=70}] run playsound 3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProgress=75}] run playsound 3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProgress=80}] run playsound 3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProgress=85}] run playsound 3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProgress=90}] run playsound 3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProgress=95}] run playsound 3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProgress=100}] run playsound 3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProgress=105}] run playsound 3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProgress=110}] run playsound 3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProgress=115}] run playsound 3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProgress=120}] run playsound 3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProgress=140}] run playsound 3ds_remake:entity.polterpup.search neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=160}] run playsound 3ds_remake:entity.polterpup.playful_growl neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=180}] run playsound 3ds_remake:entity.polterpup.playful_growl2 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=200}] run playsound 3ds_remake:entity.polterpup.playful_growl2 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=220}] run playsound 3ds_remake:entity.polterpup.swallow neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=240}] run playsound 3ds_remake:entity.polterpup.lick neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=260}] run playsound 3ds_remake:entity.polterpup.jump_bark neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=280}] run playsound 3ds_remake:entity.polterpup.lick2 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=300}] run playsound 3ds_remake:entity.polterpup.last_bark neutral @a[tag=same_room] ~ ~ ~ 1
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=340..}] AnimationProgress 0