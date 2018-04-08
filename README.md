# Emacs安装引导

---

[TOC]

---

## [Windows](https://zh.wikipedia.org/wiki/Microsoft_Windows)

### **安装步骤**
> * 1.下载[emacs最新版本](http://ftp.gnu.org/gnu/emacs/windows/ )
> * 2.解压并执行emacs安装目录的\bin\addpm.exe
（注意：我的安装目录是"D:/Emacs")
> * 3.下载emacs-25-x86_64-deps.zip，并解压到"D:/Emacs"目录里；这一步骤很重要，是让windows支持更多的gnu库，比如使得org-mode可以显示png格式的图片等
> * 我的安装文件（[emacs-25.3_1-x86_64.zip](https://pan.baidu.com/s/1Ndi-3ouks3ffdnFK01YpJA) | [emacs-25-x86_64-deps.zip](https://pan.baidu.com/s/1FMeTFYQ1nrWZp_7m_sgDEA))

### **个人配置**

#### [Capslock键修改Ctrl键](https://zhuanlan.zhihu.com/p/29581818)
> * 1.点击Win+R键
> * 2.在输入框键入regedit，打开注册表
> * 3.进入HKEY_LOCAL_MACHINE -> System -> CurrentControlSet -> Control -> KeyBoard Layout。记住，一定是keyBoard Layout，而不是KeyBoard Layouts
> * 4.右键菜单，然后选择New -> Binary value
> * 5.重命名New Value #1 -> Scancode Map
> * 6.右键菜单Scancode Map -> Modify
> * 7.输入如下值，保存
0000 00 00 00 00 02 00 00 00
0008 00 00 00 00 1d 00 3A 00
0010 00 00 00 00 00 00 00 00
0018
> * [reg文件](https://github.com/ougato/Emacs/tree/master/Windows)

#### [.emacs.d](https://github.com/ougato/Emacs/tree/master/.emacs.d)
> * 1.配置文件，默认是不存在的。配置文件生效的目录是windows主目录：
"C:\Users\Administrator\AppData\Roaming\"
> * 2.保证C:\Users\Administrator\AppData\Roaming目录下没有.emacs文件
> * 3.建立C:\Users\Administrator\AppData\Roaming\\.emacs.d\init.el文件

--- 

## [Mac](https://zh.wikipedia.org/wiki/%E9%BA%A6%E9%87%91%E5%A1%94%E6%93%8D%E4%BD%9C%E7%B3%BB%E7%BB%9F)

--- 

## [Linux](https://zh.wikipedia.org/wiki/Linux)
