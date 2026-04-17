from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def main():
    return jsonify({ "status": "Server running on port 8000"}), 200

@app.route('/test')
def test():
    return jsonify({ "message": "Corriendo desde Docker"}), 200

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=8000)