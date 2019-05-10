### Ruby
Estudo de características do ecossistemas ruby.

### Estrutura de diretórios
  
 - Nome do livro 
    - Capítulo
        - Código desenvolvido a partir do conteúdo estudado
  
  Grande parte do código desenvoldor há notas do autor.
  
  ### [Rvm](https://rvm.io/)
  Instalação
  
  ```shell
    cd ~
    \curl -sSL https://get.rvm.io | bash
    source .profile
    rvm install 2.5.x
    gem install bundle
    gem install pry
    
  ```
  
### Via [Asdf](https://github.com/asdf-vm/asdf) 
  Alternativa ao RVM!
  
#### 
  ```shell
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.1
  ```
 
####  Bash 

```bash
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc
```

####  ZSH
```shell
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.zshrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.zshrc
```

```shell
  asdf plugin-add ruby
  asdf install ruby 2.5.x
  asdf global ruby 2.5.x
```
