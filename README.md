基本上只包含 Passwall（SSR，无其他协议）、SmartDNS、SQM 的一个超精简 AX6 固件

有 FullconeNAT。考虑了下，UPnP 也删除了


---

11 月之后的固件貌似都有两个问题：NSS 没正常加载，FullconeNAT 打开后断网
(bug 上游已修复)

但是kv漫游回来断网的问题依旧没解决
(12 月底 Boos 已修复 kv 漫游断网）

---

1月20号之后，用 Boos 的源云编译，一直失败

大佬叫用另一个CI，我是小白，不知道如何解决

目前骚操作是直接 merge Boos 的部分文件到 Lean 的源
