execute if entity @s[scores={Room=26},tag=!element_hurt,tag=!kitchen_waiter] run function 3ds_remake:entities/waiter/hidden/path/dining_room_1
execute if entity @s[scores={Room=26},tag=!element_hurt,tag=kitchen_waiter] run function 3ds_remake:entities/waiter/hidden/path/dining_room_2
scoreboard players set @s[scores={Room=26},tag=element_hurt,tag=!kitchen_waiter] Dialog 17
scoreboard players set @s[scores={Room=26},tag=element_hurt,tag=kitchen_waiter] Dialog 19