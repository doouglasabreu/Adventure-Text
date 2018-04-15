{
	{
		id= 1,
		titulo= 'O comeco',
		descricao= "Voce acordou em um local com bastante ARVORES ao redor e em seu lado so ha destrocos de um AVIAO.",

		itens= {
			{
				id= 0,
				tipo= 0,
				nome= "AVIAO",
				descricao= "O Aviao esta todo despedacado.",
				resultado_positivo= "Voce se aproximou dos destrocos do aviao.",
				resultado_negativo= "",
				comando_correto= "use AVIAO",
				cena_alvo= 2,
				resolvido= true,
				obtido= false
			},
			{
				id= 1,
				tipo= 0,
				nome= "ARVORE",
				descricao= "Esta arvore parece um pouco velha e escorregadia.",
				resultado_positivo= "Voce subiu na arvore. Acidentalmente o galho onde voce estava apoiado quebrou. Ent�o voce caiu no chao e fraturou as duas pernas. Ficando impossibilitado de andar, voce fica ali durante dias e morre de fome.",
				resultado_negativo= "",
				comando_correto= "use ARVORE",
				cena_alvo= -1,
				resolvido= false,
				obtido= false
			}
		}
	},
	{
		id= 2,
		titulo= "Inspecionando Aviao",

		descricao= "Parece que nao ha ninguem vivo aqui alem de voce. Voce tambem encontra um SINALIZADOR com duas recargas." ,

		itens= {
			{
				id= 10,
				tipo= 0,
				nome= "Sinalizador",
				descricao= "� um sinalizador maritimo",
				resultado_positivo= "Voce pegou o sinalizador.",
				resultado_negativo= "",
				comando_correto= "get SINALIZADOR",
				cena_alvo= 4,
				resolvido= false,
				obtido= true
			}
		}
	},
	{
		id= 3,
		titulo= "Arvore",

		descricao= "Voce consegue ver o mar ha alguns metros de distancia. Este lugar parece se tratar de uma ilha deserta.  GAME OVER." ,

		itens= {}
	},
	{
		id= 4,
		titulo= "Galhos e Pedras",

		descricao= "Voce volta do aviao e percebe que esta anoitecendo. E necessario fazer uma fogueira antes que a noite chege. Voce olha pro chao e ve algumas PEDRAS." ,

		itens= {
			{
				id= 3,
				tipo= 1,
				nome= "Pedras",
				descricao= "Apenas 2 pedras comun",
				resultado_positivo= "Voce pegou as pedras.",
				resultado_negativo= "",
				comando_correto= "get PEDRAS",
				cena_alvo= 12,
				resolvido= false,
				obtido= true
			}
		}
	},
	{
		id= 5,
		titulo= "Fogueira",

		descricao= "Embora esteja tudo muito agradavel voce come�a a sentir fome e SONO, ao seu redor existe plantas que se parecem com COGUMELOS" ,

		itens= {
			{
				id= 4,
				tipo= 0,
				nome= "Sono",
				descricao= "Voce est� exausto",
				resultado_positivo= "Voce se aproximou da fogueira e dormiu.",
				resultado_negativo= "",
				comando_correto= "use SONO",
				cena_alvo= 6,
				resolvido= false,
				obtido= true
			},
			{
				id= 5,
				tipo= 0,
				nome= "Cogumelo",
				descricao= "Esses cogumelos parecem serem venenosos",
				resultado_positivo= "Infelizmente voc� comeu um cogumelo da um cogumelo da especie Amanita phalloides , e alguns minutos depois, apos algumas alucinacoes voce veio a �bito. FIM.",
				resultado_negativo= "",
				comando_correto= "use COGUMELOS",
				cena_alvo= -1,
				resolvido= false,
				obtido= true
			}
		}
	},
	{
		id= 6,
		titulo= "Segundo dia",

		descricao= "Voc� acordou com alguns barulhos de MACACOS e necessita urgentemente de uma fonte de alimento." ,

		itens= {
			{
				id= 6,
				tipo= 0,
				nome= "Macacos",
				descricao= "Esses macacos s�o rapidos por�m est�o em grande numero",
				resultado_positivo= "Voce conseguiu derrubar um macaco.",
				resultado_negativo= "",
				comando_correto= "use SINALIZADOR with MACACOS",
				cena_alvo= 7,
				resolvido= false,
				obtido= true
			}
		}
	},
	{
		id= 8,
		titulo= "Assando o Macaco",

		descricao= "sua FOGUEIRA esta quase se apagando." ,

		itens= {
			{
				id= 7,
				tipo= 0,
				nome= "FOGUEIRA",
				descricao= "A fogueira ainda pode produzir calor por mais alguns minutos",
				resultado_positivo= "Voce conseguiu uma fonte de alimento segura e a degustou.",
				resultado_negativo= "",
				comando_correto= "use MACACO with FOGUEIRA",
				cena_alvo= 9,
				resolvido= false,
				obtido= true
			}
		}
	},
	{
		id= 9,
		titulo= "O Sinal",

		descricao= "Voce comeca a ouvir barulhos semelhantes a de um helicoptero e possui apenas 1 recarga para seu SINALIZADOR" ,

		itens= {
			{
				id= 8,
				tipo= 0,
				nome= "SINALIZADOR",
				descricao= "� um sinalizador maritimo",
				resultado_positivo= "Voce conseguiu alertar o piloto que sobrevoava a area.",
				resultado_negativo= "",
				comando_correto= "use SINALIZADOR",
				cena_alvo= 10,
				resolvido= false,
				obtido= true
			}
		}
	},
	{
		id= 10,
		titulo= "O Resgate",

		descricao= "Ele por sua vez lanca uma CORDA para voce subir a bordo." ,

		itens= {
			{
				id= 9,
				tipo= 0,
				nome= "Corda",
				descricao= "A corda parece segura",
				resultado_positivo= "Voce est� seguro agora por�m adquiriu alguns ferimentos em toda essa aventura e precisa de cuidados medicos.",
				resultado_negativo= "",
				comando_correto= "",
				cena_alvo= 1000,
				resolvido= false,
				obtido= true
			}
		}
	},
	{
		id= 11,
		titulo= "O Final",

		descricao= "Voce adquiriu alguns ferimentos em toda essa aventura e precisa de cuidados medicos entao o piloto avisa sua posicao no radio para verificacao do local  e o leva para a cidade mais proxima ! PRONTO VOCE COMPLETOU O DESAFIO DA FLORESTA !" ,

		itens= {}
	},
	{
		id= 12,
		titulo= "Galhos secos",

		descricao= "Ao seu redor est� cheio de galhos secos" ,

		itens= {
			{
				id= 2,
				tipo= 0,
				nome= "Galhos",
				descricao= "Esses galhos est�o secos ",
				resultado_positivo= "Voce conseguiu fazer uma fogueira.",
				resultado_negativo= "",
				comando_correto= "use PEDRAS with GALHOS",
				cena_alvo= 5,
				resolvido= false,
				obtido= false
			}
		}
	}
}