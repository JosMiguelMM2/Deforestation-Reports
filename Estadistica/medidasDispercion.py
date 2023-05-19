import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# Cargar el archivo csv
df = pd.read_csv('report.csv')

# Convertir los valores de la columna 'GradeAffectation' en enteros
df['GradeAffectation'] = df['GradeAffectation'].map({'Mínima': 1, 'Baja': 2, 'Moderada': 3, 'Significativa': 4, 'Alta': 5, 'Grave': 6})

# Calcular la desviación estándar
std = np.std(df['GradeAffectation'])

# Calcular la varianza
var = np.var(df['GradeAffectation'])

# Calcular el rango intercuartílico y los cuartiles
q1, q2, q3 = np.percentile(df['GradeAffectation'], [25, 50, 75])
iqr = q3 - q1

# Crear un gráfico de caja
fig, axs = plt.subplots(ncols=2, figsize=(12, 6))

axs[0].boxplot(df['GradeAffectation'], vert=False)
axs[0].axvline(x=np.mean(df['GradeAffectation']), color='red', linestyle='dashed', linewidth=2, label='Media')
axs[0].set_xlabel('Grado de afectación')
axs[0].set_title('Gráfico de caja del Grado de afectación de deforestación')
axs[0].legend()

# Crear un gráfico de barras para mostrar la desviación estándar y la varianza
x_labels = ['Desviación estándar', 'Varianza']
x_pos = np.arange(len(x_labels))
values = [std, var]

axs[1].bar(x_pos, values, align='center', alpha=0.5)
axs[1].set_xticks(x_pos)
axs[1].set_xticklabels(x_labels)
axs[1].set_xlabel('Medida de dispersión')
axs[1].set_ylabel('Valor')
axs[1].set_title('Desviación estándar y varianza del Grado de afectación de deforestación')

# Mostrar los gráficos
plt.show()

# Imprimir los resultados de las medidas de dispersión y los cuartiles
print('La desviación estándar es:', round(std, 2))
print('La varianza es:', round(var, 2))
print('El rango intercuartílico es:', iqr)
print('El primer cuartil es:', q1)
print('El segundo cuartil (mediana) es:', q2)
print('El tercer cuartil es:', q3)
