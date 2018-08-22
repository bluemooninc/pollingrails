import React, { Component } from 'react';

class List extends Component {
    constructor(props) {
        super(props);
        this.state = {
            name: []
        };
    }
    // 書き込み一覧をサーバーから取得
    componentDidMount() {
        var nameList = [];
        var urlList = [];
        fetch('/api/ranking/')
            .then(function(response) {
                return response.json()
            })
            .then(function(jsonData) {
                for(var i in jsonData){
                    nameList.push(jsonData[i].name);
                    urlList.push(jsonData[i].url);
                }
                this.setState({name : jsonData});
            }.bind(this))
            .catch(function(error) {
                console.log('error', error)
            })
    }
    render() {
        return(
            <ol>
            {this.state.name.map(function(index) {
                return <li>{index.name}:{index.url}</li>;
            })}
            </ol>
        );
    }
}

class Header extends Component {
    render() {
        return (
            <header>
            <h1>Ranking</h1>
        </header>
    );
    }
}

class App extends Component {
    render() {
        return (
            <div className="App">
            <Header />
            <List />
            </div>
    );
    }
}
export default App;
