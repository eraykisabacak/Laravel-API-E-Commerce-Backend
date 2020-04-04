import React, { Component } from "react";
import ReactDOM from "react-dom";

export default class Example extends Component {
    render() {
        return (
            <div className="container">
                <h1>Hello World</h1>
            </div>
        );
    }
}

if (document.getElementById("example")) {
    ReactDOM.render(<Example />, document.getElementById("example"));
}
