from flask import Flask, render_template, request, redirect
import os, subprocess

app = Flask(__name__)

@app.route('/')
def index():
    return 'hogehoge'

@app.route('/gm')
def gm():
    cmd=["mcrcon", "-H", "mcserver", "-p", "test", "help"]
    subprocess.run(cmd)
    return 'hoge'

@app.route('/stop')
def sb():
    cmd=["mcrcon", "-H", "mcserver", "-p", "test", "/give", "Sansyou47", "stone","5"]
    subprocess.run(cmd)
    return 'hoge'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
    7