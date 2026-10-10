$execute if entity @e[tag=interact,tag=manual,tag=2,limit=1,nbt={data:{search_furnitures:[$(search_furniture)]}}] run tag @s add 2
tag @s[tag=2] remove 1