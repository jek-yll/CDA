import './App.css'
import TaskForm from './components/TaskForm';
import TaskHeader from './components/TaskHeader';
import TaskList from './components/TaskList';

function App() {


  return (
    <>
      <TaskHeader />
      <TaskList/> 
      <TaskForm />
    </>
  )
}

export default App
