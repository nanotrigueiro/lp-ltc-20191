#UFRPE
#PROF: GABRIEL
#DISC: LINGUAGEM DE PROGRAMACAO (LP)

#SOLUCAO ORIENTADA A OBJETO

class Veiculo():
    def __init__(self, tipo, marca, modelo, qtdRodas):
        self.tipo = tipo
        self.marca = marca
        self.modelo = modelo
        self.qtdRodas = qtdRodas

    def getTipo(self):
        return self.tipo

    def setTipo(self, tipo):
        self.tipo = tipo

    def getmarca(self):
        return self.marca

    def setmarca(self, marca):
        self.marca = marca

    def getmodelo(self):
        return self.modelo

    def setmodelo(self, modelo):
        self.modelo = modelo

    def getQtdRodas(self):
        return self.qtdRodas

    def setQtdRodas(self, qtdRodas):
        self.qtdRodas = qtdRodas

    def impimirVeiculo(self):
        print('O veículo marca ' + self.marca + ', modelo ' + self.modelo + ', tem ' + self.qtdRodas + ' rodas e é um(a) ' + self.tipo)

        
veiculo1 = Veiculo('Carro', 'Volkswagen', 'Gol', '4')
veiculo1.impimirVeiculo()
veiculo2 = Veiculo('Carro', 'GM', 'Omega', '4')
veiculo2.impimirVeiculo()
veiculo3 = Veiculo('Moto', 'Honda', 'CG150', '2')
veiculo3.impimirVeiculo()
veiculo4 = Veiculo('Carro', 'Ford', 'Ecosport', '4')
veiculo4.impimirVeiculo()
