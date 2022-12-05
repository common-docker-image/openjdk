# prong/openjdk

这是 OpenJDK的 docker 镜像，可以用作基于Prong的微服务基础镜像。

在[官方](https://hub.docker.com/_/openjdk)的基础上增加了以下特性：

- 将时区从UTC改为中国上海；
- 预装了组件：
  - curl：利用URL语法在命令行下工作的文件传输工具。
  - bash：Unix shell的一种。
  - [tini](https://github.com/krallin/tini)：用于容器的小而有效的`init`。Tini一般在容器中运行，用于生成子进程并等待它退出，然后杀死僵尸进程和执行信号转发。
  - ttf-dejavu：导出excel文件时依赖的字体。
  - simsun.ttc：“宋体”字体。

