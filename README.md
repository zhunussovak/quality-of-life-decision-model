# Quality of Life Analysis: Occupation Work-Life Balance

[View Interactive Dashboard](https://public.tableau.com/views/Lifestyle_17660246532890/WhichOccupationsHavetheBestWork-LifeBalance?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

---

## Project Overview

This project analyzes the **daily activity patterns across different occupations** to determine which jobs offer the best work-life balance.  
Key factors considered:

- Average work hours per day  
- Average rest hours per day  
- Average sleep hours per day  
- Average exercise hours per day  

The goal is to identify occupations that allow a **balanced daily lifestyle**, based on quantitative metrics.

---

## Data Source

The dataset is sourced from Kaggle: [Quality of Life Data](https://www.kaggle.com/datasets/oluwatosinadewale/quality-of-life-data)  
It contains clean, structured information for 1,000+ individuals across multiple occupations, including:

- `id`  
- `gender`  
- `occupation_type`  
- `avg_work_hours_per_day`  
- `avg_rest_hours_per_day`  
- `avg_sleep_hours_per_day`  
- `avg_exercise_hours_per_day`  

---

## Methodology

1. **Data Preparation**
   - Imported CSV into SQLite
   - Ensured headers were correct
   - Removed unnecessary rows  

2. **Occupation Ranking**
   - Calculated average metrics per occupation
   - Created a **balance score** using:  
     ```sql
     balance_score = -avg_work_hours + avg_rest_hours + avg_sleep_hours + avg_exercise_hours
     ```
   - Ranked occupations from highest to lowest balance score  

3. **Dashboard Visualization**
   - Built an interactive Tableau dashboard to highlight:
     - Overall occupation ranking  
     - Work vs sleep tradeoffs  
     - Daily lifestyle breakdown for top occupations  

---

## Key Insights

- **Top balanced occupations:** Artist, Teacher, Retail Worker  
- **Low balance occupations:** Entrepreneur, Manager, Healthcare Worker  
- Occupations with fewer work hours and higher rest/sleep/exercise are consistently ranked higher.  
- The interactive dashboard allows users to explore each occupation’s daily activity breakdown.

---

## Tools & Technologies

- **Data Cleaning & Analysis:** SQLite, SQL  
- **Visualization:** Tableau Public  
- **Python:** Optional for CSV preprocessing  

---

## How to Use

1. View the interactive dashboard [here](https://public.tableau.com/views/Lifestyle_17660246532890/WhichOccupationsHavetheBestWork-LifeBalance?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)  
2. Explore occupation rankings, compare metrics, and identify patterns in daily activities.  


