# wecomdev_provider-assist

> **项目接管说明**：本仓库自 [Serenasnchen/provider-assist](https://github.com/Serenasnchen/provider-assist) 接管而来，由 [@echotan-cn](https://github.com/echotan-cn) 继续维护与迭代。完整 commit 历史已保留。
>
> 接管时间：2026-06-08

## 项目简介

**服务商协助 Agent** —— 智能提问清单 + 需求结构化转化。

为服务商设计的智能售前辅助系统，通过两步式工作流（智能提问清单 → 结构化需求转化）解决客户面谈场景下的痛点：

1. **Step 1 智能提问清单**：服务商录入客户行业、业务、痛点 → AI 结合知识库生成可带去面谈的高质量提问清单
2. **Step 2 结构化需求转化**：上传会议转写 → AI 输出需求分析报告 + 智能表字段设计 + 一键创建企微智能表 Demo

详见 [PROJECT_DOC.md](./PROJECT_DOC.md)。

## 关联仓库

| 仓库 | 用途 |
|------|------|
| [echotan-cn/presale-knowledge-base](https://github.com/echotan-cn/presale-knowledge-base) | 共享知识库（行业 / 案例 / 字段模板 / 需求池） |
| [echotan-cn/wecomdev_presale-agent](https://github.com/echotan-cn/wecomdev_presale-agent) | 客户售前 Agent（早期版本，保留运行） |
| **echotan-cn/wecomdev_provider-assist** | 当前主力迭代仓库 |

## 部署

- 部署平台：Vercel
- AI 模型：DeepSeek Chat
- 企微集成：MCP API

构建时 `build.sh` 会从 [echotan-cn/presale-knowledge-base](https://github.com/echotan-cn/presale-knowledge-base) 拉取最新知识库。

## License

继承自原项目，未指定开源许可证（默认私有版权）。
