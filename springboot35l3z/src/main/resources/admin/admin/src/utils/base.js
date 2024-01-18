const base = {
    get() {
                return {
            url : "http://localhost:8080/springboot35l3z/",
            name: "springboot35l3z",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springboot35l3z/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "校园周边美食探索及分享平台"
        } 
    }
}
export default base
