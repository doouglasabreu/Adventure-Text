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

			local comando = io.read()
			local tokens = {}
			for token in string.gmatch(comando, "[^%s]+") do
				table.insert(tokens, token)
			end

			if tokens[1] == "use" then

				if table.getn(tokens) == 2 then

					for k, v in pairs(cenas[i].itens) do
						if comando == v.comando_correto then
								i = v.cena_alvo
								comando_correto = true
								break;
						end
					end

				elseif table.getn(tokens) == 4 and token[3] == "with" then

					for p, q in pairs(cenas[i].itens) do
						for k, v in pairs(inventario) do
							if q.nome == v.nome then
								i = q.cena_alvo
								table.remove(table, k)
								comando_correto = true
							end
						end
					end
				end

			elseif tokens[1] == "check" then

				for k, v in pairs(cenas[i].itens) do
					if tokens[2] == v.nome then
						print(v.descricao)
					end
				end

			elseif tokens[1] == "get" then

				for k, v in pairs(cenas[i].itens) do
					if tokens[2] == v.nome then
						table.insert(inventario, v)
					end
				end

			elseif comando == "inventory" then

				if inventory then
					for k, v in pairs(inventory) do
						print(v.nome)
					end
				else
					print("Inventario vazio")
				end

			else
				print("Comando incorreto")
			end

		end

	end

	print("FIM DE JOGO");

