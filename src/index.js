import React from 'react';
import ReactDOM from 'react-dom';
import { Provider } from 'react-redux';
import { createStore, applyMiddleware } from 'redux';
import { BrowserRouter, Switch, Route } from 'react-router-dom';
import Reboot from 'material-ui/Reboot';

import reducers from './reducers';

import App from './components/index';

const createStoreWithMiddleware = applyMiddleware()(createStore);

ReactDOM.render(
  <div>
    <Reboot />
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
