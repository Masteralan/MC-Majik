## Mana cost accounted for outside of spell
scoreboard players add @s xp 8
xp add @s -7 points

## Apply to item if there is no self shape or bound weapon
execute unless entity @s[tag=spell_shape_self] unless entity @s[tag=MajikBoundWeaponAttack] as @e[type=item,tag=SpellScroll] at @s run function majik:spells/casting/aura_nature_apply
## Apply to self if there is a self shape
execute if entity @s[tag=spell_shape_self] unless entity @s[tag=MajikBoundWeaponAttack] as @s at @s run function majik:spells/casting/aura_nature_apply
## Apply to enemy if it was a bound weapon attack
execute if entity @s[tag=MajikBoundWeaponAttack] as @e[tag=hit_bound_weapon,distance=..2.5] at @s run function majik:spells/casting/aura_nature_apply