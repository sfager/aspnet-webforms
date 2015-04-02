using System;
using System.Collections.Generic;
using System.Web.UI;

namespace ScriptableUserControlsDemo.UserControls
{
    public partial class ScriptableUserControl : UserControl, IScriptControl
    {
        private ScriptManager _currentScriptManager;

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);

            _currentScriptManager = ScriptManager.GetCurrent(Page);
            if (_currentScriptManager == null)
                throw new Exception("ScriptManager control is required!");
        }

        protected override void OnPreRender(EventArgs e)
        {
            _currentScriptManager.RegisterScriptControl(this);

            base.OnPreRender(e);
        }

        protected override void Render(HtmlTextWriter writer)
        {
            _currentScriptManager.RegisterScriptDescriptors(this);

            base.Render(writer);
        }

        #region IScriptControl Members

        public IEnumerable<ScriptDescriptor> GetScriptDescriptors()
        {
            return GetDescriptors();
        }

        public IEnumerable<ScriptReference> GetScriptReferences()
        {
            return GetReferences();
        }

        #endregion

        protected virtual IEnumerable<ScriptDescriptor> GetDescriptors()
        {
            var descriptor = new ScriptBehaviorDescriptor("Demo.ScriptableUserControl", ClientID);
            descriptor.AddProperty("id", ID);
            yield return descriptor;
        }

        protected virtual IEnumerable<ScriptReference> GetReferences()
        {
            yield return new ScriptReference("Scripts/ScriptableUserControl.js");
        }
    }
}