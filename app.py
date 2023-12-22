from flask import Flask, render_template, request, redirect

app = Flask(__name__)

todos = []  # Initialize an empty list to store tasks

@app.route('/')
def index():
    counter = len(todos) + 1  # Start the counter for each rendering
    return render_template('index.html', todos=todos, counter=counter)

@app.route('/add', methods=['POST'])
def add_todo():
    todo = request.form['todo']
    todos.append(todo)
    return redirect('/')

@app.route('/delete/<int:index>')
def delete_todo(index):
    del todos[index]
    return redirect('/')

if __name__ == '__main__':
    app.run(host= '0.0.0.0', port=5000)
