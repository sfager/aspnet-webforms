/// <reference name="MicrosoftAjax.js" />

Type.registerNamespace('Demo');

Demo.ScriptableUserControl = function (element) {
    Demo.ScriptableUserControl.initializeBase(this, [element]);

}

Demo.ScriptableUserControl.prototype = {
    initialize: function () {
        Demo.ScriptableUserControl.callBaseMethod(this, 'initialize');

        console.log('Initialize User Script on element: ' + this.get_element().id);
    },
    dispose: function () {
        console.log('Dispose User Script on element: ' + this.get_element().id);

        $clearHandlers(this.get_element());

        Demo.ScriptableUserControl.callBaseMethod(this, 'dispose');
    }
}

Demo.ScriptableUserControl.registerClass('Demo.ScriptableUserControl', Sys.UI.Behavior);

if (typeof (Sys) !== 'undefined') Sys.Application.notifyScriptLoaded();