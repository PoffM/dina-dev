# Add VS Code extensions:
code --install-extension vscjava.vscode-java-pack
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension ms-azuretools.vscode-docker
code --install-extension gabrielbb.vscode-lombok
code --install-extension esbenp.prettier-vscode
code --install-extension ms-vscode.vscode-typescript-tslint-plugin

# Get the Dina repos:
mkdir repos
git clone https://github.com/AAFC-BICoE/dina-ui.git ./repos/dina-ui
git clone https://github.com/AAFC-BICoE/object-store-api.git ./repos/objectstore-api

# Install dependencies:
mvn -f ./repos/objectstore-api/ -Dmaven.test.skip=true clean install
yarn --cwd ./repos/dina-ui
