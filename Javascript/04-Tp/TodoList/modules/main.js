import { TaskList } from "./js/TaskList.js";

const task = document.querySelector('#task')
const add = document.querySelector('#addTask')
const removeAll = document.querySelector('#removeAll')
const result = document.querySelector('#result')

const mesTaches = new TaskList()

add.addEventListener ('click', () => {
    if (task.value !== ''){
        const text = task.value
        mesTaches.addTask(text)
        mesTaches.renderTasks()
        task.value = ''
    }
})

result.addEventListener ('click', (event) => {
    const taskId = Number(event.target.parentElement.getAttribute("id"))
    mesTaches.removeTask(taskId)
    mesTaches.renderTasks()
})

removeAll.addEventListener ('click', () => {
    mesTaches.tasks = []
    mesTaches.renderTasks()
})
