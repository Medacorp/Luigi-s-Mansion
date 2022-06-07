execute if data entity @s Thrower unless data entity @s Owner run data modify entity @s Owner set from entity @s Thrower
data modify entity @s PickupDelay set value 0s
kill @s[nbt={Item:{tag:{luigis_mansion:{kill:1b}}}}]