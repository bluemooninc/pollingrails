import React, { Component } from 'react';

class List extends Component {
    constructor(props) {
        super(props);
        this.state = {
            _json: [],
        };
    }
    // 書き込み一覧をサーバーから取得
    componentDidMount() {
        var arr = [];
        fetch('/api/ranking/')
            .then(function(response) {
                return response.json()
            })
            .then(function(jsonData) {
                for(var i in jsonData){
                    arr.push(jsonData[i].name);
                    console.log(jsonData[i].name)
                }
                this.setState({_json : arr});
            }.bind(this))
            .catch(function(error) {
                console.log('error', error)
            })
    }
    render() {
        return(this.state._json);
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
