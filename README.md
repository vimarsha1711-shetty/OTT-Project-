OTT Streaming Content Trend Analysis

Project overview

This project explores OTT catalogue data by platform, content type, genre, country and release year. It demonstrates data cleaning, exploratory data analysis (EDA), charts, SQL aggregation queries and an Excel summary workbook.

Important data note

The included data/ott_titles_practice_sample.csv is generated practice data, not an official catalogue from Netflix, Amazon Prime Video or Disney+ Hotstar. Use it to test the notebook and understand the workflow. Before final submission, download a permitted real dataset (for example, the public Netflix Movies and TV Shows dataset on Kaggle) and update the project data and report. Do not claim practice-data results are real-world platform findings.

Files

• data/ott_titles_practice_sample.csv — practice dataset to run immediately.
• notebooks/OTT_Content_Trend_Analysis.ipynb — cleaning and EDA notebook with six visualizations.
• sql/ott_analysis_queries.sql — table definition and analysis queries.
• reports/OTT_Content_Analysis.xlsx — Excel workbook with raw data and summary sheets.
• reports/OTT_Project_Report.pdf — project report (practice-data caveat included).
• charts/ — example chart images based on the practice data.
• LinkedIn_Post.txt — draft post.

How to run

1. Install Python and Jupyter Notebook.
2. Install packages: pip install pandas matplotlib openpyxl.
3. Open notebooks/OTT_Content_Trend_Analysis.ipynb.
4. Run the cells from top to bottom.
5. The notebook saves cleaned data as data/ott_titles_cleaned.csv.

Questions explored

1. How many titles are listed for each platform in the dataset?
2. What is the split between movies and TV shows?
3. Which genres occur most often?
4. How does the release-year distribution look?
5. Which countries are represented most often?
6. How does content type vary by platform?

Limitations

The practice dataset contains generated example records. Results are for learning and testing only. Actual business recommendations should be based on a real, clearly cited dataset and should consider that catalogue availability changes over time.
