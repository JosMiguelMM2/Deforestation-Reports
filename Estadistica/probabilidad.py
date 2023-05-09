import pandas as pd
import matplotlib.pyplot as plt

# Cargar los datos del archivo CSV en un DataFrame de pandas
df = pd.read_csv('report.csv')

# Definir las probabilidades a priori para cada tipo de deforestación
deforestation_types = ['Ganadería', 'Petróleo y gas', 'Construcción', 'Mineria', 'Urbanización', 'Tala de árboles', 'Cambio climático']
prior_probabilities = dict.fromkeys(deforestation_types, 1/len(deforestation_types))

# Calcular las probabilidades a posteriori para cada tipo de deforestación
posterior_probabilities = {}
for deforestation_type in deforestation_types:
    # Calcular la probabilidad de observar cada grado de afectación para el tipo de deforestación dado
    grade_counts = df[df['DeforesType'] == deforestation_type]['GradeAffectation'].value_counts()
    total_counts = grade_counts.sum()
    grade_probabilities = grade_counts.apply(lambda x: x/total_counts)

    # Calcular la probabilidad conjunta
    joint_probabilities = prior_probabilities[deforestation_type] * grade_probabilities

    # Normalizar la probabilidad conjunta para obtener la probabilidad a posteriori
    posterior_probabilities[deforestation_type] = joint_probabilities / joint_probabilities.sum()

# Crear la figura y los ejes de las sub-figuras
fig, axs = plt.subplots(nrows=3, ncols=3, figsize=(14, 14))

# Iterar sobre los tipos de deforestación y sus correspondientes probabilidades a posteriori
for i, deforestation_type in enumerate(deforestation_types):
    # Calcular la posición del eje correspondiente en la matriz de ejes
    row_idx = i // 3
    col_idx = i % 3

    # Graficar los resultados en el eje correspondiente
    axs[row_idx, col_idx].bar(grade_probabilities.index, grade_probabilities.values, alpha=0.5, label='Probabilidad a priori')
    axs[row_idx, col_idx].bar(joint_probabilities.index, joint_probabilities.values, alpha=0.5, label='Probabilidad conjunta')
    axs[row_idx, col_idx].bar(posterior_probabilities[deforestation_type].index, posterior_probabilities[deforestation_type].values, alpha=0.5, label='Probabilidad a posteriori')
    axs[row_idx, col_idx].set_title(deforestation_type)
    axs[row_idx, col_idx].set_xlabel('Grado de afectación')
    axs[row_idx, col_idx].set_ylabel('Probabilidad')
    axs[row_idx, col_idx].legend()

# Ajustar la disposición de las sub-figuras y mostrar la figura
plt.tight_layout()
plt.show()
