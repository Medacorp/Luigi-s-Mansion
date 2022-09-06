tag @s add in_vacuum
execute if entity @s[scores={VacuumTime=38..}] run scoreboard players operation @s GrabbedID = @a[tag=me,limit=1] ID