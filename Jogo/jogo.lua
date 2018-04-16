json_to_table = require 'teste'
cenas = json_to_table.read_json("./dados/cenas.json")

local inventario = {}


---------------- Começo do jogo-----------------

local i = 1; --- I = CENA ATUAL

	while true do

		if i<0 then break end

		print(cenas[i].descricao)

		comando_correto = false;
		while not comando_correto do
			comando = io.read()
			for k, v in pairs(cenas[i].itens) do
				if v.comando_correto == comando then
					if i ~= v.cena_alvo then
						i = v.cena_alvo
						print(i)
						comando_correto = true
					end
					print(v.resultado_positivo)

					if v.tipo == 1 then
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

