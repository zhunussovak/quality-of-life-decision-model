import pandas as pd

df = pd.read_csv("data/quality_of_life.csv")
df = df.dropna()

#ensure numeric columns are correct
numeric_cols =["avg_work_hours_per_day", "avg_rest_hours_per_day", "avg_sleep_hours_per_day", "avg_exercise_hours_per_day", "age_at_death"]
df[numeric_cols] = df[numeric_cols].apply(pd.to_numeric, errors='coerce')
df = df.dropna()