#SQL Code written by Zara Clacken
#Database created from the three tables cleaned and mined in Python
#This code shows how I created a Database and three tables from the data frames, then how I joined the tables into one table

##CREATE THE DATABASE 
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
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Asian and Pacific Islander','2013',272080,6.02);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Asian and Pacific Islander','2014',279059,5.98);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Asian and Pacific Islander','2015',288377,6.08);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Asian and Pacific Islander','2016',298565,6.24);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Asian and Pacific Islander','2017',312146,6.46);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Black','2013',529285,11.71);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Black','2014',556705,11.92);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Black','2015',573638,12.1);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Black','2016',576255,12.04);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Black','2017',576612,11.93);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Hispanic','2013',589993,13.05);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Hispanic','2014',638188,13.66);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Hispanic','2015',687513,14.5);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Hispanic','2016',740025,15.46);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Hispanic','2017',786273,16.26);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Multiracial','2013',78724,1.74);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Multiracial','2014',99685,2.13);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Multiracial','2015',116276,2.45);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Multiracial','2016',132024,2.76);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Multiracial','2017',141479,2.93);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Native American','2013',34147,0.76);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Native American','2014',34050,0.73);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Native American','2015',33936,0.72);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Native American','2016',33193,0.69);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('Native American','2017',33272,0.69);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('White','2013',2753647,60.9);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('White','2014',2791956,59.78);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('White','2015',2790167,58.84);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('White','2016',2767440,57.82);
INSERT INTO degrees(Race,Year,Degrees_Completed,Percent_of_Total_Degrees) VALUES ('White','2017',2765344,57.19);
###################################

#Poverty DATA Insert 
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Asian and Pacific Islander',2013,2104260,3.4);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Black',2013,10538290,17.02);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Hispanic',2013,13089210,21.15);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Multiracial',2013,1847715,2.98);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Native American',2013,706256,1.14);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('White',2013,29701062,47.98);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Asian and Pacific Islander',2014,2161429,3.53);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Black',2014,10434389,17.03);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Hispanic',2014,13079584,21.34);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Multiracial',2014,1855585,3.03);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Native American',2014,710293,1.16);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('White',2014,29193983,47.63);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Asian and Pacific Islander',2015,2138900,3.65);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Black',2015,9905872,16.89);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Hispanic',2015,12505613,21.32);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Multiracial',2015,1782109,3.04);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Native American',2015,665980,1.14);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('White',2015,28027149,47.78);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Asian and Pacific Islander',2016,2131250,3.8);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Black',2016,9366792,16.7);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Hispanic',2016,11814468,21.07);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Multiracial',2016,1801745,3.21);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Native American',2016,679202,1.21);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('White',2016,26653418,47.52);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Asian and Pacific Islander',2017,2083675,3.88);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Black',2017,9122033,16.97);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Hispanic',2017,11173521,20.79);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Multiracial',2017,1741395,3.24);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('Native American',2017,670571,1.25);
INSERT INTO poverty(Race,Year,Poverty_Population,Percent_of_Total_Poverty_Population) VALUES ('White',2017,25668489,47.75);
################################################

#Children Data Insert
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Asian and Pacific Islander',2013,557000,2.19);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Black',2013,6427000,25.3);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Hispanic',2013,7044000,27.73);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Multiracial',2013,1758000,6.92);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Native American',2013,329000,1.3);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('White',2013,9289000,36.57);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Asian and Pacific Islander',2014,578000,2.27);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Black',2014,6382000,25.06);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Hispanic',2014,7190000,28.23);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Multiracial',2014,1797000,7.06);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Native American',2014,341000,1.34);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('White',2014,9181000,36.05);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Asian and Pacific Islander',2015,568000,2.25);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Black',2015,6333000,25.12);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Hispanic',2015,7180000,28.47);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Multiracial',2015,1804000,7.15);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Native American',2015,333000,1.32);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('White',2015,8998000,35.68);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Asian and Pacific Islander',2016,572000,2.28);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Black',2016,6281000,25.04);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Hispanic',2016,7230000,28.82);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Multiracial',2016,1900000,7.57);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Native American',2016,339000,1.35);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('White',2016,8766000,34.94);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Asian and Pacific Islander',2017,556000,2.24);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Black',2017,6123000,24.67);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Hispanic',2017,7283000,29.34);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Multiracial',2017,1887000,7.6);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('Native American',2017,351000,1.41);
INSERT INTO children(Race,Year,Number_of_Children_Single_Parent_Homes,Percent_of_Total_Children_Single_Parent_Homes) VALUES ('White',2017,8623000,34.74);

#Merge the tables into one table via a JOIN 
SELECT d.*,c.Number_of_Children_Single_Parent_Homes, c.Percent_of_Total_Children_Single_Parent_Homes,
p.Poverty_Population, p.Percent_of_Total_Poverty_Population
FROM degrees d 
JOIN children c 
ON d.race = c.race
AND d.Year = c.Year
JOIN poverty p
ON c.race = p.race
AND c.Year = p.Year;

