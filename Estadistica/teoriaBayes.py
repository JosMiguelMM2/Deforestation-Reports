import pandas as pd

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

# Imprimir los resultados
for deforestation_type, probabilities in posterior_probabilities.items():
    print(f'Probabilidades a posteriori para el tipo de deforestación "{deforestation_type}":')
    for grade, probability in probabilities.items():
        print(f'  - Probabilidad de grado de afectación "{grade}": {probability:.4f}')
