data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"reattach_backwards"}
scoreboard players set #temp Move 20
execute at @e[tag=this_body,limit=1] run summon minecraft:marker ^ ^4.56 ^ {Tags:["temp","remove_from_existence"]}
execute unless entity @e[tag=temp,distance=..0.7,limit=1] facing entity @e[tag=temp,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute at @s unless entity @e[tag=temp,distance=..0.7,limit=1] facing entity @e[tag=temp,limit=1] feet run function luigis_mansion:entities/ghost/move_forward_force
execute at @s rotated as @e[tag=this_body,limit=1] run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=can_reattach] if entity @e[tag=temp,distance=..0.7,limit=1] run tag @e[tag=this_body,limit=1] add headless_run
execute at @s[tag=can_reattach] if entity @e[tag=temp,distance=..0.7,limit=1] run tag @e[tag=this_body,limit=1] add can_decapitate
execute at @s[tag=can_reattach] if entity @e[tag=temp,distance=..0.7,limit=1] run tag @s add remove_from_existence
kill @e[tag=temp,limit=1]