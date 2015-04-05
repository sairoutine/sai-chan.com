function MIKUCtrl($scope) {
    $scope.talks = [
    {text:'・・・・・・・・・・', who:"miku"}
    ];
    $scope.addTalk = function() {
        // トークの追加
        if(!$scope.chat){
            return;
        }
        $scope.talks.push({text:$scope.chat, who:"you"});

        if($scope.chat == 'つらい' || $scope.chat == '辛い'){
            $scope.talks.push({text:'さいさん、元気を出してください。さいさんにもきっと生きる価値はあると思いますよ', who:"miku"});
        } else {
            $scope.talks.push({text:'・・・・・・・・・・', who:'miku'});
        }

        $scope.chat = '';
    };
}

