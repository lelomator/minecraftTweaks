execute as @e[type=item] at @s unless entity @s[tag=cost_2] if block ~ ~-1 ~ diamond_block run tag @s add cost
execute as @e[type=item] at @s if entity @s[tag=cost] if block ~ ~-1 ~ diamond_block run tag @s add cost_2
execute as @e[type=item] at @s if entity @s[tag=cost] if block ~ ~-1 ~ diamond_block run effect give @p minecraft:blindness 3 1 true
execute as @e[type=item] at @s if entity @s[tag=cost] if block ~ ~-1 ~ diamond_block run tellraw @a[distance=..5] {"color":"gray","text":"wait..."}
execute as @e[type=item] at @s if entity @s[tag=cost] if block ~ ~-1 ~ diamond_block run schedule function mctweaks:rm_cost_side 40t
execute as @e[type=item] at @s if entity @s[tag=cost] if block ~ ~-1 ~ diamond_block run tag @s remove cost
