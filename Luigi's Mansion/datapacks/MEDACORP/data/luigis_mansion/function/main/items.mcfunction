execute if data entity @s Thrower unless data entity @s Owner run data modify entity @s Owner set from entity @s Thrower
data modify entity @s PickupDelay set value 0s
kill @s[nbt={Item:{components:{"minecraft:custom_data":{kill:1b}}}}]