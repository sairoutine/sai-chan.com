function FMKCtrl($scope,$http) {
    $scope.talks = [
    {text:'あの・・・わからないことは何でも聞いてくださいね・・・？', who:"fumika"}
    ];
    $scope.addTalk = function() {
        // トークの追加
        if(!$scope.chat){
            return;
        }
        $scope.talks.push({text:$scope.chat, who:"you"});

        //パラメータの作成
        var parameter = {};
        parameter.keyword = $scope.chat;
        parameter.output = 'json';
        parameter.callback = 'JSON_CALLBACK';


        //返答の取得
        $http.jsonp('http://wikipedia.simpleapi.net/api', {params:parameter}).
        success(function(data, status, headers, config) {
            if(data[0].body){
                $scope.talks.push({text:data[0].body.replace(/<br\/>/g,""), who:"fumika"});
            }
 
        }).
        error(function(data, status, headers, config) {
            $scope.talks.push({text:'ごめんなさい…‥そのキーワードは見つからなかったみたいね。', who:"fumika"});
        });
        $scope.chat = '';
    };
}

