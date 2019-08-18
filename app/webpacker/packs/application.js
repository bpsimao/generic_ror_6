import Rails from 'rails-ujs';

Rails.start();
require("@rails/activestorage").start();

// Yarn...
import Bootstrap   from './bootstrap';
import FontAwesome from './fontawesome';
import Images      from './images';
import JQueryUi    from './jquery_ui';

// Channels...
import '../channels';

// CSS...
import '../stylesheets/application.scss';
