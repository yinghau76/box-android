cd /tmp
wget http://services.gradle.org/distributions/gradle-1.7-bin.zip
unzip gradle-1.7-bin.zip
mv gradle-1.7 $HOME

export GRADLE_HOME=$HOME/gradle-1.7
export PATH=$PATH:$GRADLE_HOME/bin

echo "export GRADLE_HOME=\"${HOME}/gradle-1.7\"" | sudo tee -a $profile
echo 'export PATH="${PATH}:${GRADLE_HOME}/bin"' | sudo tee -a $profile
