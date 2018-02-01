spell_re=['r','e']
spell_serve=['s','e','r','v','e']
spell_serve.reverse()

spell_reverse=spell_re+spell_serve
spell_reverse.remove('v')
spell_reverse.insert(2,'v')

print(spell_reverse)

spell_reverse.remove('r')
spell_reverse.remove('e')
spell_reverse.remove('v')
spell_reverse.pop()
spell_reverse.insert(0,'s')
spell_reverse.insert(0,'b')
spell_reverse.insert(0,'o')
spell_reverse.insert(5,'v')
print(spell_reverse)
