import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# Cargar el archivo csv
df = pd.read_csv('report.csv')

# Convertir los valores de la columna 'GradeAffectation' en enteros
df['GradeAffectation'] = df['GradeAffectation'].map({'Mínima': 1, 'Baja': 2, 'Moderada': 3, 'Significativa': 4, 'Alta': 5, 'Grave': 6})

# Calcular la media
mean = np.mean(df['GradeAffectation'])

# Calcular la moda
mode = np.array(np.unique(df['GradeAffectation'], return_counts=True)).T
mode = mode[mode[:, 1].argsort()][::-1][0][0]

# Calcular la mediana
median = np.median(df['GradeAffectation'])

# Crear un histograma
plt.hist(df['GradeAffectation'])

# Agregar una línea vertical para la media
plt.axvline(x=mean, color='red', linestyle='dashed', linewidth=2, label='Media')

# Agregar una línea vertical para la moda
plt.axvline(x=mode, color='green', linestyle='dashed', linewidth=2, label='Moda')

# Agregar una línea vertical para la mediana
plt.axvline(x=median, color='purple', linestyle='dashed', linewidth=2, label='Mediana')

# Agregar etiquetas de eje y título
plt.xlabel('Valor')
plt.ylabel('Frecuencia')
plt.title('Histograma de Grado de afectacion de deforestacion')

# Agregar una leyenda
plt.legend()

# Mostrar la gráfica
plt.show()

# Imprimir los resultados
print('La media es:', round(mean))
print('La moda es:', round(mode))
print('La mediana es:', round(median))
