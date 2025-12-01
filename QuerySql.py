from dotenv import load_dotenv
import os
import psycopg2
from Utils import Utils



class QuerySql:
    def __init__(self):
        load_dotenv()
        self.conn = psycopg2.connect(
            host="dpg-d4mju3m3jp1c73a02jm0-a.oregon-postgres.render.com",
            port=5432,
            database="application_monkey_db",
            user="root",
            password=os.getenv("DB_PASSWORD")
        )
        self.cur = self.conn.cursor()


    def getColumn(self, column, table):
        
        self.cur.execute(f"SELECT {column} FROM {table};")

        data_unfiltered = self.cur.fetchall()
        data = []
        
        for d in data_unfiltered:
            if (d[0]):
                data.append(d[0])

       
        return data
    
    
    def getExperiencesBySkill(self, skill_name):
      
        self.cur.execute(f"SELECT experience_name FROM ExperienceSkills WHERE skill_name = '{skill_name}';")

        data_unfiltered = self.cur.fetchall()
        data = []
        
        for d in data_unfiltered:
            if (d[0]):
                data.append(d[0])

        return data
    

    def getExperiencesByCategory(self, category_name):
   
        self.cur.execute(f"SELECT experience_name FROM ExperienceCategories WHERE category_name = '{category_name}';")

        data_unfiltered = self.cur.fetchall()
        data = []
        
        for d in data_unfiltered:
            if (d[0]):
                data.append(d[0])

     
        return data
    

    def getPersonalInformation(self):
    
        self.cur.execute("SELECT * FROM PersonalInformation;")
        user_list = self.cur.fetchall()[0]
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
    

    def getMostRelevantExperiences(self, job_skills, job_categories):
        relevant_experieces = []
        for job_skill in job_skills:
            relevant_experieces += self.getExperiencesBySkill(job_skill)
        for job_category in job_categories:
            relevant_experieces += self.getExperiencesBySkill(job_category)
        sorted_relevant_experieces = Utils.most_frequent(relevant_experieces)
        return sorted_relevant_experieces[:2]
    

    def getExperienceData(self, experience, column):
        
        self.cur.execute(f"SELECT {column} FROM Experiences WHERE experience_name = '{experience}'")
     
        return self.cur.fetchall()[0][0]
    

    def closeConnection(self):
        self.cur.close()
        self.conn.close()


# print(QuerySql.getExperienceData("Deepiri AI: AI Systems Engineer Internship", "start_year"))