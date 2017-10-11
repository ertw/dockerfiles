FROM alpine:3.6
RUN apk update
RUN apk add vim curl git zsh wget openssh
RUN adduser ertw ertw -Ds /bin/zsh
WORKDIR /home/ertw/.vim/autoload/
ADD https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim plug.vim
WORKDIR /home/ertw
ADD https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh install.sh
ADD https://raw.githubusercontent.com/ertw/dotfiles/master/init.vim .vimrc
RUN chown -R ertw ./
USER ertw
RUN vim +PlugInstall +qall 
RUN chmod +x install.sh
RUN ./install.sh ; exit 0
RUN rm .zshrc \
	&& mkdir /home/ertw/.ssh
RUN git clone https://github.com/ertw/dotfiles.git
RUN /home/ertw/dotfiles/create_dotfile_links.sh
