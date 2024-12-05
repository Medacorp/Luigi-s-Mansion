tag @s remove flashlight
tag @s remove flashlight_selected
tag @s[tag=!poltergust_selected,nbt={data:{selected_item:{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}}}] add flashlight_selected
tag @s[tag=flashlight_selected,scores={UseItem=1..,StrobulbCharge=0}] add flashlight_off
tag @s[tag=flashlight_selected,scores={UseItem=1..,StrobulbCharge=1..}] remove flashlight_off
tag @s[tag=!flashlight_selected,scores={StrobulbCharge=1..}] remove flashlight_off
scoreboard players set @s[tag=flashlight_selected,scores={UseItem=1..}] UseItem 0
tag @s[tag=!game_boy_horror_selected,tag=!poltergust_selected,tag=!flashlight_off,tag=dark_room] add flashlight
scoreboard players add @s[tag=flashlight_selected,tag=flashlight_off,scores={StrobulbCharge=..19},tag=dark_room] StrobulbCharge 1
execute if entity @s[scores={StrobulbCharge=1..}] run function luigis_mansion:entities/luigi/animation/set/no_idle
execute if entity @s[tag=flashlight_selected,tag=!flashlight_off,scores={StrobulbCharge=1..20},tag=flashlight] run function 3ds_remake:items/flashlight/effects/small_flash
execute if entity @s[tag=flashlight_selected,tag=!flashlight_off,scores={StrobulbCharge=20},tag=flashlight] run function 3ds_remake:items/flashlight/effects/large_flash
execute if entity @s[tag=!game_boy_horror_selected,tag=!poltergust_selected,tag=flashlight,scores={StrobulbCharge=21..}] run function luigis_mansion:items/flashlight/effects/create_light
execute if entity @s[scores={StrobulbCharge=0}] run function 3ds_remake:items/flashlight/weak_shine_direction
execute if entity @s[scores={StrobulbCharge=1..20},tag=flashlight_off] run function 3ds_remake:items/flashlight/effects/weak_light
scoreboard players set @s[tag=flashlight_selected,tag=!flashlight_off,scores={StrobulbCharge=1..20}] StrobulbCharge 21
scoreboard players add @s[tag=flashlight_selected,tag=!flashlight_off,scores={StrobulbCharge=21..}] StrobulbCharge 1
execute unless entity @s[scores={StrobulbCharge=1..40}] run scoreboard players set @s StrobulbCharge 0