tag @s remove idle_furniture
tag @s add in_fire
execute if entity @s[scores={FurnitureElementUp=-2147483648..}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/fire_element
tag @s[tag=shaken_by_fire,nbt=!{data:{furniture_type:"rolling"}},nbt=!{data:{furniture_type:"swinging"}},nbt=!{data:{furniture_type:"swirling"}}] add shake
execute if entity @s[tag=searchable_by_fire,nbt={data:{furniture_type:"swinging"}}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/swing_push
execute if entity @s[tag=searchable_by_fire,nbt={data:{furniture_type:"swirling"}}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/swirl
data modify entity @s data.hit_by.fire append from entity @e[tag=me,limit=1] UUID