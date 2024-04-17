#tag DesktopWindow
Begin DesktopWindow wndMain
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   247
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   1314095103
   MenuBarVisible  =   False
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "Processes Bar"
   Type            =   0
   Visible         =   True
   Width           =   700
   Begin ProcedureBarCanvas ProcedureBarCanvas1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      Background      =   0
      barsecs         =   3600
      Enabled         =   True
      Height          =   75
      Index           =   -2147483648
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   True
      Visible         =   True
      Width           =   633
   End
   Begin DesktopButton btnAdd
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Add"
      Default         =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   573
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   207
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin DesktopRadioGroup rgBars
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   95
      Horizontal      =   False
      Index           =   -2147483648
      InitialValue    =   "duuuh\nderrba\nadoiee\naderba"
      Italic          =   False
      Left            =   -86
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      SelectedIndex   =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   132
      Transparent     =   False
      Underline       =   False
      Visible         =   False
      Width           =   74
   End
   Begin DesktopButton btnDelete
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Delete"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   389
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   205
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin ColorSelect ColorSelect1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      Enabled         =   True
      Height          =   22
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   578
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      SelectedColor   =   &c00000000
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   107
      Transparent     =   True
      Visible         =   True
      Width           =   75
   End
   Begin DesktopLabel Label1
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   522
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Color:"
      TextAlignment   =   3
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   107
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   44
   End
   Begin DesktopLabel Label2
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   513
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Caption:"
      TextAlignment   =   3
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   141
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   53
   End
   Begin DesktopTextField tfCaption
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   578
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   141
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   75
   End
   Begin DesktopLabel Label3
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   513
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Time:"
      TextAlignment   =   3
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   173
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   53
   End
   Begin DesktopTextField tfTime
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   578
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   173
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   75
   End
   Begin doubleclickLabel lblBarVal
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   660
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "1h"
      TextAlignment   =   2
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   47
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   31
   End
   Begin DesktopListBox lbProcs
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   False
      AllowRowDragging=   True
      AllowRowReordering=   True
      Bold            =   False
      ColumnCount     =   1
      ColumnWidths    =   ""
      DefaultRowHeight=   -1
      DropIndicatorVisible=   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      GridLineStyle   =   0
      HasBorder       =   True
      HasHeader       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      HeadingIndex    =   0
      Height          =   120
      Index           =   -2147483648
      InitialValue    =   "Procedure"
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      RequiresSelection=   False
      RowSelectionType=   0
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   107
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   171
      _ScrollWidth    =   -1
   End
   Begin DesktopButton btnReAdd
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Re-Add"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   389
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   173
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin DesktopButton btnDeleteAll
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Delete All"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   297
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   205
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin DesktopButton btnReAddAll
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Re-Add All"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   297
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   173
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin DesktopUpDownArrows UpDownArrows1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowTabStop    =   True
      Enabled         =   True
      Height          =   23
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   217
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   15
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   160
      Transparent     =   False
      Visible         =   True
      Width           =   13
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Closing()
		  quit
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  ProcedureBarCanvas1.MakeNewBar(0,565,&c61a5c2,"duhhh")
		  lbProcs.AddRow("duhhh")
		  var b as new BarObject(ProcedureBarCanvas1,565,&c61a5c2,"duhhh")
		  lbProcs.RowTagAt(lbProcs.LastAddedRowIndex)=b
		  ProcedureBarCanvas1.MakeNewBar(2,648,&c2c7da0,"aderrr")
		  lbProcs.AddRow("aderrr")
		  b= new BarObject(ProcedureBarCanvas1,648,&c2c7da0,"aderrr")
		  lbProcs.RowTagAt(lbProcs.LastAddedRowIndex)=b
		  ProcedureBarCanvas1.MakeNewBar(3,866,&c2a6f97,"doiee")
		  lbProcs.AddRow("doiee")
		  b= new BarObject(ProcedureBarCanvas1,866,&c2a6f97,"doiee")
		  lbProcs.RowTagAt(lbProcs.LastAddedRowIndex)=b
		  ProcedureBarCanvas1.MakeNewBar(1,515,&c468faf,"aderba")
		  lbProcs.AddRow("aderba")
		  b= new BarObject(ProcedureBarCanvas1,515,&c468faf,"aderba")
		  lbProcs.RowTagAt(lbProcs.LastAddedRowIndex)=b
		  
		  // init some things for the procbar
		  ProcedureBarCanvas1.Init
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Add()
		  var c as color = ColorSelect1.SelectedColor
		  var cap as string = tfCaption.Text
		  var t as integer = tfTime.Text.ToInteger
		  
		  // add the bar itself
		  ProcedureBarCanvas1.MakeNewBar(0,t,c,cap)
		  
		  // add the row in the listbox
		  lbProcs.AddRow(cap)
		  // store this bar object in the rowtag
		  var b as new BarObject(ProcedureBarCanvas1,t,c,cap)
		  lbProcs.RowTagAt(lbProcs.LastAddedRowIndex)=b
		  
		  // redraw the control
		  ProcedureBarCanvas1.Refresh(true)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add4()
		  select case rgBars.SelectedIndex
		  case 0
		    ProcedureBarCanvas1.MakeNewBar(0,25,&c61a5c2,"duhhh")
		  case 1
		    ProcedureBarCanvas1.MakeNewBar(1,25,&c468faf,"aderba")
		  case 2
		    ProcedureBarCanvas1.MakeNewBar(2,25,&c2c7da0,"aderrr")
		  case 3
		    ProcedureBarCanvas1.MakeNewBar(3,25,&c2a6f97,"doiee")
		  end select
		  
		  ProcedureBarCanvas1.Refresh(true)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Delete()
		  'ProcedureBarCanvas1.RemoveObject(rgBars.SelectedIndex)
		  
		  ProcedureBarCanvas1.RemoveObject(lbProcs.SelectedRowIndex)
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mObjectOffsetY As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events btnAdd
	#tag Event
		Sub Pressed()
		  Add
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnDelete
	#tag Event
		Sub Pressed()
		  Delete
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblBarVal
	#tag Event
		Function ContextualMenuItemSelected(selectedItem As DesktopMenuItem) As Boolean
		  var sel as string = selectedItem.Text
		  
		  var time as string = sel.Right(1)
		  var base as string = sel.left(sel.Length-1)
		  var secs as integer
		  select case time
		  case "h"
		    secs = base.ToInteger*3600
		  case "d"
		    secs = base.ToInteger*85400
		  case "w"
		    secs = base.ToInteger*604800
		  case "m"
		    secs = base.ToInteger*2419200
		  end select
		  
		  me.Text=sel
		  
		  wndMain.ProcedureBarCanvas1.BarSecs=secs
		  
		  
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base As DesktopMenuItem, x As Integer, y As Integer) As Boolean
		  var t() as string = ProcedureBarCanvas1.timesarray
		  if t<>Nil then
		    var s as string
		    var menuitemname as String
		    for i as integer = 0 to t.Count-1
		      s=t(i)
		      s=s.ReplaceAll(chr(34),"")
		      base.AddMenu(New MenuItem(s))
		    next
		  else
		    base.AddMenu(New MenuItem("1d"))
		    base.AddMenu(New MenuItem("2d"))
		    base.AddMenu(New MenuItem("3d"))
		    base.AddMenu(New MenuItem("4d"))
		    base.AddMenu(New MenuItem("5d"))
		    base.AddMenu(New MenuItem("6d"))
		    base.AddMenu(New MenuItem("1w"))
		    base.AddMenu(New MenuItem("2w"))
		    base.AddMenu(New MenuItem("3w"))
		    base.AddMenu(New MenuItem("1m"))
		  end if
		  
		  return true
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events lbProcs
	#tag Event
		Function DragReorderRows(newPosition as Integer, parentRow as Integer) As Boolean
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub DropObjectOnRow(x As Integer, y As Integer, obj As DragItem, action As Integer, row As Integer, parentRow As Integer, location As DesktopListbox.DropLocations)
		  // remove all and re-enter
		  ProcedureBarCanvas1.RemoveAllBars
		  for i as integer = 0 to lbProcs.RowCount-1
		    ProcedureBarCanvas1.AddBar(me.RowTagAt(i))
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnReAdd
	#tag Event
		Sub Pressed()
		  ProcedureBarCanvas1.AddBar(lbProcs.RowTagAt(lbProcs.SelectedRowIndex))
		  ProcedureBarCanvas1.Refresh(true)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnDeleteAll
	#tag Event
		Sub Pressed()
		  ProcedureBarCanvas1.RemoveAllBars
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnReAddAll
	#tag Event
		Sub Pressed()
		  for i as integer = 0 to lbProcs.RowCount-1
		    ProcedureBarCanvas1.AddBar(lbProcs.RowTagAt(i))
		  next
		  ProcedureBarCanvas1.Refresh(true)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events UpDownArrows1
	#tag Event
		Sub DownPressed()
		  for each bo as BarObject in ProcedureBarCanvas1.mBarObjects
		    bo.secs=bo.secs/2
		  next
		  ProcedureBarCanvas1.Refresh(true)
		End Sub
	#tag EndEvent
	#tag Event
		Sub UpPressed()
		  for each bo as BarObject in ProcedureBarCanvas1.mBarObjects
		    bo.secs=bo.secs*2
		  next
		  ProcedureBarCanvas1.Refresh(true)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Window Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&cFFFFFF"
		Type="ColorGroup"
		EditorType="ColorGroup"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="DesktopMenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
