Attribute VB_Name = "Module1"
Option Explicit

Public LightNumber As Byte

Public LightRecord As String


Sub LightCheck()
    Dim Result As String
    
    With Sheet1
        Select Case LightNumber
            Case Is = 1   '����ƹ�
                Result = "132230132230"
            Case Is = 2   '�����ƹ�
                Result = "132130"
            Case Is = 3   '����
                Result = "132430132130132230132230132530132130"
            Case Is = 4   '��ת��ͨ��·��
                Result = "132530"
            Case Is = 5   'ֱ��ͨ��·��
                Result = "132130"
            Case Is = 6   'ͨ�����ЙM����
                Result = "132230132230"
            Case Is = 7   '�ᳵ
                Result = "132130"
            Case Is = 8   '·����ʱͣ��
                Result = "122131"
            Case Is = 9   '����������·��ʻ
                Result = "132330"
            Case Is = 10  '��ת��ͨ��·��
                Result = "132430"
            Case Is = 11  'ͨ�����������䡢�µ���ʻ
                Result = "132230132230"
            Case Is = 12  'ģ��ҹ�俼����ɣ���ر����еƹ�
                Result = "112130"
        End Select
        
        'Fill Result after last unempty cell
        .Cells(.Cells(1048576, LightNumber).End(xlUp).row + 1, LightNumber) = Abs(Result = Right(LightRecord, Len(Result))) * 2 - 1
    End With
End Sub
