import React, { useEffect, useState, useReducer } from 'react'
import Urbit from '@urbit/http-api'
import { AppTile } from './components/AppTile'

const api = new Urbit('', '', window.desk)
api.ship = window.ship

function reducer(state, action) {
  let newState = [...state]
  switch (action.type) {
    case 'init':
      return action.init
    case 'push':
      newState.unshift(action.val)
      return newState
    case 'pop':
      newState.shift()
      return newState
    default:
      return state
  }
}

export function App() {
  const [state, dispatch] = useReducer(reducer, [])
  const [inputValue, setInputValue] = useState("")
  const [shipName, setShipName] = useState("")

  useEffect(() => {
    async function init() {
      api.subscribe({ app: "echo", path: '/values', event: handleUpdate })
    }
    init()
  }, [])

  const handleUpdate = (upd) => {
    if ('init' in upd) {
      dispatch({ type: 'init', init: upd.init })
    }
    else if ('push' in upd) {
      dispatch({ type: 'push', val: upd.push.value })
    }
    else if ('pop' in upd) {
      dispatch({ type: 'pop' })
    }
  }

  const push = () => {
    const val = parseInt(inputValue)
    if (isNaN(val)) return
    if (`~${window.ship}` != shipName) return
    api.poke({
      app: 'echo',
      mark: 'echo-action',
      json: { push: { target: shipName, value: val } }
    })
    setInputValue("")
  }

  const pop = () => {
    if (`~${window.ship}` != shipName) return
    api.poke({
      app: 'echo',
      mark: 'echo-action',
      json: { pop: shipName }
    })
  }

  return (
    <main className="flex flex-col items-center justify-center min-h-screen">
      <form>
        <div>
          <label>Ship:</label><input style={{ width: 200 }} className='border' type='text' value={shipName} onChange={(e) => setShipName(e.target.value)} />
        </div>
        <div>
          <label>Value:</label><input style={{ width: 200 }} className='border' type='text' value={inputValue} onChange={(e) => setInputValue(e.target.value)} />
        </div>
        <div>
          <button onClick={() => push()} style={{ width: 100 }} className='border p-2 text-black-400'>Push</button>
          <button onClick={() => pop()} style={{ width: 100 }} className='border p-2 text-black-400'>Pop</button>
          <p>Our stack</p>
          {state.map((eachValue, index) => {
            return (<li key={index}>{eachValue}</li>)
          })}
        </div>
      </form>
    </main>
  )
}

export default App;
