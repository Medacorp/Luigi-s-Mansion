scoreboard players set #temp Move 8
scoreboard players operation #temp PunchingBag = @s PunchingBag
execute as @e[tag=punching_bag_detect] if score @s PunchingBag = #temp PunchingBag run tag @s add this_punching_bag
scoreboard players reset @e[tag=this_punching_bag,limit=1] MirrorX
scoreboard players reset @e[tag=this_punching_bag,limit=1] MirrorZ
scoreboard players reset #temp PunchingBag
execute if entity @s[scores={Angle=-600..600}] positioned ~ ~-5.4 ~ unless entity @e[tag=this_punching_bag,distance=..0.1,limit=1] at @s facing entity @e[tag=this_punching_bag,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Angle=-600..600}] positioned ~ ~-5.4 ~ unless entity @e[tag=this_punching_bag,distance=..0.1,limit=1] if entity @e[tag=this_punching_bag,limit=1,nbt={HurtTime:0s}] run scoreboard players set @s Angle 1000
execute if entity @s[scores={Angle=-600..600}] positioned ~ ~-5.4 ~ unless entity @e[tag=this_punching_bag,distance=..0.1,limit=1] if entity @e[tag=this_punching_bag,limit=1,nbt=!{HurtTime:0s}] run playsound luigis_mansion:entity.player.punch player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Angle=-600..600}] positioned ~ ~-5.4 ~ unless entity @e[tag=this_punching_bag,distance=..0.1,limit=1] if entity @e[tag=this_punching_bag,limit=1,nbt=!{HurtTime:0s}] run scoreboard players set @s Angle 3000
teleport @e[tag=this_punching_bag,limit=1] ~ ~-5.4 ~
data merge entity @e[tag=this_punching_bag,limit=1] {Health:20.0f}
function luigis_mansion:entities/punching_bag/swing
function luigis_mansion:entities/punching_bag/swing
execute unless entity @s[scores={Angle=-1000..1000}] at @s positioned ^ ^-4.4 ^ positioned ~-0.5 ~ ~-0.5 run function luigis_mansion:entities/punching_bag/hit
execute unless entity @s[scores={Angle=-1000..1000}] at @s positioned ^ ^-5.4 ^ positioned ~-0.5 ~ ~-0.5 run function luigis_mansion:entities/punching_bag/hit
execute if entity @s[scores={Angle=0}] align y run fill ~ ~-4 ~ ~ ~-2 ~ minecraft:chain
execute unless entity @s[scores={Angle=0}] align y run fill ~ ~-4 ~ ~ ~-2 ~ minecraft:air
execute if entity @s[tag=remove_from_existence] align y run fill ~ ~-4 ~ ~ ~-2 ~ minecraft:air
tag @e[tag=this_punching_bag] remove this_punching_bag