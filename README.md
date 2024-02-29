基于PFLib-master魔改后的公平性联邦学习代码

相较于原来的PFLIB，本github的联邦学习针对于传统随机选择客户端进行优化，相较于传统的方案而言
，我们采取了李雅普诺夫方式来解决针对于客户端选择的公平性问题，它避免了因随机选取客户端导致联邦学习全局轮数过多这一经典问题。

本代码的使用方案如下：首先在OptimalSelectionAlgorithm.m文件里面输入beta，i的数值。（beta是公平性指标，选取0-1之间，根据本文论文的限制，合理的beta应当小于1/2。）

在这里，可以得到应用于Faired Matlab的K值，并延续这K值进行实验，将会得到一个的"client_selection.csv"。

接下来请在"sysstem/flcore/servers/severavg"第30行手动更改csv文件路径，即可正常运行。

随机数种子与模型参数均已调整到PFLib默认情况，本次做出的模型修改主要是为了引入额外的修正客户端路径，而非随机客户端路径来完成实验。

实在扛不住了，Matlab尽量封装了，不像以前一样是17个.m文件挨个点运行，里面的拼音也改成了英文，只能做到这了，第一次写MD文件，不太熟练，抱歉。