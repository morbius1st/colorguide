'use babel';

import ColorguideView from './colorguide-view';
import { CompositeDisposable } from 'atom';

export default {

  colorguideView: null,
  modalPanel: null,
  subscriptions: null,

  activate(state) {
    this.colorguideView = new ColorguideView(state.colorguideViewState);
    this.modalPanel = atom.workspace.addModalPanel({
      item: this.colorguideView.getElement(),
      visible: false
    });

    // Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
    this.subscriptions = new CompositeDisposable();

    // Register command that toggles this view
    this.subscriptions.add(atom.commands.add('atom-workspace', {
      'colorguide:toggle': () => this.toggle()
    }));
  },

  deactivate() {
    this.modalPanel.destroy();
    this.subscriptions.dispose();
    this.colorguideView.destroy();
  },

  serialize() {
    return {
      colorguideViewState: this.colorguideView.serialize()
    };
  },

  toggle() {
    console.log('Colorguide was toggled!');
    return (
      this.modalPanel.isVisible() ?
      this.modalPanel.hide() :
      this.modalPanel.show()
    );
  }

};
