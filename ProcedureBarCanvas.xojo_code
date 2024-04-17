#tag Class
Protected Class ProcedureBarCanvas
Inherits DesktopCanvas
	#tag Event
		Sub Paint(g As Graphics, areas() As Rect)
		  #PRAGMA unused areas
		  
		  // first make sure our scale is appropriate
		  ScaleBars
		  
		  // this loop gets the right index order for drawing from the listbox
		  var lft as integer = me.Left
		  mLastX=0
		  var right as integer = 0
		  For Each bo As BarObject In mBarObjects
		    right = bo.Draw(g,mLastX,0)
		    mLastX = mLastX+right
		  Next
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AddBar(b as BarObject)
		  // Adds a new bar to the canvas and selects it.
		  'var pct as Double = secs/Timeframe
		  
		  me.mBarObjects.Add(b)
		  Redraw
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub adjustbarsecs(direction as Boolean)
		  var currentbartime as string = wndMain.lblBarVal.Text
		  var curtimeindex as integer = timesarray.IndexOf(currentbartime)
		  var nextimeval as string
		  if direction then
		    nextimeval = timesarray(curtimeindex+1)
		    barsecs=SecsFromDuration(nextimeval)
		  else
		    nextimeval = timesarray(curtimeindex-1)
		    barsecs=SecsFromDuration(nextimeval)
		  end if
		  for each bo as BarObject in mBarObjects
		    bo.Timeframe=barsecs
		  next
		  
		  wndMain.lblBarVal.Text=nextimeval
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Init()
		  var t() as String = timesarray
		  t=Array("1h","2h","3h","4h","5h","6h","8h","12h","14h",_
		  "18h","22h","1d","2d","3d","4d","5d","6d","1w","2w","3w","1m")
		  timesarray=t
		  timesdict = new Dictionary
		  var s as string
		  for i as integer = 0 to t.Count-1
		    s=t(i)
		    timesdict.Value(s)=SecsFromDuration(s)
		    currentduration="1h"
		  next
		  
		  wndMain.lblBarVal.Text="1h"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MakeNewBar(idx As integer, secs As integer, Optional c As color = &cff0000, Optional cap As String = "")
		  // Adds a new bar to the canvas and selects it.
		  'var pct as Double = secs/Timeframe
		  var b as new BarObject(me,secs,c,cap)
		  me.mBarObjects.Add(b)
		  Redraw
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function pctsTotal() As integer
		  var t as integer
		  
		  for each bo as BarObject in mBarObjects
		    t=t+bo.Percentage*100
		  next
		  
		  return t
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Redraw()
		  Refresh(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveAllBars()
		  For i As Integer = mBarObjects.Count-1 DownTo 0
		    RemoveObject(i)
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveObject(bo As BarObject)
		  For i As Integer = 0 To mBarObjects.LastIndex
		    If mBarObjects(i) Is bo Then
		      RemoveObject(i)
		      Exit
		    End If
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveObject(index As Integer)
		  // Remove the specified object
		  
		  If index >= 0 And index <= mBarObjects.LastIndex Then
		    mBarObjects.RemoveAt(index)
		  End If
		  
		  Refresh(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ScaleBars()
		  // set all bars to current timeframe
		  
		  
		  // get the total % for all bars
		  var percentagetotal as integer = pctsTotal
		  
		  #If DebugBuild
		    var go as Boolean=SecsFromDuration(currentduration)*(percentagetotal/100)>3600
		  #Endif
		  
		  // only do this if we've passed one hour of duration - the lowest duration
		  If SecsFromDuration(currentduration)*(percentagetotal/100)>3600 then
		    // should we expand or constrict the bars view
		    var max as integer = timesdict.KeyCount-1
		    var cnt as integer = 0
		    // but not if we pass either low or high boundary
		    while percentagetotal<60 or percentagetotal>90 and cnt<max
		      if 100-percentagetotal<60 then adjustbarsecs(true) else adjustbarsecs(false) 
		      // reset our cals
		      'calcdicts.RemoveAll
		      percentagetotal = pctsTotal
		      cnt=cnt+1
		    wend
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SecsFromDuration(dur as string) As integer
		  var time as string = dur.Right(1)
		  var base as string = dur.left(dur.Length-1)
		  var secs as integer
		  select case time
		  case "h"
		    secs = base.ToInteger*3600
		  case "d"
		    secs = base.ToInteger*86400
		  case "w"
		    secs = base.ToInteger*604800
		  case "m"
		    secs = base.ToInteger*2419200
		  end select
		  
		  currentduration=dur
		  wndMain.lblBarVal.Text=dur
		  
		  return secs
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Background As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		barsecs As Integer = 3600
	#tag EndProperty

	#tag Property, Flags = &h21
		Private currentduration As string = "1h"
	#tag EndProperty

	#tag Property, Flags = &h0
		mBarObjects() As BarObject
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLastX As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		timesarray() As string
	#tag EndProperty

	#tag Property, Flags = &h0
		timesdict As Dictionary
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AllowAutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tooltip"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowFocus"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowTabs"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Transparent"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="Integer"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Visible=false
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Background"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="barsecs"
			Visible=false
			Group="Behavior"
			InitialValue="3600"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
