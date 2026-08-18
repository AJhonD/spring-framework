#!/bin/bash
# Post-build script: create root index.html that redirects to the first page
cat > build/site/index.html << 'EOF'
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <meta http-equiv="refresh" content="0; url=/framework/overview.html">
  <title>Spring Framework 中文文档</title>
</head>
<body>
  <p>正在跳转到 <a href="/framework/overview.html">Spring Framework 中文文档概览</a>...</p>
</body>
EOF
echo "Created build/site/index.html (redirect to /framework/overview.html)"