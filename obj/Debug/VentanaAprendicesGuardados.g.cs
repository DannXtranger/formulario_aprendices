﻿#pragma checksum "..\..\VentanaAprendicesGuardados.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "E341AEFAF04B0B83CB8A4A9728D35FD3EF39C1796C7B70870E2110C4009589DB"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;
using formulario_aprendices;


namespace formulario_aprendices {
    
    
    /// <summary>
    /// VentanaAprendicesGuardados
    /// </summary>
    public partial class VentanaAprendicesGuardados : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 19 "..\..\VentanaAprendicesGuardados.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnAtras;
        
        #line default
        #line hidden
        
        
        #line 35 "..\..\VentanaAprendicesGuardados.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid dataGridAprendices;
        
        #line default
        #line hidden
        
        
        #line 45 "..\..\VentanaAprendicesGuardados.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ContextMenu cmOpciones;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/formulario aprendices;component/ventanaaprendicesguardados.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\VentanaAprendicesGuardados.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.btnAtras = ((System.Windows.Controls.Button)(target));
            
            #line 22 "..\..\VentanaAprendicesGuardados.xaml"
            this.btnAtras.Click += new System.Windows.RoutedEventHandler(this.BtnAtras_Click);
            
            #line default
            #line hidden
            return;
            case 2:
            this.dataGridAprendices = ((System.Windows.Controls.DataGrid)(target));
            
            #line 41 "..\..\VentanaAprendicesGuardados.xaml"
            this.dataGridAprendices.MouseDown += new System.Windows.Input.MouseButtonEventHandler(this.dataGridAprendices_MouseDown);
            
            #line default
            #line hidden
            return;
            case 3:
            this.cmOpciones = ((System.Windows.Controls.ContextMenu)(target));
            return;
            case 4:
            
            #line 48 "..\..\VentanaAprendicesGuardados.xaml"
            ((System.Windows.Controls.MenuItem)(target)).Click += new System.Windows.RoutedEventHandler(this.MenuItem_Click_Eliminar);
            
            #line default
            #line hidden
            return;
            case 5:
            
            #line 58 "..\..\VentanaAprendicesGuardados.xaml"
            ((System.Windows.Controls.MenuItem)(target)).Click += new System.Windows.RoutedEventHandler(this.MenuItem_Click_Modificar);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

