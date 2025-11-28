from dotenv import load_dotenv
import os
import psycopg2
from Utils import Utils

load_dotenv()

conn = psycopg2.connect(
    dbname="application_monkey_db",
    user="root",
    password=os.getenv("DB_PASSWORD"),
    host="localhost",
    port=5432
)

cur = conn.cursor()

class QuerySql:
    def getColumn(column, table):
        
        cur.execute(f"SELECT {column} FROM {table};")

        data_unfiltered = cur.fetchall()
        data = []
        
        for d in data_unfiltered:
            if (d[0]):
                data.append(d[0])

       
        return data
        
    
    def getColumn(column, table):
     
        cur.execute(f"SELECT {column} FROM {table};")

        data_unfiltered = cur.fetchall()
        data = []
        
        for d in data_unfiltered:
            if (d[0]):
                data.append(d[0])

        return data
    
    
    def getExperiencesBySkill(skill_name):
      
        cur.execute(f"SELECT experience_name FROM ExperienceSkills WHERE skill_name = '{skill_name}';")

        data_unfiltered = cur.fetchall()
        data = []
        
        for d in data_unfiltered:
            if (d[0]):
                data.append(d[0])

        return data
    

    def getExperiencesByCategory(category_name):
   
        cur.execute(f"SELECT experience_name FROM ExperienceCategories WHERE category_name = '{category_name}';")

        data_unfiltered = cur.fetchall()
        data = []
        
        for d in data_unfiltered:
            if (d[0]):
                data.append(d[0])

     
        return data
    

    def getPersonalInformation():
    
        cur.execute("SELECT * FROM PersonalInformation;")
        user_list = cur.fetchall()[0]
        user = {
            "first_name": user_list[1],
            "middle_name": user_list[2],
            "last_name": user_list[3], 
            "email": user_list[4], 
            "phone": user_list[5], 
            "location": user_list[6], 
            "country": user_list[7], 
            "website_url": user_list[8], 
            "github_url": user_list[9], 
            "linkedin_url": user_list[10], 
            "resume_url":  user_list[11]
        }
   
        return user
    

    def getMostRelevantExperiences(job_skills, job_categories):
        relevant_experieces = []
        for job_skill in job_skills:
            relevant_experieces += QuerySql.getExperiencesBySkill(job_skill)
        for job_category in job_categories:
            relevant_experieces += QuerySql.getExperiencesBySkill(job_category)
        sorted_relevant_experieces = Utils.most_frequent(relevant_experieces)
        return sorted_relevant_experieces[:2]
    

    def getExperienceData(experience, column):
        
        cur.execute(f"SELECT {column} FROM Experiences WHERE experience_name = '{experience}'")
     
        return cur.fetchall()[0][0]
    

    def closeConnection():
        cur.close()
        conn.close()


# print(QuerySql.getExperienceData("Deepiri AI: AI Systems Engineer Internship", "start_year"))