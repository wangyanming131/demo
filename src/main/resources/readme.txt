
1.devtools热部署

<!--注：
（1） devtools可以实现页面热部署（即页面修改后会立即生效，这个可以直接在application.properties文件中配置spring.thymeleaf.cache=false来实现），
实现类文件热部署（类文件修改后不会立即生效），实现对属性文件的热部署。
即devtools会监听classpath下的文件变动，并且会立即重启应用（发生在保存时机），注意：因为其采用的虚拟机机制，该项重启是很快的
（2）配置了true后在修改java文件后也就支持了热启动，不过这种方式是属于项目重启（速度比较快的项目重启），会清空session中的值，
也就是如果有用户登陆的话，项目重启后需要重新登陆。

默认情况下，/META-INF/maven，/META-INF/resources，/resources，/static，/templates，/public这些文件夹下的文件修改不会使应用重启，
但是会重新加载（devtools内嵌了一个LiveReload server，当资源发生改变时，浏览器刷新）。
-->


#IDEA中配置
#当我们修改了类文件后，idea不会自动编译，得修改idea设置。
#（1）File-Settings-Compiler-Build Project automatically
#（2）ctrl + shift + alt + / ,选择Registry,勾上 Compiler autoMake allow when app running

 测试
修改类–>保存：应用会重启
修改配置文件–>保存：应用会重启
修改页面–>保存：应用不会重启，但会重新加载，页面会刷新