cenas = require './dados/cenas'
objetos = require './dados/objetos'

json = require 'json'

local inventario = {}

---------------- Começo do jogo-----------------

local i = 1; --- I = CENA ATUAL

	while true do

		if i<0 then break end

		print(cenas[i].descricao)

		local comando_correto = false;
		while not comando_correto do
			local comando = io.read()
			for k, v in pairs(cenas[i].itens) do

				if objetos[v].comando_correto == comando then
					if i ~= objetos[v].cena_alvo then
						i = objetos[v].cena_alvo
						comando_correto = true
					end
					print(objetos[v].resultado_positivo)

					if objetos[v].tipo == 1 then
						table.insert(inventario, v)
					end

					break
				end

				if k == table.getn(cenas[i].itens) then
					print("Comando incorreto")
				end

			end
		end



	end

	print("FIM DE JOGO");

