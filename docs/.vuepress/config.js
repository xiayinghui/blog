 const sidebar = require("./utils/getSidebarData")

 module.exports = {
      title: 'Hello VuePress',
      description: 'Just playing around',
      themeConfig: {
         docsDir: 'docs', // .md文件放在了docs目录下
        editLinks: true, // 启用编辑链接
        editLinkText: '编辑',
        logo: '/img/home.jpg',
        sidebarDepth:2,
         nav: [
            { text: '主页', link: '/' },
            {text: '杂文',
                items: [
                    { 
                        text: '基础',
                        items:[
                            {text:'vue3',link:'/pages/1aff4e/'},
                            {text:'产品',link:'/pages/需求文档/'}
                        ]
                    }
                ]
            },
            { text: 'External', link: 'https://baidu.com', target:'_blank_', rel:'' }
        ],
         sidebar:sidebar
      }
    }
