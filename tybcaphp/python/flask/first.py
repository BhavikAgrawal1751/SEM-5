#! D:\xampp\python.exe

from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello Flask under Apache!'

if __name__ == "__main__":
    app.run()