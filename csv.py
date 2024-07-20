import csv

data = """
data
"""

data = data.strip().replace('€', '').replace(',', '.')

lines = data.split('\n')

csv_data = []

for line in lines:
    csv_data.append(line.split('; '))

columns = ["Fecha y Hora", "ID", "Valor1", "Valor2", "Valor3", "Valor4", "Valor5"]

with open('output.csv', mode='w', newline='', encoding='utf-8') as file:
    writer = csv.writer(file)
    writer.writerow(columns)
    writer.writerows(csv_data)
