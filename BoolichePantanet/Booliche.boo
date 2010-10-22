namespace BoolichePantanet

import System

class Jogo:
	
	[getter(Pontos)]
	_pontos as int
	_contaStrike as int
	_ultimaJogada as int
	_jogada as int

	public def Acertar(p as int):
		_jogada++
		if _contaStrike > 0: 
			_pontos += 2*p
			_contaStrike--
		else:
			_pontos += p

		if p == 10 and _jogada == 1:
			_contaStrike += 2
		else: 
			if _ultimaJogada + p == 10 and _jogada == 2:
				_contaStrike = 1

		if p == 10 or _jogada == 2:
			_jogada = 0
		
		_ultimaJogada = p
		

