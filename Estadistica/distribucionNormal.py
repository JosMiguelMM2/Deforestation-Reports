import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# Cargar datos desde el archivo CSV
df = pd.read_csv('report.csv')

# Convertir la columna 'GradeAffectation' a valores numéricos
grades = {'Mínima':1, 'Baja':2, 'Moderada':3, 'Significativa':4, 'Alta':5, 'Grave':6}
df['GradeAffectation'] = df['GradeAffectation'].map(grades)

# Calcular la media y la desviación estándar de la columna 'GradeAffectation'
mu = np.mean(df['GradeAffectation'])
sigma = np.std(df['GradeAffectation'])

# Crear un conjunto de valores x para graficar la distribución normal
x = np.linspace(mu - 3*sigma, mu + 3*sigma, 100)

# Crear la distribución normal utilizando los valores de mu y sigma
y = 1/(sigma * np.sqrt(2 * np.pi)) * np.exp(-(x - mu)**2 / (2 * sigma**2))

# Graficar la distribución normal
plt.plot(x, y)
plt.title('Distribución Normal')
plt.xlabel('Grades')
plt.ylabel('Frecuencia')
plt.show()
