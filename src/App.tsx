import { useState } from 'react'
import './App.css'

function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <div className="flex flex-col items-center justify-center min-h-screen text-center">
        <h1 className="text-4xl font-bold text-blue-600 mb-4">
          🚀 Welcome to My React App on Render
        </h1>
        <p className="text-gray-700 mb-6">
          This app is built using <strong>Vite + React</strong> and deployed on <strong>Render</strong>.
        </p>
        <button
          onClick={() => setCount(count + 1)}
          className="px-6 py-3 bg-blue-600 text-white rounded-xl hover:bg-blue-700 transition-all"
        >
          Clicks: {count}
        </button>
        <p className="mt-8 text-sm text-gray-500">
          Created with ❤️ by Abdallah Hamdy
        </p>
      </div>
    </>
  )
}

export default App
