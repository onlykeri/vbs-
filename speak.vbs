Dim i
'speak = inputbox("�������������ʣ���Χ��-10��10��","��������","1")
speak = 1
Set objVoice = CreateObject("SAPI.SpVoice") 
Set colVoice = objVoice.GetVoices()'����������漯��
Set objVoice.Voice = colVoice.Item(0)	' ��ȡ��������
objVoice.Rate = speak	'�����ٶȣ�-10��10��
objVoice.Volume = 80	'����������0-100��
readfilepath=".\����.txt"
set stm=createobject("ADODB.Stream")
stm.Charset ="utf-8"
stm.Open
stm.LoadFromFile readfilepath
readfile = stm.ReadText 
for i=1 to 3
objVoice.Speak readfile
next
stm.Close