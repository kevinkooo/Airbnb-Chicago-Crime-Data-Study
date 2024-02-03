# University of Chicago - Data Engineering Platforms for Analytics (ADSP 31012) Final Project
This research aims to analyze various factors that influence the pricing of Airbnb listings in Chicago, taking into consideration aspects such as demand fluctuations, property types, locality ratings, host statuses, and user reviews. The study will also incorporate Chicago's crime data to determine if there's a correlation between local crime rates and listing prices. 

Team Members:
Colleen Jung,
Saphir Qi,
Kevin Ko,
Khushi Ranganatha

## Business Case and Objectives
In today's competitive accommodation market, understanding the dynamics of pricing can offer a significant advantage. For platforms like Airbnb, where pricing isn't uniformly set by a central entity but by individual hosts, there are multiple variables influencing cost. Recognizing these determinants in a major city like Chicago can equip hosts with the knowledge to optimize their pricing strategies. On the flip side, guests can make informed decisions based on the findings, ensuring they get the best value for their money. Furthermore, Airbnb as a platform can utilize this information for better-targeted marketing strategies, personalized recommendations, and enhanced user experience.

## Implication for Stakeholders
- The factors that most significantly influence listing prices in Chicago.
- Patterns of demand fluctuation for Airbnb rentals over different seasons and years.
- How property type and location correlate with pricing.
- How crime rates in different localities might affect listing prices.

## Data Sources
We utilized public data from the City of Chicago and Airbnb, namely crime data and Airbnb listing data to identify pricing and safety trends across socioeconomic and geographic areas.

## Methodology and Tools used
1.	**Python**
a.	Data Profiling and Cleaning: Python, with libraries like Pandas and NumPy, was essential for profiling and cleaning the data. We recommend setting up an automated framework for ongoing data cleaning.
2.	**Tableau**
a.	Visualization and Reporting: Tableau was chosen for its visualization prowess, providing live, insightful reports and dashboards. We suggest automating report updates using Tableau's built-in features.
3.	**SQL**
a.	Data Modeling: SQL helped in structuring and normalizing our data models. We recommend scripts for auto-updating these models with new data.

## Data Model
### EER Diagram
<img width="795" alt="image" src="https://github.com/kevinkooo/Airbnb-Chicago-Crime-Data-Study/assets/156154849/dce5fae5-fa16-4a30-8bb5-2bb795578724">

## Insights
### 1.
**Property Type Preference:** The majority of listing supply are entire homes/apartments, driven by the higher demand for privacy and space.
**Average Price by Property Type:** Entire homes/apartments have the highest average price, followed by hotel rooms and then private rooms, suggesting that space and exclusivity come at a premium.
**Distribution of Prices:** There's a wide range of prices within each property type, especially with entire homes/apartments, as indicated by the significant outliers.

<img width="290" alt="image" src="https://github.com/kevinkooo/Airbnb-Chicago-Crime-Data-Study/assets/156154849/4c682323-c256-4e8c-9c97-2de3b66d5e46">

### 2.
Neighborhoods with higher crime rates tend to feature listings with lower prices, while those with lower crime rates exhibit higher-priced listings. This trend is hypothesized to be a reflection of people's preference for safer neighborhoods, potentially influenced by associated benefits such as reduced out-of-pocket medical costs.

<img width="790" alt="image" src="https://github.com/kevinkooo/Airbnb-Chicago-Crime-Data-Study/assets/156154849/54e9aed4-d774-4dfa-b148-7f108fb016af">

### 3.
Utilizing Tableau's advanced mapping and data visualization, we overlaid Airbnb listing prices with local crime scores in Chicago, revealing a comprehensive geographical insight into the correlation between crime rates and Airbnb pricing.

<img width="384" alt="image" src="https://github.com/kevinkooo/Airbnb-Chicago-Crime-Data-Study/assets/156154849/c70253a9-84b7-4262-8817-767cadb7db14">

## Reccomendations
1.	**Airbnb Hosts:**
a.	Competitive Pricing: Encourage hosts, especially in neighborhoods with higher crime rates, to consider pricing more competitively to attract guests by highlighting safety features and local attractions.
b.	Safety Features: Suggest investing in safety enhancements such as smart locks, security systems, and well-lit entrances. Promote these features in listings to reassure potential guests.

2.	**The City of Chicago:**
a.	Policy Initiatives: Recommend policy initiatives aimed at improving safety and security in neighborhoods with high Airbnb potential but low activity due to perceived crime rates.
b.	Partnerships for Safety: Encourage the city to partner with Airbnb and community leaders to implement programs that enhance guest safety and support local businesses.

3.	**Further Research:**
a.	Extended Analysis: Propose an extended scope of research to include variables such as proximity to local amenities, detailed seasonal demand trends, and broader economic indicators.
b.	Comparative Urban Studies: Suggest conducting parallel studies in other cities to draw comparative insights that could enrich the understanding of the interplay between local crime rates and Airbnb pricing strategies.
