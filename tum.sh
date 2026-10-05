#！/usr/bin/env bash

# tum 全自动配置脚本

在…… 期间 正确; 做
选择=$(鞭尾--标题"tum"--menu"请选择操作："15 60 4 \
        "1" "一键安装基础环境(Git，Zsh，Curl等)" \
            "2" "一键配置终端美化(Zsh+Oh My Zsh)" \
                "3" "退出"3>&1 1>&2 2>&3)

如果[-z"$CHOICE" ]; 然后
打破
Fi

案例$CHOICE在……内
                                            1)
清楚的
回声"=== 正在更新软件源 ==="
包装更新-y&&pkg升级-y

回声"=== 正在安装基础环境 ==="
包装安装-ygit卷曲wget zsh micro

回声"✅ 基础环境安装完成！按回车返回主菜单..."
读-r
                                                                                                                                                                    ;;
                                                                                                                                                                            2)
清楚的
回声"===正在配置终端美化(Zsh+Oh My Zsh)==="

                                                                                                                                                                                                                            #1.安装Zsh
如果！命令-vzsh&>/dev/null；然后
回声"正在安装Zsh..."
包装安装-yzsh
Fi

                                                                                                                                                                                                                                                                                                            #2.安装哦我的Zsh
如果[！-d"$HOME/.oh-my-zsh" ]; 然后
回声"正在克隆哦我的嘘...”
git克隆https://gitee.com/mirrors/oh-my-zsh.git~/.oh-my-zsh
CP~/.oh-my-zsh/templates/zshrc.zsh-template~/.zshrc
Fi

                                                                                                                                                                                                                                                                                                                                                                                                            # 3. 安装增强插件
回声"正在安装Zsh增强插件..."
如果[！-d"$HOME/.oh-my-zsh/custom/plugins/zsh-autosgestions" ]; 然后
吉特克隆https://gitee.com/mirrors/zsh-autosuggestions.git$HOME/.oh-my-zsh/自定义/插件/zsh-自动建议
Fi
如果[！-d"$HOME/.oh-my-zsh/custom/plugins/zsh-语法-突出显示" ]; 然后
git克隆https://gitee.com/mirrors/zsh-语法-highlighting.git$HOME/.oh-my-zsh/custom/plugins/zsh-语法-突出显示
Fi

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                # 4. 修改配置文件 (核心：自动获取当前用户名，彻底解决乱码！)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                回声"正在优化Zsh配置..."
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                SED-I's/ZSH_THEME="罗比鲁塞尔"/ZSH_THEME="agnoster"/'~/.zshrc
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                SED-I's/plugins=(git)/plugins=(git zsh-自动建议zsh-语法-突出显示)/'~/.zshrc
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                回声"导出default_USER=\"$(whoami)\"">>~/.zshrc

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                回声"✅ 终端美化配置完成！"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                回声"请输入zsh体验新界面，或重启Termux自动进入。"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                回声"按回车键返回主菜单..."
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                读-r
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ;;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                3)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                打破
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ;;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                *)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                回声"无效选项"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ;;
ESAC
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            已完成
