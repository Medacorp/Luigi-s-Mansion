execute if entity @s[type=minecraft:item,tag=!elemental_ghost,scores={SpawnTime=10..}] positioned as @s positioned ~ ~0.2 ~ if block ^ ^ ^0.3 #luigis_mansion:items_ignore positioned ~ ~-0.2 ~ run teleport @s ^ ^ ^0.1
execute if entity @s[type=minecraft:item,tag=!elemental_ghost,scores={SpawnTime=10..}] positioned as @s positioned ~ ~0.2 ~ unless block ^ ^ ^0.3 #luigis_mansion:items_ignore rotated ~ 0 if block ^ ^ ^0.3 #luigis_mansion:items_ignore positioned ~ ~-0.2 ~ run teleport @s ^ ^ ^0.1
execute if entity @s[type=minecraft:item,nbt={Item:{tag:{luigis_mansion:{id:"luigis_mansion:key"}}}}] positioned as @s positioned ~ ~0.2 ~ if block ^ ^ ^0.3 #luigis_mansion:items_ignore positioned ~ ~-0.2 ~ run teleport @s ^ ^ ^0.1
execute if entity @s[type=minecraft:item,nbt={Item:{tag:{luigis_mansion:{id:"luigis_mansion:key"}}}}] positioned as @s positioned ~ ~0.2 ~ unless block ^ ^ ^0.3 #luigis_mansion:items_ignore rotated ~ 0 if block ^ ^ ^0.3 #luigis_mansion:items_ignore positioned ~ ~-0.2 ~ run teleport @s ^ ^ ^0.1
execute if entity @s[tag=vacuumable,tag=!boolossus] unless entity @s[tag=!haunted_object,tag=!visible,tag=ghost] unless entity @s[tag=haunted_object,tag=!moving,tag=!haunted_music_sheet] unless entity @s[tag=haunted_music_sheet,scores={WaitTime=..0}] positioned as @s if block ^ ^ ^0.3 #luigis_mansion:ghosts_ignore unless entity @a[tag=me,distance=..1.2,limit=1] run teleport @s ^ ^ ^0.1
tag @s[tag=vacuumable,tag=visible] add fleeing
tag @s[tag=black_bogmire] add in_vacuum
tag @s[tag=ghost_guy,tag=!maskless] add in_vacuum
tag @s[tag=henry,tag=!carless] add in_vacuum
tag @s[tag=orville,tag=!planeless] add in_vacuum
tag @s[tag=clockwork_soldier,tag=!windless] add in_vacuum
execute if entity @s[tag=vacuumable,tag=spark,tag=visible] positioned as @s if entity @a[tag=me,distance=..1.2,limit=1] run tag @s add normal_death
execute if entity @s[tag=vacuumable,tag=spark,tag=visible] positioned as @s if entity @a[tag=me,distance=..1.2,limit=1] run function luigis_mansion:items/poltergust_3000/latch_onto_ghost
execute if entity @s[tag=elemental_ghost,scores={SpawnTime=21..}] positioned as @s if block ^ ^ ^0.3 #luigis_mansion:items_ignore run teleport @s ^ ^ ^0.01
tag @s[tag=elemental_ghost,scores={SpawnTime=21..}] add hurt_elemental_ghost
execute if entity @s[tag=elemental_ghost,scores={SpawnTime=21..},tag=hurt_elemental_ghost] positioned as @s if entity @a[tag=me,distance=..1.2,limit=1] run tag @s add normal_death
execute if entity @s[tag=elemental_ghost,scores={SpawnTime=21..},tag=hurt_elemental_ghost] positioned as @s if entity @a[tag=me,distance=..1.2,limit=1] run function luigis_mansion:items/poltergust_3000/latch_onto_ghost
execute if entity @s[tag=vacuumable,tag=!spark,tag=!boolossus] unless entity @s[tag=!haunted_object,tag=!visible,tag=ghost] unless entity @s[tag=haunted_object,tag=!moving,tag=!haunted_music_sheet] unless entity @s[tag=haunted_music_sheet,scores={WaitTime=..0}] positioned as @s if entity @a[tag=me,distance=..1.2,limit=1] run tag @s add normal_death
execute if entity @s[tag=vacuumable,tag=!spark,tag=!boolossus,tag=!ghost] unless entity @s[tag=!haunted_object,tag=!visible,tag=ghost] unless entity @s[tag=haunted_object,tag=!moving,tag=!haunted_music_sheet] unless entity @s[tag=haunted_music_sheet,scores={WaitTime=..0}] positioned as @s if entity @a[tag=me,distance=..1.2,limit=1] run tag @s add dead
execute if entity @s[tag=vacuumable,tag=!spark,tag=!boolossus] unless entity @s[tag=!haunted_object,tag=!visible,tag=ghost] unless entity @s[tag=haunted_object,tag=!moving,tag=!haunted_music_sheet] unless entity @s[tag=haunted_music_sheet,scores={WaitTime=..0}] positioned as @s if entity @a[tag=me,distance=..1.2,limit=1] run function luigis_mansion:items/poltergust_3000/latch_onto_ghost
tag @s[tag=ghost,scores={VulnerableTime=2..},tag=!dead,tag=!vanish,tag=!appear,tag=!boo,tag=!boolossus,tag=!king_boo] add hurt
tag @s[tag=ghost,tag=hurt,tag=!vanish,tag=!boo,tag=!boolossus,tag=!king_boo] add in_vacuum
tag @s[tag=boo,tag=!dead,tag=!appear] add boo_hurt
tag @s[tag=boo,tag=!dead,tag=!appear] add in_vacuum
execute if entity @s[tag=boo,tag=!dying,scores={HurtTime=1..,Health=1..},tag=!already_hurt,tag=!appear] run function luigis_mansion:entities/boo/harm
tag @s[tag=king_boo,tag=fight,tag=!dead] add boo_hurt
tag @s[tag=king_boo,tag=fight,tag=!dead] add in_vacuum
execute if entity @s[tag=king_boo,tag=fight,tag=!dying,scores={HurtTime=1..,Health=1..},tag=!already_hurt] run function luigis_mansion:entities/king_boo/harm
execute if entity @s[tag=ghost,scores={VulnerableTime=1..},tag=!vanish,tag=!being_vacuumed] run function luigis_mansion:items/poltergust_3000/latch_onto_ghost
execute if entity @s[tag=boo,scores={Health=..0}] run function luigis_mansion:items/poltergust_3000/latch_onto_ghost
execute if entity @s[tag=king_boo,tag=fight,scores={Health=..0}] run function luigis_mansion:items/poltergust_3000/latch_onto_ghost
execute if entity @s[tag=king_boo,tag=fight,scores={Health=..0}]