from flask import Flask
app = Flask(__name__)
@app.route('/')
def echo():
    return 'I am test automation BOT'

