rm -rf template.md
touch template.md

echo '---' > template.md
echo 'title: ' >> template.md
echo "date: $(date +%Y-%m-%d\T%H:%M:%S\+08:00)" >> template.md
echo "lastmod: $(date +%Y-%m-%d\T%H:%M:%S\+08:00)" >> template.md
echo 'draft: true                       # 是否是草稿' >> template.md
echo 'tags:                              # 标签['','']' >> template.md
echo 'categories:                        # 分类 ['','']' >> template.md
echo 'author: "real_ge"                  # 作者' >> template.md
echo '---' >> template.md