Public GUI, Data, Listes As Worksheet

Sub programme()
Dim analyse, annee, zone, scode, ges, Titre As String
   
   Dim code As Integer
   Dim i, j As Long
    
   Set GUI = Worksheets("GUI")
   Set Data = Worksheets("Data")
   Set Liste = Worksheets("Listes")
   'Récupération des variables
   analyse = GUI.Cells(4, 3)
   annee = GUI.Cells(4, 6)
   zone = GUI.Cells(4, 8)
   scode = GUI.Cells(4, 10)
   ges = GUI.Cells(4, 12)
   code = Val(scode)
   
   GUI.Range("Tableau2") = Null    'Effacer le Tableau2
   GUI.Rows("24:100").Delete Shift:=xlUp 'Enlever les lignes après 24
   i = 2
   j = 11
   If analyse = "Année" Then   'Graphique par année
      Titre = "Émission de " & ges & " par " & GUI.Cells(8, 2)
      Titre = Titre & " (" & zone & ")"
      GUI.Cells(4, 6) = Null
      
      Do While Not IsEmpty(Data.Cells(i, 1))
        If zone = Data.Cells(i, 2) And code = Data.Cells(i, 3) Then
           GUI.Cells(j, 1) = Data.Cells(i, 1)
           r = Copie(i, j, ges)
           j = j + 1
        End If
        i = i + 1
      Loop
   ElseIf analyse = "Zone" Then    'Graphique par zone géographique
      Titre = "Émission de " & ges & " par " & GUI.Cells(8, 2)
      Titre = Titre & " (" & annee & ")"
      GUI.Cells(4, 8) = Null
      
      Do While Not IsEmpty(Data.Cells(i, 1))
        If annee = Data.Cells(i, 1) And code = Data.Cells(i, 3) Then
           GUI.Cells(j, 1) = Data.Cells(i, 2)
           r = Copie(i, j, ges)
           j = j + 1
        End If
        i = i + 1
      Loop
   ElseIf analyse = "Code" Then   'Graphique par code de secteur industriel
      Titre = "Émission de " & ges & " "
      Titre = Titre & "(" & annee & "; " & zone & ")"
      GUI.Cells(4, 10) = Null
      
      Do While Not IsEmpty(Data.Cells(i, 1))
        If annee = Data.Cells(i, 1) And zone = Data.Cells(i, 2) Then
           GUI.Cells(j, 1) = Data.Cells(i, 4)
           r = Copie(i, j, ges)
           j = j + 1
        End If
        i = i + 1
      Loop
   End If
   
   GUI.Cells(6, 2) = Titre    'Dépose le Titre à la cellule 6,2
   GUI.Cells(7, 2) = GUI.Cells(4, 3)
End Sub

'Fonction copie des émissions dans la colonne Y selon le GES
Function Copie(i, j, ges)
    Select Case ges
        Case "CO2"
            GUI.Cells(j, 2) = Data.Cells(i, 6)
        Case "CH4"
            GUI.Cells(j, 2) = Data.Cells(i, 7)
        Case "CH4eq"
            GUI.Cells(j, 2) = Data.Cells(i, 8)
        Case "N2O"
            GUI.Cells(j, 2) = Data.Cells(i, 9)
        Case "N2Oeq"
            GUI.Cells(j, 2) = Data.Cells(i, 10)
        Case "HFCs"
            GUI.Cells(j, 2) = Data.Cells(i, 11)
        Case "PFCs"
            GUI.Cells(j, 2) = Data.Cells(i, 12)
        Case "SF6"
            GUI.Cells(j, 2) = Data.Cells(i, 13)
        Case "NF3"
            GUI.Cells(j, 2) = Data.Cells(i, 14)
        Case "CO2E"
            GUI.Cells(j, 2) = Data.Cells(i, 15)
    End Select
End Function




Sub programme2()
Dim analyse, annee, zone, scode, ges, Titre As String
   
   Dim code As Integer
   Dim i, j As Long
    
   Set GUI = Worksheets("GUI")
   Set Data = Worksheets("Data")
   Set Liste = Worksheets("Listes")
   
   analyse = GUI.Cells(4, 3)
   annee = GUI.Cells(4, 6)
   zone = GUI.Cells(4, 8)
   scode = GUI.Cells(4, 10)
   ges = GUI.Cells(4, 12)
   code = Val(scode)
   GUI.Range("Tableau2") = Null    'Effacer le Tableau2
   GUI.Rows("24:100").Delete Shift:=xlUp 'Enlever les lignes après 24
   i = 2
   j = 11
  
  
 Do While Not IsEmpty(Data.Cells(i, 1))
 
        If analyse = "Année" Then
            If zone = Data.Cells(i, 2) And code = Data.Cells(i, 3) Then
                GUI.Cells(j, 1) = Data.Cells(i, 1)
                r = Copie(i, j, ges)
                j = j + 1
            End If
        ElseIf analyse = "Zone" Then
            
            If annee = Data.Cells(i, 1) And code = Data.Cells(i, 3) Then
                GUI.Cells(j, 1) = Data.Cells(i, 2)
                r = Copie(i, j, ges)
                j = j + 1
            End If
        ElseIf analyse = "Code" Then
            If annee = Data.Cells(i, 1) And zone = Data.Cells(i, 2) Then
                GUI.Cells(j, 1) = Data.Cells(i, 4)
                r = Copie(i, j, ges)
                j = j + 1
            End If
        
        End If
 i = i + 1
 Loop
 
    If analyse = "Année" Then   'Graphique par année
      Titre = "Émission de " & ges & " par " & GUI.Cells(8, 2)
      Titre = Titre & " (" & zone & ")"
      GUI.Cells(4, 6) = Null
    ElseIf analyse = "Zone" Then    'Graphique par zone géographique
      Titre = "Émission de " & ges & " par " & GUI.Cells(8, 2)
      Titre = Titre & " (" & annee & ")"
      GUI.Cells(4, 8) = Null
   ElseIf analyse = "Code" Then   'Graphique par code de secteur industriel
      Titre = "Émission de " & ges & " "
      Titre = Titre & "(" & annee & "; " & zone & ")"
      GUI.Cells(4, 10) = Null
   End If
   
   GUI.Cells(6, 2) = Titre    'Dépose le Titre à la cellule 6,2
   GUI.Cells(7, 2) = GUI.Cells(4, 3)
End Sub


