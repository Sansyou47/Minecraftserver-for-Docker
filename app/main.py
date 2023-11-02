from flask import Flask, render_template, request, redirect
import os, subprocess

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/gm')
def gm():
    cmd=["mcrcon", "-H", "mcserver", "-p", "test", "help"]
    subprocess.run(cmd)
    return 'hoge'

@app.route('/stop')
def sb():
    cmd=["mcrcon", "-H", "mcserver", "-p", "test", "give Sansyou47 stone 5"]
    subprocess.run(cmd)
    return 'hoge'

@app.route('/action', methods=['POST'])
def action():
    do_action=int(request.form.get('ctrl_type'))
    if do_action == 0:
        os.system('mcrcon -H mcserver -p test stop')
    elif do_action == 1:
        os.system('mcrcon -H mcserver -p test "gamemode survival @a"')
    elif do_action ==2:
        os.system('mcrcon -H mcserver -p test help')
    return redirect('/')
    
if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
    