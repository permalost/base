import React from 'react';
import ReactDOM from 'react-dom';
import { Provider } from 'react-redux';
import { createStore, applyMiddleware } from 'redux';
import { BrowserRouter, Switch, Route } from 'react-router-dom';
// import CssBaseline from 'material-ui/CssBaseline';

import reducers from './reducers';

import App from './components/index';

const createStoreWithMiddleware = applyMiddleware()(createStore);

ReactDOM.render(
  <div>
    {/* <CssBaseline /> */}
    <Provider store={createStoreWithMiddleware(reducers)}>
      <BrowserRouter>
        <Switch>
          <Route path="/" component={App} />
        </Switch>
      </BrowserRouter>
    </Provider>
  </div>,
  document.querySelector('.container')
);
