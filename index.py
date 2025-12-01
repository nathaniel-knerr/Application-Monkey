from fastapi import FastAPI
from fastapi.params import Body
from fastapi.middleware.cors import CORSMiddleware
from main import main

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # or specify localhost:5173, etc.
    allow_credentials=True,
    allow_methods=["*"],  # <-- ALLOWS OPTIONS
    allow_headers=["*"],
)

@app.post("/make-cover-letter")
def make_cover_letter(jobDescription: dict = Body(...)):
    coverLetter = main(jobDescription["text"])
    return {"text": coverLetter}

# uvicorn index:app