#UFRPE
#PROF: GABRIEL
#DISC: LINGUAGEM DE PROGRAMACAO (LP)

#SOLUCAO ESTRUTURADO

def impimirVeiculo(marca, modelo, qtdRodas, tipo):
    print('O veículo marca ' + marca + ', modelo ' + modelo + ', tem ' + qtdRodas + ' rodas e é um(a) ' + tipo)

        
veiculo1 = {'tipo':'Carro', 'marca':'Volkswagen', 'modelo':'Gol', 'qtdRodas':'4'}
impimirVeiculo(veiculo1['marca'], veiculo1['modelo'], veiculo1['qtdRodas'], veiculo1['tipo'])
veiculo2 = {'tipo':'Carro', 'marca':'GM', 'modelo':'Omega', 'qtdRodas':'4'}
impimirVeiculo(veiculo2['marca'], veiculo1['modelo'], veiculo1['qtdRodas'], veiculo1['tipo'])
veiculo3 = {'tipo':'Moto', 'marca':'Honda', 'modelo':'CG150', 'qtdRodas':'2'}
impimirVeiculo(veiculo3['marca'], veiculo1['modelo'], veiculo1['qtdRodas'], veiculo1['tipo'])
veiculo4 = {'tipo':'Carro', 'marca':'Ford', 'modelo':'Ecosport', 'qtdRodas':'4'}
impimirVeiculo(veiculo4['marca'], veiculo1['modelo'], veiculo1['qtdRodas'], veiculo1['tipo'])
