# codex-unreconnecting

用于缓解 Codex 在 VS Code 中持续出现 `reconnecting` 的小工具脚本集合。

目前包含：

- `windows.bat`：Windows 启动脚本
- `mac.sh`：macOS 启动脚本

## 原理

脚本会先为当前启动过程设置代理环境变量，然后关闭 VS Code，再重新打开 VS Code。  
如果你的 Codex 连接异常和代理环境未生效、或 VS Code 进程未正确继承代理配置有关，这种方式通常能快速恢复连接。

## 文件说明

### `windows.bat`

适用于 Windows。

当前脚本内容会：

1. 设置以下代理变量：
   - `HTTP_PROXY`
   - `HTTPS_PROXY`
   - `ALL_PROXY`
   - `WS_PROXY`
   - `WSS_PROXY`
2. 强制结束 `Code.exe`
3. 重新启动 VS Code

注意：

- 默认代理地址是 `http://127.0.0.1:7897`
- 你需要根据自己的实际情况修改 `windows.bat` 中的 VS Code 安装路径
- 当前示例中使用的是：
  `F:\Microsoft VS Code\Code.exe`

### `mac.sh`

适用于 macOS。

当前脚本内容会：

1. 设置以下代理变量：
   - `HTTP_PROXY`
   - `HTTPS_PROXY`
   - `ALL_PROXY`
   - `WS_PROXY`
   - `WSS_PROXY`
2. 关闭当前运行中的 VS Code
3. 重新打开 `Visual Studio Code`

默认代理地址同样是：

`http://127.0.0.1:7897`

如果你想临时使用其他代理地址，可以这样执行：

```bash
PROXY_URL=http://127.0.0.1:7897 ./mac.sh
```

首次使用前建议赋予执行权限：

```bash
chmod +x mac.sh
```

## 使用方法

### Windows

双击运行 `windows.bat` 即可。

### macOS

在终端中进入项目目录后执行：

```bash
./mac.sh
```

## 适用场景

如果你遇到以下情况，这个项目可能有帮助：

- Codex 在 VS Code 中一直显示 `reconnecting`
- 已经开启本地代理，但 VS Code 没有正确继承代理环境
- 重启 VS Code 后短时间内又恢复正常

## 说明

这是一个偏实用型的快速修复脚本项目，适合先排查“代理变量是否生效”和“VS Code 是否需要在带代理环境下重启”这类问题。  
如果问题仍然存在，建议继续检查：

- 代理软件本身是否正常工作
- 代理端口是否正确
- VS Code / Codex 扩展版本是否正常
- 系统网络或防火墙设置
