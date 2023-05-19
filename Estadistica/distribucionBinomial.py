import pandas as pd
from scipy.stats import binom
import matplotlib.pyplot as plt

# Cargar los datos del archivo CSV en un DataFrame de pandas
df = pd.read_csv('report.csv')

# Definir los parámetros de la distribución binomial
n = len(df) # Tamaño de la muestra
p = 0.5     # Probabilidad de éxito (0.5 porque hay 6 opciones de clasificación)

# Calcular la probabilidad de cada posible valor de k (éxito) en la distribución binomial
k_values = range(0, 7) # Los valores posibles de k van de 0 a 6
probabilities = [binom.pmf(k, n, p) for k in k_values]

# Imprimir los resultados
for k, p in zip(k_values, probabilities):
    print(f'Probabilidad de obtener {k} afectaciones de grado: {p:.4f}')

# Crear la gráfica de la distribución binomial
plt.bar(k_values, probabilities)
plt.xlabel('Número de afectaciones de grado')
plt.ylabel('Probabilidad')
plt.title('Distribución binomial de las afectaciones de grado')
plt.show()
