import { Task } from "./Task.js"

export class TaskList {
    constructor(){
        this.tasks = []
    }

    addTask(text){
        const taskId = this.tasks.length + 1
        const newTask = new Task(taskId, text)
        this.tasks.push(newTask)
    }

    removeTask(taskId){
        this.tasks = this.tasks.filter(task => task.id !== taskId);
    }

    renderTasks() {
        const taskList = document.querySelector("#result");
        taskList.innerHTML = "";
        this.tasks.forEach(task => {
            taskList.innerHTML += task.render();
        });
    }

}