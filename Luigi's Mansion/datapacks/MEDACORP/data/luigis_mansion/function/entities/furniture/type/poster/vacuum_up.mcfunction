execute if entity @s[tag=!boo_poster] at @e[tag=vacuuming_me,sort=nearest,limit=1] run function luigis_mansion:spawn_entities/vacuumed_cloth
tag @s[tag=!boo_poster] add remove_from_existence
data modify entity @s[tag=boo_poster] item.components."minecraft:item_model" set value "luigis_mansion:furniture/poster/boo"
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"poster"},amount:5,animation:{namespace:"luigis_mansion",id:"knockback/large"}}
execute if entity @s[tag=boo_poster] as @e[tag=same_room,tag=vacuuming_me] run function luigis_mansion:entities/luigi/damage
data remove storage luigis_mansion:data damage
tag @s remove open