scoreboard players add @s AnimationProg 1
execute at @s[scores={AnimationProg=61}] rotated ~ 0 run teleport @s ^ ^-0.05 ^
execute at @s[scores={AnimationProg=62}] rotated ~ 0 run teleport @s ^ ^-0.1 ^
execute at @s[scores={AnimationProg=63}] rotated ~ 0 run teleport @s ^ ^-0.15 ^
execute at @s[scores={AnimationProg=64}] rotated ~ 0 run teleport @s ^ ^-0.2 ^
execute at @s[scores={AnimationProg=65}] rotated ~ 0 run teleport @s ^ ^-0.25 ^
execute at @s[scores={AnimationProg=66}] rotated ~ 0 run teleport @s ^ ^-0.3 ^
execute at @s[scores={AnimationProg=67}] rotated ~ 0 run teleport @s ^ ^-0.35 ^
execute at @s[scores={AnimationProg=68}] rotated ~ 0 run teleport @s ^ ^-0.4 ^
execute at @s[scores={AnimationProg=69}] rotated ~ 0 run teleport @s ^ ^-0.45 ^
execute at @s[scores={AnimationProg=70}] rotated ~ 0 run teleport @s ^ ^-0.5 ^
execute at @s[scores={AnimationProg=71}] rotated ~ 0 run teleport @s ^ ^-0.55 ^
execute at @s[scores={AnimationProg=72}] rotated ~ 0 run teleport @s ^ ^-0.6 ^
execute at @s[scores={AnimationProg=73}] rotated ~ 0 run teleport @s ^ ^-0.65 ^
execute at @s[scores={AnimationProg=74}] rotated ~ 0 run teleport @s ^ ^-0.7 ^
execute at @s[scores={AnimationProg=75}] rotated ~ 0 run teleport @s ^ ^-0.75 ^
execute at @s[scores={AnimationProg=76}] rotated ~ 0 run teleport @s ^ ^-0.8 ^
execute at @s[scores={AnimationProg=77}] rotated ~ 0 run teleport @s ^ ^-0.85 ^
execute at @s[scores={AnimationProg=78}] rotated ~ 0 run teleport @s ^ ^-0.9 ^
execute at @s[scores={AnimationProg=79}] rotated ~ 0 run teleport @s ^ ^-0.95 ^
execute at @s[scores={AnimationProg=80}] rotated ~ 0 run teleport @s ^ ^-1 ^
execute at @s[scores={AnimationProg=81}] rotated ~ 0 run teleport @s ^ ^-1.05 ^
execute at @s[scores={AnimationProg=82}] rotated ~ 0 run teleport @s ^ ^-1.1 ^
execute at @s[scores={AnimationProg=83}] rotated ~ 0 run teleport @s ^ ^-1.15 ^
execute at @s[scores={AnimationProg=84}] rotated ~ 0 run teleport @s ^ ^-1.2 ^
execute at @s[scores={AnimationProg=85}] rotated ~ 0 run teleport @s ^ ^-1.25 ^
execute at @s[scores={AnimationProg=86..110}] rotated ~ 0 run teleport @s ^ ^-1.3 ^
execute at @s[scores={AnimationProg=111}] rotated ~ 0 run teleport @s ^ ^-1.17 ^
execute at @s[scores={AnimationProg=112}] rotated ~ 0 run teleport @s ^ ^-1.04 ^
execute at @s[scores={AnimationProg=113}] rotated ~ 0 run teleport @s ^ ^-0.91 ^
execute at @s[scores={AnimationProg=114}] rotated ~ 0 run teleport @s ^ ^-0.78 ^
execute at @s[scores={AnimationProg=115}] rotated ~ 0 run teleport @s ^ ^-0.65 ^
execute at @s[scores={AnimationProg=116}] rotated ~ 0 run teleport @s ^ ^-0.52 ^
execute at @s[scores={AnimationProg=117}] rotated ~ 0 run teleport @s ^ ^-0.39 ^
execute at @s[scores={AnimationProg=118}] rotated ~ 0 run teleport @s ^ ^-0.26 ^
execute at @s[scores={AnimationProg=119}] rotated ~ 0 run teleport @s ^ ^-0.13 ^
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data modify entity @s[scores={AnimationProg=15..109},tag=left_door,nbt={ArmorItems:[{tag:{CustomModelData:19}}]}] ArmorItems[3].tag merge value {Damage:2,CustomModelData:20}
data modify entity @s[scores={AnimationProg=15..109},tag=left_door,nbt={ArmorItems:[{tag:{CustomModelData:23}}]}] ArmorItems[3].tag merge value {Damage:2,CustomModelData:24}
data modify entity @s[scores={AnimationProg=15..109},tag=!left_door,nbt={ArmorItems:[{tag:{CustomModelData:19}}]}] ArmorItems[3].tag merge value {Damage:3,CustomModelData:20}
data modify entity @s[scores={AnimationProg=15..109},tag=!left_door,nbt={ArmorItems:[{tag:{CustomModelData:23}}]}] ArmorItems[3].tag merge value {Damage:3,CustomModelData:24}
data modify entity @s[scores={AnimationProg=110},nbt={ArmorItems:[{tag:{CustomModelData:20}}]}] ArmorItems[3].tag merge value {Damage:1,CustomModelData:19}
data modify entity @s[scores={AnimationProg=110},nbt={ArmorItems:[{tag:{CustomModelData:24}}]}] ArmorItems[3].tag merge value {Damage:1,CustomModelData:23}
execute store result score #temp Time run data get entity @s Pose.Head[0] 1
execute if entity @s[scores={AnimationProg=63..92}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProg=111..120}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 9
execute store result score #temp Time run data get entity @s Pose.Head[2] 1
execute if entity @s[scores={AnimationProg=91..92}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=93..96}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=97..100}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=101..102}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=103..106}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=107..110}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 2
data modify entity @s[scores={AnimationProg=110},nbt={ArmorItems:[{tag:{CustomModelData:20}}]}] ArmorItems[3] merge value {Damage:1,CustomModelData:19}
data modify entity @s[scores={AnimationProg=110},nbt={ArmorItems:[{tag:{CustomModelData:24}}]}] ArmorItems[3] merge value {Damage:1,CustomModelData:23}
scoreboard players reset #temp Time
data merge entity @s[scores={AnimationProg=140..}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProg=140..}] AnimationProg 0