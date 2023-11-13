function luigis_mansion:other/cast_shadow
tellraw @a[tag=test] {"entity":"@e[tag=new_shadow]","nbt":""}
tag @a[tag=test] remove test
tag @e[tag=new_shadow] remove new_shadow
tag @e[tag=this_shadow] remove this_shadow