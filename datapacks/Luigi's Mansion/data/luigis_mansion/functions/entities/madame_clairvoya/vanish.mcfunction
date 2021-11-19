scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1},tag=visible] run playsound luigis_mansion:entity.madame_clairvoya.disappear hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=1}] run scoreboard players set @e[tag=this_model,tag=madame_clairvoya_head,limit=1] AnimationProg 0
execute at @s as @e[tag=this_model,tag=madame_clairvoya_head,limit=1] run function luigis_mansion:animations/madame_clairvoya/vanish
execute if score #mirrored Selected matches 0 run teleport @s[scores={ActionTime=..40}] ~ ~0.05 ~ ~20 ~
execute if score #mirrored Selected matches 1 run teleport @s[scores={ActionTime=..40}] ~ ~0.05 ~ ~-20 ~
execute if entity @s[scores={ActionTime=40}] run function luigis_mansion:entities/madame_clairvoya/turn_invisible
tag @s[scores={ActionTime=120}] add disappear