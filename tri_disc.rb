# coding: utf-8
require "opengl"
require "glut"
require "cg/mglutils"


# ���襳����Хå�
display = Proc.new {
   GL.Clear(GL::COLOR_BUFFER_BIT) # ���̤򥯥ꥢ����
   GL.Begin(GL::TRIANGLES)        # �޷��ץ�ߥƥ���(���ѷ�)���곫��
      GL.Color(1.0,0.0,0.0)       # ���迧������
      GL.Vertex(-0.9, 0.9)        #   ĺ��1
      GL.Color(1.0,0.4,0.0)       # ���迧������
      GL.Vertex(-0.9,-0.1)        #   ĺ��2
      GL.Color(1.0,0.8,0.0)       # ���迧������
      GL.Vertex( 0.1,-0.1)        #   ĺ��3
   GL.End()                       # �޷��ץ�ߥƥ���(���ѷ�)���꽪λ
   GL.Color(0.5,0.8,1.0)          # ���迧������
   MGLUtils.disc([0.5,-0.5],0.4)  # ���Ĥ�����
   GL.Flush()                     # ���趯���¹�
}

# �����ܡ������ϥ�����Хå�
keyboard = Proc.new { |key,x,y|
  exit(0)                         # ���������������줿��ץ���ཪλ
}

GLUT.Init()                       # ���������
GLUT.InitWindowSize(300,300)      # ������ɥ����礭���λ���
GLUT.CreateWindow("OpenGL:Test")  # ������ɥ��κ���
GLUT.DisplayFunc(display)         # ���襳����Хå���Ͽ
GLUT.KeyboardFunc(keyboard)       # �����ܡ������ϥ�����Хå���Ͽ
GL.ClearColor(0.4,0.4,1.0,0.0)    # �طʿ�������
GLUT.MainLoop()                   # ���٥�ȥ롼�׳���
