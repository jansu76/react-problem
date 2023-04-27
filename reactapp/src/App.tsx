import './App.css';
import CodeInputPage from '@my-dummy-namespace/dummy-component';

function App() {
  console.log('dummy: ' + CodeInputPage)
  return (
    <div className="App">
      <header className="App-header">
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

export default App;
