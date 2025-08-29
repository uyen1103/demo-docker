from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "Xin chào! Đây là demo Docker từ nhóm 5 🚀"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
