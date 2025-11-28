from fpdf import FPDF
import datetime
from QuerySql import QuerySql
from OpenAi import OpenAi



skill_names = QuerySql.getColumn("skill_name", "Skills")
skill_names_str = ", ".join(skill_names)

category_names = QuerySql.getColumn("category_name", "Categories")
category_names_str = ", ".join(category_names)

value_names = QuerySql.getColumn("value_name", "Values")
value_names_str = ", ".join(value_names)


job_description = input("Enter job description: ")


prompt = [
    {
        "role": "system",
        "content": f"""
        Based on the job description, which skills, categories, and values
        should I use to construct the perfect cover letter? The skills, 
        categories, and values must be of the ones previously stated and must 
        be written the exact same. Make sure each skill is surrounded 
        by '$$'. Ex: $$skill1$$, $$skill2$$; Make sure each category 
        is surrounded by '!!'. Ex: $$category1$$, $$category2$$; Make 
        sure each value is surrounded by '%%'. Ex: %%value1%%, %%value2%%.  
        Here are the skills: {skill_names}.
        Here are the categories: {category_names}.
        Here are the values: {value_names}.
        """
    },
    {
        "role": "user",
        "content": f"Job Description: {job_description}"
    },
]

job_requirements = OpenAi.ask(prompt)

job_skill_names = []
job_category_names = []
job_value_names = []

for skill in skill_names:
    if skill in job_requirements:
        job_skill_names.append(skill)

for category in category_names:
    if category in job_requirements:
        job_category_names.append(category)

for value in value_names:
    if value in job_requirements:
        job_value_names.append(value)

job_skill_names_str = ", ".join(job_skill_names)
job_category_names_str = ", ".join(job_category_names)
job_value_names_str = ", ".join(job_value_names)

most_relevant_experiences = QuerySql.getMostRelevantExperiences(job_skill_names, job_category_names)
most_relevant_experience_1 = most_relevant_experiences[0]
most_relevant_experience_2 = most_relevant_experiences[1]

most_relevant_experiences_str = f"""
1st most relevant: Experience: {most_relevant_experience_1};
Start year: {QuerySql.getExperienceData(most_relevant_experience_1, "start_year")};
Start month: {QuerySql.getExperienceData(most_relevant_experience_1, "start_month")};
End year: {QuerySql.getExperienceData(most_relevant_experience_1, "end_year")};
End month: {QuerySql.getExperienceData(most_relevant_experience_1, "end_month")};
Experience URL: {QuerySql.getExperienceData(most_relevant_experience_1, "experience_url")};
2nd most relevant: Experience: {most_relevant_experience_2};
Start year: {QuerySql.getExperienceData(most_relevant_experience_2, "start_year")};
Start month: {QuerySql.getExperienceData(most_relevant_experience_2, "start_month")};
End year: {QuerySql.getExperienceData(most_relevant_experience_2, "end_year")};
End month: {QuerySql.getExperienceData(most_relevant_experience_2, "end_month")};
Experience URL: {QuerySql.getExperienceData(most_relevant_experience_2, "experience_url")}
"""

personal_info = QuerySql.getPersonalInformation()
personal_info_str = f"""
First name: {personal_info["first_name"]}; Middle name: {personal_info["middle_name"]}; 
Last name: {personal_info["last_name"]}; Email: {personal_info["email"]}; 
Phone: {personal_info["phone"]}; Location: {personal_info["location"]}; 
Country: {personal_info["country"]}; Website URL: {personal_info["website_url"]}; 
GitHub URL: {personal_info["github_url"]}; LinkedIn Url: {personal_info["linkedin_url"]}; 
Resume URL: {personal_info["resume_url"]}
"""

prompt = [
    {
        "role": "system",
        "content": f"""
        Write an impressive cover letter for the role listed in the job description as the person with 
        the following personal information: {personal_info_str}.
        The current date is {datetime.datetime.now().date()}.
        In the cover letter, incorperate the experiences here: {most_relevant_experiences_str}. 
        While mentioning having these skills: {job_skill_names_str}; 
        and these values {job_value_names_str}. 
        Write the cover letter with a friend professional tone. Make the letter sound like a human 
        wrote it. Do not use em dashes or unnecessarily complicated vocabulary. 
        If a name, location, or any other data is unknown, just omit it or use a generic phrasing.
        Do not provide placeholders for unknown values. You are returning a final draft.
        """
    },
    {
        "role": "user", 
        "content": f"Job description: {job_description}"
    },
]

cover_letter = OpenAi.ask(prompt)
print(cover_letter)

pdf = FPDF()
pdf.add_page()

pdf.add_font("DejaVu", "", "./fonts/DejaVuSans.ttf", uni=True)
pdf.set_font("DejaVu", size=12)

pdf.multi_cell(0, 10, cover_letter)

now_isoformat = datetime.datetime.now().isoformat()
output_file_name = now_isoformat.replace(":", "-").replace(".", "-") + ".pdf"
pdf.output("cover-letters/" + output_file_name)

QuerySql.closeConnection()



