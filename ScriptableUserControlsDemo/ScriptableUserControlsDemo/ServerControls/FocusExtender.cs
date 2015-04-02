using System.Collections.Generic;
using System.Web.UI;

namespace ScriptableUserControlsDemo.ServerControls
{
    // For more info about create custom ExtenderControls 
    // https://msdn.microsoft.com/en-us/library/bb386403%28v=vs.140%29.aspx
    [TargetControlType(typeof(Control))]
    public class FocusExtender : ExtenderControl
    {
        public string HighlightCssClass { get; set; }

        public string NoHighlightCssClass { get; set; }

        protected override IEnumerable<ScriptDescriptor> GetScriptDescriptors(Control targetControl)
        {
            var descriptor = new ScriptBehaviorDescriptor("Demo.FocusBehavior", targetControl.ClientID);
            descriptor.AddProperty("id", ID);
            descriptor.AddProperty("highlightCssClass", HighlightCssClass);
            descriptor.AddProperty("nohighlightCssClass", NoHighlightCssClass);
            yield return descriptor;
        }

        protected override IEnumerable<ScriptReference> GetScriptReferences()
        {
            yield return new ScriptReference("Scripts/FocusBehavior.js");
        }
    }
}
