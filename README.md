基本上只包含Passwall（SSR，无其他协议）、SmartDNS、SQM 的一个超精简AX6固件

有FullconeNAT。考虑了下，UPnP也删除了


---

11月之后的固件貌似都有两个问题：NSS没正常加载，FullconeNAT打开后断网
(bug上游已修复)

但是kv漫游回来断网的问题依旧没解决
(12月底上游已修复 kv 漫游断网）

---

1月20号之后，用Boos的源云编译，一直失败
大佬叫用另一个CI，我是小白，不知道如何解决
