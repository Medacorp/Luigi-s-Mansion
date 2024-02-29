execute if entity @s[nbt=!{data:{path:{}}}] run function luigis_mansion:entities/ghost/set_specific_path {index:0}

tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"floating_whirlindas_female"}}},limit=1] add partner
execute at @s facing entity @e[tag=partner,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.7 run function luigis_mansion:entities/floating_whirlindas_male/lead
tag @e[tag=partner,limit=1] remove partner

scoreboard players set @s TargetTask 5
scoreboard players set @s[nbt={data:{animation:{}}}] TargetTask 0

execute at @s[tag=visible] if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..1.6,limit=1] run function luigis_mansion:entities/floating_whirlindas_male/collide