tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"floating_whirlindas_male"}}},limit=1] add partner
data modify entity @s data.animation set from entity @e[tag=partner,limit=1] data.animation
tag @s remove visible
execute if entity @e[tag=partner,tag=visible,limit=1] run tag @s add visible

execute if entity @e[tag=partner,scores={HurtTime=1},limit=1] run playsound luigis_mansion:entity.floating_whirlindas.female.hurt hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @e[tag=partner,scores={HurtTime=1},limit=1] run scoreboard players set @s Sound 40
tag @s remove flee_sound
execute if entity @e[tag=partner,tag=flee,limit=1] run tag @s add flee_sound
execute unless entity @e[tag=partner,tag=!hurt,tag=!flee,limit=1] at @e[tag=partner,limit=1] run teleport @s ^-0.5 ^ ^1 ~ ~

execute if entity @e[tag=partner,tag=vanish,scores={ActionTime=1..3},limit=1] run tag @s add vanish

execute unless entity @e[tag=partner,tag=!remove_from_existence,limit=1] run function luigis_mansion:entities/floating_whirlindas_female/force_death
tag @e[tag=partner,limit=1] remove partner