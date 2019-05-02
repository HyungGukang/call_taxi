# 화면 분할을 지원하는 새로운 패키지 설치
install.packages("gridExtra")
library(gridExtra)





# 기본적으로 ggplot2 패키지는 설치가 되었다고 가정함
library(ggplot2)





# ggplot2 패키지 안에 있는 diamonds 데이터를 이용하여 막대그래프를 2개 작성한다.
p1 = ggplot(diamonds, aes(x=cut, y=price)) + geom_bar()
p2 = ggplot(diamonds, aes(x=color, y=price)) + geom_bar()





# gridExtra 패키지 안에 있는 grid.arrage() 함수를 이용하여 화면 분할
# 1행 2열로 화면 분할함
grid.arrange(p1, p2, ncol=2)

