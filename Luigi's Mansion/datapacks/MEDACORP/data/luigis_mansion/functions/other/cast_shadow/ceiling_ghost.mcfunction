function luigis_mansion:other/cast_shadow
execute at @e[tag=this_shadow,tag=x_axis_shadow,limit=1] run summon minecraft:armor_stand ~ ~1 ~ {Tags:["shadow","new_shadow","x_axis_shadow"],Invisible:1b,Pose:{Head:[0.0f,90.0f,0.0f]}}
execute at @e[tag=this_shadow,tag=x_axis_shadow,limit=1] run summon minecraft:armor_stand ~ ~0.5 ~ {Tags:["shadow","new_shadow","x_axis_shadow"],Invisible:1b,Pose:{Head:[0.0f,90.0f,0.0f]}}
execute at @e[tag=this_shadow,tag=z_axis_shadow,limit=1] run summon minecraft:armor_stand ~ ~1 ~ {Tags:["shadow","new_shadow","z_axis_shadow"],Invisible:1b,Pose:{Head:[0.0f,0.0f,0.0f]}}
execute at @e[tag=this_shadow,tag=z_axis_shadow,limit=1] run summon minecraft:armor_stand ~ ~0.5 ~ {Tags:["shadow","new_shadow","z_axis_shadow"],Invisible:1b,Pose:{Head:[0.0f,0.0f,0.0f]}}
execute at @e[tag=this_shadow,tag=horizontal_shadow,limit=1,x_rotation=-90..0] rotated ~ 0 run summon minecraft:armor_stand ^ ^ ^-1 {Tags:["shadow","new_shadow","horizontal_shadow"],Invisible:1b,Pose:{Head:[90.0f,0.0f,0.0f]}}
execute at @e[tag=this_shadow,tag=horizontal_shadow,limit=1,x_rotation=-90..0] rotated ~ 0 run summon minecraft:armor_stand ^ ^ ^-0.5 {Tags:["shadow","new_shadow","horizontal_shadow"],Invisible:1b,Pose:{Head:[90.0f,0.0f,0.0f]}}
execute at @e[tag=this_shadow,tag=horizontal_shadow,limit=1,x_rotation=0..90] rotated ~ 0 run summon minecraft:armor_stand ^ ^ ^1 {Tags:["shadow","new_shadow","horizontal_shadow"],Invisible:1b,Pose:{Head:[90.0f,0.0f,0.0f]}}
execute at @e[tag=this_shadow,tag=horizontal_shadow,limit=1,x_rotation=0..90] rotated ~ 0 run summon minecraft:armor_stand ^ ^ ^0.5 {Tags:["shadow","new_shadow","horizontal_shadow"],Invisible:1b,Pose:{Head:[90.0f,0.0f,0.0f]}}
execute as @e[tag=new_shadow] at @s rotated as @e[tag=this_shadow,limit=1] run teleport @s ~ ~ ~ ~ ~
tag @e[tag=new_shadow] remove new_shadow
tag @e[tag=this_shadow] remove this_shadow