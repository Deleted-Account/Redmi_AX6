基本上只包含 Passwall（SSR，无其他协议）、SmartDNS、SQM 的一个超精简 AX6 固件

(其实SQM也可以删的，NSS和这货不兼容。不像x86固件上打开SFE，SQM实测还是有效果)

有 FullconeNAT。考虑了下，UPnP 也删除了

CoreMark跑分没卵用，删


---


11月，NSS 没正常加载，FullconeNAT 打开后断网 的问题，上游已修复


kv漫游回来断网的问题，12 月底 Boos 已修复，感谢大佬，赞美大佬！~


---


1月20号之后，用 Boos 的源云编译，一直失败

大佬叫用另一个CI，我是小白，不知道如何解决

当时骚操作是直接 merge Boos 的部分文件到 Lean 的源

(2月17号，又可以正常编译成功了)


---

3月出头，Lean 的源好像大佬们吵架，删掉了所有 XiaoMi 设备的支持。Boos 大佬您可千万别放弃啊，感恩~

---

xiaorouji把Passwall的LuCI分出来了
如果我没编译进去，一定是我的姿势不对
