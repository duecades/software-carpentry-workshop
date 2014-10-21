import pandas as pd
import statsmodels.api as sm
import matplotlib.pyplot as plt
import analyze_mosquitos_data_lib as mosquito_lib

filename = "A1_mosquito_data.csv"

data = pd.read_csv(filename)

print data.head()
