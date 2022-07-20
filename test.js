function getName(callback) {
    var name = prompt(' Enter your name:')
    callback(name)
    }
    getName((name) => console.log('Hello ' +name))