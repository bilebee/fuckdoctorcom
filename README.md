# fuckdoctorcom
广州热点软件网页认证自动登录脚本/徐州工业职业技术学院/Windows
该项目是一个适用于Windows的校园网网页登陆认证脚本。

## 使用方法

1. **下载文件**
   - 访问[release页面](https://github.com/bilebee/fuckdoctorcom/releases/)。
   - 找到最新的发布版本，点击下载链接，保存文件到你的电脑。

2. **编辑`network.ps1`文件**
   - 在下载的文件夹中找到`network.ps1`文件。
   - 右键点击`network.ps1`，选择“编辑”。
   - 在文件的最上方，你会看到两个变量：`$networkusername`和`$networkpassword`。
   - 将`$username`设置为你的学号和运营商，例如`12345678@运营商`。
   - 将`$password`设置为你的教务系统密码。
   - 注意，这两个值都需要通过URL转义。你可以使用[在线URL转义工具](https://www.urlencoder.org/)进行转换。

   示例：
   ```powershell
   $networkusername = "123456%40unicom"
   $networkpassword = "123456%40%40"
   ```

3. **运行脚本**
   - 编辑完成并保存`network.ps1`文件。
   - 双击`start.bat`文件。
   - 脚本运行后，会生成一个名为`network.log`的日志文件。
   - 打开`network.log`文件，检查日志内容。如果出现“终端已在线”或“认证成功”的字样，表示认证成功。

4. **设置自动启动**
   - 打开Windows任务计划程序：
     - 按下`Win + R`键，输入`taskschd.msc`，按回车键。
   - 创建一个基本任务：
     - 在右侧操作面板中，点击“创建基本任务”。
     - 输入任务名称，例如“校园网自动登录”，点击“下一步”。
   - 设置触发器：
     - 选择任务的触发条件，例如“登录时”或“每天”，点击“下一步”。
   - 设置操作：
     - 选择“启动程序”，点击“下一步”。
     - 点击“浏览”，找到并选择`start.bat`文件，点击“下一步”。
   - 完成任务：
     - 检查任务设置，确认无误后，点击完成。
