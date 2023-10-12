$function $(namespace):spawn_furniture/door/model/$(id)
execute if data entity @s HandItems[0].tag{Unbreakable:1b,Damage:16,CustomModelData:0} if data entity @s HandItems[1].tag{Unbreakable:1b,Damage:16,CustomModelData:0} run tag @s add dead
execute unless data entity @s HandItems[0].tag unless data entity @s HandItems[1].tag run tag @s add dead