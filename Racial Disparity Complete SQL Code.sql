#SQL Code written by Zara Clacken
#Database created from the three tables cleaned and mined in Python
#This code shows how I created a Database and three tables from the data frames, then how I joined the tables into one table

##CREATE THE DATABASE 
DROP DATABASE IF EXISTS racial_disparity;
CREATE SCHEMA IF NOT EXISTS racial_disparity;
USE racial_disparity;
CREATE TABLE degrees
(
Race VARCHAR(40) NOT NULL,
Year INT NOT NULL,
Degrees_Completed INT UNSIGNED,
Percent_of_Total_Degrees DECIMAL(4,2) 
)
;  
CREATE TABLE poverty 
(
Race VARCHAR(40) NOT NULL ,
Year INT NOT NULL,
Poverty_Population INT UNSIGNED,
Percent_of_Total_Poverty_Population DECIMAL(4,2)
)
;  
CREATE TABLE children
(
Race VARCHAR(40) NOT NULL ,
Year INT NOT NULL,
Number_of_Children_Single_Parent_Homes INT UNSIGNED,
Percent_of_Total_Children_Single_Parent_Homes DECIMAL(4,2)
)
;  
#Insert DATA into tables
#################################

#DEGREES Data Insert  
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Asian and Pacific Islander',2013,272080,6.39);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Black',2013,529285,12.43);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Hispanic',2013,589993,13.86);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Multiracial',2013,78724,1.85);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Native American',2013,34147,0.8);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('White',2013,2753647,64.67);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Asian and Pacific Islander',2014,279059,6.34);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Black',2014,556705,12.65);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Hispanic',2014,638188,14.51);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Multiracial',2014,99685,2.27);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Native American',2014,34050,0.77);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('White',2014,2791956,63.46);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Asian and Pacific Islander',2015,288377,6.42);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Black',2015,573638,12.78);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Hispanic',2015,687513,15.31);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Multiracial',2015,116276,2.59);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Native American',2015,33936,0.76);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('White',2015,2790167,62.14);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Asian and Pacific Islander',2016,298565,6.57);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Black',2016,576255,12.67);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Hispanic',2016,740025,16.27);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Multiracial',2016,132024,2.9);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Native American',2016,33193,0.73);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('White',2016,2767440,60.86);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Asian and Pacific Islander',2017,312146,6.76);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Black',2017,576612,12.49);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Hispanic',2017,786273,17.04);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Multiracial',2017,141479,3.07);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Native American',2017,33272,0.72);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('White',2017,2765344,59.92);

###################################

#Poverty DATA Insert 
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Asian and Pacific Islander',2013,2104260,3.63);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Black',2013,10538290,18.17);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Hispanic',2013,13089210,22.57);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Multiracial',2013,1847715,3.19);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Native American',2013,706256,1.22);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('White',2013,29701062,51.22);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Asian and Pacific Islander',2014,2161429,3.76);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Black',2014,10434389,18.17);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Hispanic',2014,13079584,22.77);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Multiracial',2014,1855585,3.23);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Native American',2014,710293,1.24);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('White',2014,29193983,50.83);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Asian and Pacific Islander',2015,2138900,3.89);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Black',2015,9905872,18);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Hispanic',2015,12505613,22.73);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Multiracial',2015,1782109,3.24);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Native American',2015,665980,1.21);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('White',2015,28027149,50.93);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Asian and Pacific Islander',2016,2131250,4.06);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Black',2016,9366792,17.86);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Hispanic',2016,11814468,22.53);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Multiracial',2016,1801745,3.44);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Native American',2016,679202,1.3);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('White',2016,26653418,50.82);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Asian and Pacific Islander',2017,2083675,4.13);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Black',2017,9122033,18.08);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Hispanic',2017,11173521,22.14);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Multiracial',2017,1741395,3.45);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Native American',2017,670571,1.33);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('White',2017,25668489,50.87);

################################################

#Children Data Insert
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Native American',2013,329000,1.3);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Asian and Pacific Islander',2013,557000,2.19);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Black',2013,6427000,25.3);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Hispanic',2013,7044000,27.73);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('White',2013,9289000,36.57);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Multiracial',2013,1758000,6.92);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Native American',2014,341000,1.34);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Asian and Pacific Islander',2014,578000,2.27);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Black',2014,6382000,25.06);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Hispanic',2014,7190000,28.23);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('White',2014,9181000,36.05);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Multiracial',2014,1797000,7.06);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Native American',2015,333000,1.32);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Asian and Pacific Islander',2015,568000,2.25);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Black',2015,6333000,25.12);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Hispanic',2015,7180000,28.47);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('White',2015,8998000,35.68);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Multiracial',2015,1804000,7.15);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Native American',2016,339000,1.35);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Asian and Pacific Islander',2016,572000,2.28);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Black',2016,6281000,25.04);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Hispanic',2016,7230000,28.82);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('White',2016,8766000,34.94);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Multiracial',2016,1900000,7.57);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Native American',2017,351000,1.41);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Asian and Pacific Islander',2017,556000,2.24);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Black',2017,6123000,24.67);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Hispanic',2017,7283000,29.34);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('White',2017,8623000,34.74);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Multiracial',2017,1887000,7.6);

#Merge the tables into one table via a JOIN 
SELECT d.*,c.Number_of_Children_Single_Parent_Homes, c.Percent_of_Total_Children_Single_Parent_Homes,
p.Poverty_Population, p.Percent_of_Total_Poverty_Population
FROM degrees d 
JOIN children c 
ON d.race = c.race
AND d.Year = c.Year
JOIN poverty p
ON c.race = p.race
AND c.Year = p.Year
ORDER BY d.Year, d.Race;

