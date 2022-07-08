# Oh! Aria2

## 简介

简单且易于使用的 aria2 配置方案。

## 详情

本方案使用 `aria2` 作为后端下载程序，`AriaNg` 作为前端界面显示，并搭配浏览器使用

| 名称 | 版本号 | 项目地址 |
| :---: | :---:| :---: |
| aria2 | 1.36.0 | https://github.com/aria2/aria2 |
| AriaNg | 1.2.4 | https://github.com/mayswind/AriaNg |

`downloads` 为默认下载位置，`config` 存储配置文件，内容如下：

- *aria2.conf*：aria2 的设置文件，本仓库提供了一份简单的可以开箱即用的配置方案，更多设置可以参考 AriaNg 界面中的 **Aria2 设置**
- *aria2.log*：aria2 的日志文件，默认日志级别设置为 `notice`
- *aria2.session*：aria2 的会话文件，记录下载的任务状态

> 以上配置的路径均可在 *aria2.conf* 中进行修改

## 使用方法

### Windows

克隆仓库到本地，程序和配置文件位于 windows 文件夹中

双击 `Start.vbs` 启动 aria2，然后用浏览器打开 `AriaNg.html`，AriaNg 界面中的 **Aria2 状态** 显示 **已连接** 即可使用

> *aria2.conf* 设置出错会无法启动 aria2，**Aria2 状态** 也一直显示 **连接中** 或 **未连接**

本仓库还提供以下批处理文件进行管理（双击运行即可）：

- *Status.bat*：查看 aria2 的运行状态
- *Stop.bat*：关闭 aria2
- *Restart.bat*：重启 aria2，修改 *aria2.conf* 后需重启
- *Clean.bat*：关闭 aria2，清空日志和会话文件，并且清空 `downloads` 中所有文件

### Linux

首先通过各个 Linux 发行版的包管理器安装 aria2，例如 Arch Linux：`sudo pacman -S aria2`

然后克隆仓库到本地，配置文件位于 linux 文件夹中

移动 linux 文件夹中所有内容到 `/home/username/data/aria2`，设置可执行权限

```
chmod +x service.sh clean.sh
```

运行 `service.sh`，用于创建用户服务并且设置开机自启

用浏览器打开 `AriaNg.html`，AriaNg 界面中的 **Aria2 状态** 显示 **已连接** 即可使用

> *aria2.conf* 设置出错会无法启动 aria2.service，**Aria2 状态** 也一直显示 **连接中** 或 **未连接**

> 本配置方案的默认存储路径为 `/home/username/data/aria2`，自定义需要修改 *aria2.conf* 和 *aria2.service* 中的路径

本仓库还提供以下命令管理 aria2：

- *clean.sh*：运行后会重启 aria2.service，清空日志和会话文件，并且清空 `downloads` 中所有文件

```
systemctl --user stop aria2.service      # 停止 aria2.service
systemctl --user restart aria2.service   # 重启 aria2.service
systemctl --user status aria2.service    # 查看 aria2.service 状态
systemctl --user disable aria2.service   # 移除 aria2.service
```

> 注意：目前仅支持使用 systemd 作为 init 进程的 Linux 发行版

### BT 服务器

参考 [TrackersList](https://github.com/XIU2/TrackersListCollection) 的配置，查看 [使用文档](https://trackerslist.com/#/zh?id=aria2)

## 鸣谢

[aria2 项目](https://github.com/aria2/aria2)

[AriaNg 项目](https://github.com/mayswind/AriaNg)

[TrackersList 项目](https://github.com/XIU2/TrackersListCollection)

## 许可证

[GPL-v3.0](https://github.com/oranhext/oh-aria2/blob/main/LICENSE)