import { Task } from "./Task.js"

export class TaskList {
    constructor(){
        this.tasks = []
    }

    addTask(text){
        let taskId = this.tasks.length + 1
        let newTask = new Task(taskId, text)
        this.tasks.push(newTask)
    }

    removeTask(taskId){
        this.tasks = this.tasks.filter(task => task.id !== taskId);
        console.log(this.tasks)
    }

    renderTasks() {
        const taskList = document.querySelector("#result");
        taskList.innerHTML = "";
        this.tasks.forEach(task => {
            taskList.innerHTML += task.render();
        });
    }

}