#tag Class
Protected Class BarObject
	#tag Method, Flags = &h0
		Sub Constructor(cvs As DesktopCanvas, scs As integer, Optional c As color = &cff0000, Optional cap As String = "")
		  myCanvas=new WeakRef(cvs)
		  Secs=scs
		  fillcolor=c
		  Caption=cap
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Draw(g as Graphics, l as integer, t as integer) As integer
		  // recalculate this bar's % width
		  
		  
		  // Draws the object on the canvas.
		  g.DrawingColor=fillcolor
		  g.FillRectangle(l,t,Width,Height)
		  g.DrawingColor = Color.White
		  g.DrawText(Caption, l+(Width/2)-(3*Caption.Length), (Height/2)+5)
		  
		  return Right
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Top + Height
			End Get
		#tag EndGetter
		Bottom As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Caption As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fillcolor As Color = &cff0000
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  var cvs as ProcedureBarCanvas = ProcedureBarCanvas(myCanvas.Value)
			  
			  Return cvs.Height
			End Get
		#tag EndGetter
		Height As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		index As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Left As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mPercentage As Double = 25
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mTimeframe As Integer = 3600
	#tag EndProperty

	#tag Property, Flags = &h21
		Private myCanvas As WeakRef
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ParentWindow As DesktopWindow
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  mPercentage = Secs/Timeframe
			  
			  Return mPercentage
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mPercentage = value
			End Set
		#tag EndSetter
		Percentage As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Left + Width
			End Get
		#tag EndGetter
		RIght As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Secs As Integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mtimeframe
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mtimeframe = value
			End Set
		#tag EndSetter
		Timeframe As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Top As Integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  var cvs as ProcedureBarCanvas = ProcedureBarCanvas(myCanvas.Value)
			  
			  Return ceiling(cvs.Width*percentage)
			End Get
		#tag EndGetter
		Width As Integer
	#tag EndComputedProperty


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
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
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
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RIght"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bottom"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Caption"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
