teleport @s[tag=!stop_spinning] ~ ~ ~ ~-2 ~
execute positioned ^ ^ ^2.5 rotated as @s run teleport @s[tag=!stop_spinning] ^ ^ ^-2.5 ~ ~

execute unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"boolossus"}}},tag=talk,limit=1] run tag @a remove boolossus_target
execute unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"boolossus"}}},tag=talk,limit=1] run tag @p[tag=!spectator,tag=player,distance=..2] add boolossus_target
execute unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"boolossus"}}},tag=talk,limit=1] if entity @a[tag=boolossus_target,limit=1] run tag @s add talk
execute as @a[tag=boolossus_target] run trigger GBHChoice set 0

execute if entity @s[tag=talk] run function luigis_mansion:dialog/boolossus/normal
execute if entity @s[tag=dialog_animation] run function luigis_mansion:entities/boolossus/ai/mansion/normal/dialog_animation
