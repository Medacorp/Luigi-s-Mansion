execute unless entity @s[scores={ElementalNr=-2147483648..}] run function luigis_mansion:entities/furniture/type/tick/elemental_source/new_score
scoreboard players operation #temp ElementalNr = @s ElementalNr
execute as @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"elemental_ghost"}}}]}] if score @s ElementalNr = #temp ElementalNr run tag @s add this_elemental_ghost

execute if entity @s[tag=fire_elemental_source,tag=enabled] unless entity @s[tag=elemental_must_be_searched,scores={ActionTime=0..}] run function luigis_mansion:entities/furniture/type/tick/elemental_source/fire
execute if entity @s[tag=water_elemental_source,tag=enabled] unless entity @s[tag=elemental_must_be_searched,scores={ActionTime=0..}] run function luigis_mansion:entities/furniture/type/tick/elemental_source/water
execute if entity @s[tag=ice_elemental_source,tag=enabled] unless entity @s[tag=elemental_must_be_searched,scores={ActionTime=0..}] run function luigis_mansion:entities/furniture/type/tick/elemental_source/ice

scoreboard players add @s[tag=!enabled,tag=elemental_timer] FurnitureElementTimer 1
tag @s[tag=!enabled,tag=elemental_timer,scores={FurnitureElementTimer=100}] add enabled
tag @s[tag=enabled,tag=!remove_from_existence,tag=!dead] add lit
scoreboard players reset @s[tag=enabled] FurnitureElementTimer

scoreboard players reset #temp ElementalNr
tag @e remove this_elemental_ghost