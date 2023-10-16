import { useEffect } from "react"
import axios from 'axios'

function App() {
 
  const id = 8

  useEffect(() => {
    axios.get("http://localhost:3000/personnes")
    .then(response => {
      console.log(response.data);
    })
    .catch(error => {
      console.error("Erreur :",error)
    })
  },[])

  const addPerson = () => {
    axios.post("http://localhost:3000/personnes", 
    {nom: "Quinaux", prenom: "flore"})
    .then(response => {
      console.log(response.data);
    })
    .catch(error => {
      console.error("Erreur :", error)
    })
  }

  const deletePerson = () => {
    axios.delete(`http://localhost:3000/personnes/${id}`)
    .then(response => {
      console.log(response.data);
    })
    .catch(error => {
      console.error("Erreur :", error)
    })
  }

  const updatePerson = () => {
    axios.put(`http://localhost:3000/personnes/${id}`,
    {nom: "pagnol", prenom:"marcel"})
    .then(response => {
      console.log(response.data);
    })
    .catch(error => {
      console.error("Erreur :", error)
    })
  }

  return (
    <>
      <div>
        <button onClick={addPerson}>Add</button>
        <button onClick={deletePerson}>Delete</button>
        <button onClick={updatePerson}>Update</button>
      </div>
    </>
  )
}

export default App
