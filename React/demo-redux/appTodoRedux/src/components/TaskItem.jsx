import { useDispatch } from "react-redux";
import { deleteTask } from "./TaskSlice";


const TaskItem = (props) => {
    const task = props.task
    const dispatch = useDispatch()


    return (
        <>
            <div>
                <span>{task.text} - { task.done ? "Terminé" : "A faire" }</span>
                <button onClick={() => dispatch(deleteTask(task.id))}>
                    Supprimer
                </button>
            </div>
        </>
    );
}
 
export default TaskItem;