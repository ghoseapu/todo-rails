import React, { useState} from 'react'
const Task = () => {
    const [tasks] = useState(['laundry', 'shopping']);
    return (
      <div>
        <h1>Tasks</h1>
        <ul>{tasks.map((task, index) => <li key={index}>{task}</li>)}</ul>
      </div>
    )
}
export default Task;