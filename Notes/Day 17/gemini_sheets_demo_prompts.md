# Gemini in Google Sheets — Demo Prompts
**Survey:** Student Survey (by Jayan Gupta)  
**Fields:** Name, Branch, Year, Superpower, Workspace, Interest, Fuel

---

## Prompt 1 — Clean & Standardize Raw Data
**Purpose:** Show how Gemini can detect and fix messy, inconsistent form responses in one shot — before any analysis begins.

**Prompt to use in Gemini side panel:**
```
This sheet contains raw student survey responses. Please do the following:
1. Check the "Branch" column for any inconsistencies or typos and standardize all values to: CSE, ECE, EE, ME, CE, or Other.
2. Check the "Year" column and standardize all values to: Freshman, Sophomore, Junior, or Senior.
3. Flag any rows where the "Name" field is blank or looks like a test entry (e.g., "test", "abc", "123").
4. Trim extra spaces from all text columns.
Summarize what was cleaned and how many rows were affected.
```

---

## Prompt 2 — Create a Summary Table with Counts
**Purpose:** Show how Gemini can instantly generate a structured breakdown table — like a cross-tab — without writing a single formula.

**Prompt to use in Gemini side panel:**
```
Using the cleaned survey data, create a summary table on a new sheet called "Summary" that shows:
- Count of students per Branch
- Count of students per Year
- Most common Superpower selected overall
- Most common Workspace preference overall
Format it as a clean table with headers and totals in the last row.
```

---

## Prompt 3 — Build a Pivot Table with Slicer
**Purpose:** Demonstrate Gemini building an interactive pivot table so the audience can slice data by Branch or Year dynamically.

**Prompt to use in Gemini side panel:**
```
Create a pivot table on a new sheet called "Pivot - Interest by Branch" that shows:
- Rows: Branch (CSE, ECE, EE, ME, CE, Other)
- Columns: Interest (AI/Data, UI/UX, Security, Systems)
- Values: Count of students
Then add a slicer connected to this pivot table so I can filter by Year (Freshman, Sophomore, Junior, Senior).
```

---

## Prompt 4 — Generate Charts & a Dashboard
**Purpose:** Wrap everything up visually — show Gemini assembling a ready-to-present dashboard with multiple charts on one sheet.

**Prompt to use in Gemini side panel:**
```
Create a dashboard on a new sheet called "Dashboard" with the following charts, each labeled with a title:
1. A bar chart showing count of students per Branch.
2. A pie chart showing the distribution of Fuel preference (Coffee, Tea, Water, Red Bull).
3. A column chart showing Superpower distribution (Coding, Speaking, Organizing, Analyzing).
4. A donut chart showing Workspace preference (Quiet, Bustling, Night, Morning).
Arrange all four charts neatly on the Dashboard sheet so it looks like a single-page report.
```

---

## How to Use These Prompts

| Step | Action |
|------|--------|
| 1 | Import your Google Form responses into Google Sheets (Forms → Responses → Link to Sheets) |
| 2 | Open the Gemini side panel: **Extensions → Gemini in Sheets** or the ✨ icon |
| 3 | Paste each prompt in order — start with Prompt 1 (clean first!) |
| 4 | Review Gemini's output before running the next prompt |

> **Tip:** Always run the cleaning prompt (Prompt 1) before building tables or charts so your analysis reflects accurate data.
