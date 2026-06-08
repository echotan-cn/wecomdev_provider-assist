#!/bin/bash
# Vercel build script: 确保 knowledge 目录被正确拉取
# 如果 knowledge/ 为空（Vercel 没自动拉到），则手动 clone
# 知识库是 Public 仓，无需 token；如果配了 GITHUB_TOKEN 会优先用以提升速率配额

set -e

KNOWLEDGE_REPO="github.com/echotan-cn/presale-knowledge-base.git"

if [ ! -f "knowledge/pool/demand_pool.json" ]; then
    echo "Knowledge not populated, cloning..."
    rm -rf knowledge
    if [ -n "${GITHUB_TOKEN}" ]; then
        echo "Using GITHUB_TOKEN for clone"
        git clone --depth 1 "https://${GITHUB_TOKEN}@${KNOWLEDGE_REPO}" knowledge
    else
        echo "No GITHUB_TOKEN, cloning anonymously (public repo)"
        git clone --depth 1 "https://${KNOWLEDGE_REPO}" knowledge
    fi
    echo "Knowledge base cloned successfully"
else
    echo "Knowledge already populated"
fi

echo "Knowledge files: $(find knowledge -name '*.json' | wc -l)"
