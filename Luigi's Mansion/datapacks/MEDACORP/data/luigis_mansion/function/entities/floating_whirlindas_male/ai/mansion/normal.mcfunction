execute if entity @s[nbt=!{data:{path:{}}}] run function luigis_mansion:entities/ghost/set_specific_path {index:0}

tag @s[scores={Dialog=..299}] add visible
execute if entity @s[scores={Dialog=..300}] at @a[tag=same_room,tag=!spectator] unless entity @e[tag=ball_floor,distance=..4.999999,limit=1] run tag @s remove visible
execute if entity @s[scores={Dialog=..300}] at @a[tag=same_room,tag=!spectator] positioned ^ ^ ^8 run tag @s[distance=..8] remove visible
tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"floating_whirlindas_female"}}},tag=!hurt,tag=!vanish,limit=1] add partner
execute unless entity @e[tag=partner,limit=1] run summon minecraft:marker ^ ^ ^1.4 {Tags:["remove_from_existence","partner"]}
execute at @s facing entity @e[tag=partner,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.7 run function luigis_mansion:entities/floating_whirlindas_male/lead

scoreboard players set @s TargetTask 5
scoreboard players set @s[nbt={data:{animation:{}}}] TargetTask 0

execute at @s[tag=visible] if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..1.6,limit=1] run function luigis_mansion:entities/floating_whirlindas_male/collide