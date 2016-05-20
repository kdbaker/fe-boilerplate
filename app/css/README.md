# CSS

## Files

- ```app.sass``` - Manifest

## Namespaces

- ```is-```, ```has-```: Signify that the piece of UI in question is currently styled a certain way because of a state or condition. This stateful namespace is gorgeous, and comes from [SMACSS](https://smacss.com/). It tells us that the DOM currently has a temporary, optional, or short-lived style applied to it due to a certain state being invoked.
- ```js-```: Signify that this piece of the DOM has some behaviour acting upon it, and that JavaScript binds onto it to provide that behaviour. If you're not a developer working with JavaScript, leave these well alone.
- ```qa-```: Signify that a QA or Test Engineering team is running an automated UI test which needs to find or bind onto these parts of the DOM. Like the JavaScript namespace, this basically just reserves hooks in the DOM for non-CSS purposes.
- ```seo-```: Signify that a Analytics team is running a goal or conversion which needs to find or bind onto these parts of the DOM. Like the JavaScript namespace, this basically just reserves hooks in the DOM for non-CSS purposes.
