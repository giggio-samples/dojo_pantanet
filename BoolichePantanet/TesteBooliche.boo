namespace BoolichePantanet

import System
import NUnit.Framework

[TestFixture]
class TesteBooliche:

	jogo as Jogo
	[Test]
	public def ComecaNo0():
		Assert.AreEqual(0, jogo.Pontos)


	[Test]
	public def Acertou1():
		jogo.Acertar(1)
		Assert.AreEqual(1, jogo.Pontos)
		
	[Test]
	public def Acertou2():
		jogo.Acertar(2)
		Assert.AreEqual(2, jogo.Pontos)

	[Test]
	public def Acertou2e1():
		jogo.Acertar(2)
		jogo.Acertar(1)
		Assert.AreEqual(3, jogo.Pontos)

	[Test]
	public def AcertouSparee1():
		jogo.Acertar(5)
		jogo.Acertar(5)
		jogo.Acertar(1)
		Assert.AreEqual(12, jogo.Pontos)

	[Test]
	public def AcertouSparee3():
		jogo.Acertar(5)
		jogo.Acertar(5)
		jogo.Acertar(3)
		Assert.AreEqual(16, jogo.Pontos)

	[Test]
	public def AcertouStrikee2e3():
		jogo.Acertar(10)
		jogo.Acertar(2)
		jogo.Acertar(3)
		Assert.AreEqual(20, jogo.Pontos)

	[Test]
	public def Acertou0Spare2e3():
		jogo.Acertar(0)
		jogo.Acertar(10)
		jogo.Acertar(2)
		jogo.Acertar(3)
		Assert.AreEqual(17, jogo.Pontos)
		
	[Test]
	public def Acertou1Sparese5e1():
		jogo.Acertar(5)
		jogo.Acertar(5)
		jogo.Acertar(5)
		jogo.Acertar(1)
		Assert.AreEqual(21, jogo.Pontos)

	[Test]
	public def Acertou3Strikese2e1():
		jogo.Acertar(10) //30 
		jogo.Acertar(10) //21
		jogo.Acertar(10) //13
		jogo.Acertar(1)  //01
		jogo.Acertar(2)  //02
		Assert.AreEqual(67, jogo.Pontos)

	[SetUp]
	public def Setup():
		jogo = Jogo()
		