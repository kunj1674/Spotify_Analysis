# 🎵 Spotify Analysis

An end-to-end **Spotify Data Analytics project** focused on understanding track popularity, artist performance, album types, release trends, and explicit-content patterns.

The project combines **Python, Pandas, SQL, CSV data, HTML, CSS, JavaScript, and interactive data visualization** to transform Spotify track data into meaningful analytical insights and an interactive dashboard.

---

## 📌 Project Overview

The goal of this project is to analyze Spotify track-level data and answer practical questions such as:

- Which tracks are the most popular?
- Which artists have the highest average track popularity?
- How does popularity differ across album, single, and compilation releases?
- How has average track popularity changed over release years?
- Which artists release the highest number of tracks?
- Is there a relationship between track volume and average popularity?
- Do explicit and non-explicit tracks differ in popularity?
- Which months have the highest number of releases and the highest average popularity?

The project follows a complete analytics workflow:

**Raw Data → Data Cleaning → Feature Preparation → SQL Analysis → Interactive Dashboard**

---

## 🗂️ Project Files

| File | Description |
|---|---|
| `Spotify_data_cleaning.ipynb` | Python/Google Colab notebook used for loading, inspecting, and preparing the Spotify dataset. |
| `cleaned_spotify_data.csv` | Cleaned dataset used for SQL analysis and the dashboard. |
| `Spotify_Analysis.sql` | SQL queries used to analyze tracks, artists, albums, popularity, explicit content, and release timing. |
| `Spotify_Dashboard.html` | Interactive browser-based dashboard built using HTML, CSS, and JavaScript. |

---

## 🔄 Data Analytics Workflow

### 1. Data Loading

The project begins by loading the Spotify track dataset into Python using **Pandas** and **NumPy**.

The dataset contains track, artist, and album information such as:

- Track ID
- Track Name
- Track Number
- Track Popularity
- Track Duration
- Explicit Status
- Artist Name
- Artist Popularity
- Artist Followers
- Artist Genres
- Album ID
- Album Name
- Album Release Date
- Album Total Tracks
- Album Type

### 2. Data Cleaning & Preparation

The Python notebook is used to inspect and prepare the Spotify data before analysis.

The prepared data is stored as:

`cleaned_spotify_data.csv`

This cleaned file is then reused for the SQL analysis and interactive dashboard.

### 3. SQL Analysis

The SQL layer focuses on practical analytical questions, including:

- Top 10 tracks by popularity
- Artists with the highest average track popularity
- Popularity comparison across album, single, and compilation types
- Average popularity across release years
- Artists with the highest number of tracks
- Track volume versus average popularity
- Explicit versus non-explicit track popularity
- Monthly release volume and popularity

The SQL analysis also creates a popularity category:

| Average Track Popularity | Category |
|---|---|
| `>= 80` | High |
| `>= 60` | Medium |
| `< 60` | Low |

---

## 📊 Interactive Spotify Dashboard

The repository includes a browser-based dashboard built without Power BI or Tableau.

### Technologies Used

- **HTML5** — dashboard structure
- **CSS3** — layout, styling, responsive design
- **JavaScript** — calculations and interactivity
- **Chart.js** — data visualizations
- **Papa Parse** — CSV parsing
- **Inter** — dashboard typography

The dashboard uses a Spotify-inspired interface with dark and light components and Spotify green as the primary accent.

---

## 🎛️ Dashboard Features

The dashboard includes:

- CSV dataset upload
- Interactive filters
- Album-type selection
- Reset functionality
- KPI cards
- Track popularity analysis
- Artist-level analysis
- Release-year analysis
- Explicit vs non-explicit comparison
- Monthly release analysis
- Responsive layout

The dashboard can load the cleaned CSV directly in the browser and generate the analysis from the uploaded data.

---

## 📈 Main Analytical Dimensions

### 🎧 Track Performance

- Track popularity
- Track duration
- Track ranking
- Explicit status

### 🎤 Artist Performance

- Artist popularity
- Artist followers
- Number of tracks
- Average track popularity

### 💿 Album Analysis

- Album type
- Album release date
- Album track count
- Popularity by album type

### 📅 Time-Based Analysis

- Release year
- Release month
- Popularity trends
- Monthly release volume

---

## 🏗️ Project Architecture

```text
                    Spotify Track Dataset
                             │
                             ▼
                 ┌─────────────────────┐
                 │ Python / Pandas     │
                 │ Data Cleaning       │
                 └──────────┬──────────┘
                            │
                            ▼
                 cleaned_spotify_data.csv
                       │             │
              ┌────────┘             └──────────┐
              ▼                                  ▼
      ┌─────────────────┐              ┌──────────────────┐
      │ SQL Analysis    │              │ HTML Dashboard   │
      │                 │              │                  │
      │ Popularity      │              │ HTML             │
      │ Artists         │              │ CSS              │
      │ Albums          │              │ JavaScript       │
      │ Release Trends  │              │ Chart.js         │
      │ Content Type    │              │ Papa Parse        │
      └────────┬────────┘              └────────┬─────────┘
               │                                │
               └──────────────┬─────────────────┘
                              ▼
                     Spotify Insights
```

---

## 💡 Business Questions Addressed

This project explores questions relevant to music-platform analytics:

1. What tracks are performing best according to popularity?
2. Which artists consistently have highly popular tracks?
3. Does releasing more tracks necessarily correspond to higher average popularity?
4. Which release type performs better — albums, singles, or compilations?
5. How has track popularity changed across release years?
6. Is explicit content associated with different popularity levels?
7. Are some months more active for Spotify track releases?
8. Which artists combine high track volume with strong average popularity?

---

## 🎯 Project Objectives

The main objectives are to:

- Practice real-world data cleaning with Python.
- Build analytical SQL queries.
- Work with track-, artist-, album-, and time-level dimensions.
- Convert cleaned data into meaningful insights.
- Build an interactive dashboard without relying on BI software.
- Demonstrate an end-to-end data analytics workflow.
- Combine programming, database querying, and visualization skills.

---

## 🧰 Technology Stack

### Data Analysis
- Python
- Pandas
- NumPy

### Database & Querying
- SQL
- PostgreSQL-compatible SQL workflow

### Dashboard Development
- HTML5
- CSS3
- JavaScript
- Chart.js
- Papa Parse

### Tools
- Google Colab
- Jupyter Notebook
- VS Code
- Git
- GitHub

---

## 🚀 How to Use the Dashboard

1. Clone or download the repository.
2. Open `Spotify_Dashboard.html` in a modern web browser.
3. Click **Load CSV**.
4. Select `cleaned_spotify_data.csv`.
5. Use the available filters and visualizations to explore the Spotify data.

---

## 🔍 What This Project Demonstrates

This project demonstrates practical experience with:

- Data preprocessing
- Exploratory data analysis
- SQL aggregation and filtering
- `GROUP BY`
- `ORDER BY`
- `HAVING`
- `CASE`
- Top-N analysis
- Time-based analysis
- KPI development
- Interactive dashboard development
- Client-side CSV processing
- Data visualization
- GitHub project organization

---

## 📌 Future Improvements

Possible enhancements include:

- Adding more Spotify audio features
- Adding genre-level analysis
- Adding artist and album drill-downs
- Adding advanced date-range filtering
- Adding more comparative visualizations
- Adding automated data refresh
- Adding additional KPIs and statistical measures
- Deploying the dashboard as a live web application

---

## 👤 Author

**Kunj**

This project was created as a practical data analytics project to strengthen skills in **Python, SQL, data visualization, dashboard development, and analytical problem-solving**.

---

## ⭐ Project Summary

**Spotify Analysis** is an end-to-end analytics project that takes Spotify track data through **Python-based preparation, SQL analysis, and interactive web visualization**.

It demonstrates how raw music data can be transformed into structured analysis and an interactive dashboard using a combination of data analytics and web technologies.
