import { createSlice } from '@reduxjs/toolkit'

// Ici, on centralise et traite les différentes données

const taskSlice = createSlice({
    name: "task",
    // ici, nos states
    initialState: {
        tasks: [
            /* { id: 1, text: "Faire les courses", done: false },
            { id: 2, text: "Faire le menage", done: true }, */
        ],
        counterTask: 0
    },
    reducers: {
        // Le state est le contenu initialisé dans initialState
        // action : élément envoyé à notre store {type : "task/addTask", payload}
        // le payload est un objet contenant tous les paramètre dont la fonction aura besoin
        addTask: (state, action) => {
            const newTask = {
                id: Date.now(),
                text: action.payload,
                done: false
            }

            state.tasks.push(newTask)
            state.counterTask += 1
        },
        deleteTask: (state, action) => {
            state.tasks = state.tasks.filter(task => task.id !== action.payload)
        },
        toggleTask: (state, action) => {
            const task = state.tasks.find(task => task.id === action.payload)
            task.done = !task.done
        }
    }
})

export const { addTask, deleteTask, toggleTask } = taskSlice.actions
export default taskSlice.reducer