objetos = {
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
			resultado_positivo= "Voce subiu na arvore. Acidentalmente o galho onde voce estava apoiado quebrou. Então voce caiu no chao e fraturou as duas pernas. Ficando impossibilitado de andar, voce fica ali durante dias e morre de fome.",
			resultado_negativo= "",
			comando_correto= "use ARVORE",
			cena_alvo= -1,
			resolvido= false,
			obtido= false
		},
		{
			id= 2,
			tipo= 0,
			nome= "Galhos",
			descricao= "Esses galhos estão secos ",
			resultado_positivo= "Voce conseguiu fazer uma fogueira.",
			resultado_negativo= "",
			comando_correto= "use PEDRAS with GALHOS",
			cena_alvo= 5,
			resolvido= false,
			obtido= false
		},
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
		},
		{
			id= 4,
			tipo= 0,
			nome= "Sono",
			descricao= "Voce está exausto",
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
			resultado_positivo= "Infelizmente você comeu um cogumelo da um cogumelo da especie Amanita phalloides , e alguns minutos depois, apos algumas alucinacoes voce veio a óbito. FIM.",
			resultado_negativo= "",
			comando_correto= "use COGUMELOS",
			cena_alvo= -1,
			resolvido= false,
			obtido= true
		},
		{
			id= 6,
			tipo= 0,
			nome= "Macacos",
			descricao= "Esses macacos são rapidos porém estão em grande numero",
			resultado_positivo= "Voce conseguiu derrubar um macaco.",
			resultado_negativo= "",
			comando_correto= "use SINALIZADOR with MACACOS",
			cena_alvo= 7,
			resolvido= false,
			obtido= true
		},
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
		},
		{
			id= 8,
			tipo= 0,
			nome= "SINALIZADOR",
			descricao= "É um sinalizador maritimo",
			resultado_positivo= "Voce conseguiu alertar o piloto que sobrevoava a area.",
			resultado_negativo= "",
			comando_correto= "use SINALIZADOR",
			cena_alvo= 10,
			resolvido= false,
			obtido= true
		},
		{
			id= 9,
			tipo= 0,
			nome= "Corda",
			descricao= "A corda parece segura",
			resultado_positivo= "Voce está seguro agora porém adquiriu alguns ferimentos em toda essa aventura e precisa de cuidados medicos.",
			resultado_negativo= "",
			comando_correto= "",
			cena_alvo= 1000,
			resolvido= false,
			obtido= true
		},
		{
			id= 10,
			tipo= 0,
			nome= "Sinalizador",
			descricao= "É um sinalizador maritimo",
			resultado_positivo= "Voce pegou o sinalizador.",
			resultado_negativo= "",
			comando_correto= "get SINALIZADOR",
			cena_alvo= 4,
			resolvido= false,
			obtido= true
		},





}

return objetos
