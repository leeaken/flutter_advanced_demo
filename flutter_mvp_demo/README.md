# flutter_mvp_demo


# 一、介绍<br>
## 1、模型（Model）<br>
模型表示业务逻辑和实体模型，提供数据给Presenter。<br>
## 2、视图（View）<br>
视图是用户看到并与之交互的界面。视图向用户显示相关的数据，并能接受用户的输入数据，但它不进行任何实际的业务处理。<br>
## 3、表现层（Presenter）<br>
应用程序主要的程序逻辑在Presenter内实现，而且Presenter将Model和View完全分离，所有的交互都发生在Presenter内部，具体业务逻辑全部交由Presenter接口实现类中进行处理。<br>
# 二、MVP的优点<br>
## 1、模型与视图完全分离，我们可以修改视图而不影响模型。<br>
## 2、可以更加高效地使用模型，因为所有的交互都发生在Presenter内部。<br>
## 3、我们可以将一个视图用于多个视图，而不需要改变Presenter内部的逻辑。这个特性非常有用，因为视图的变化总是比模型的变化要频繁。<br>
## 4、把程序逻辑放在Presenter中，我们就可以脱离用户接口来测试这些逻辑了。（单元测试）<br>
# 三、MVP的缺点<br>
由于对View的操作放在了Presenter中，所以View和Presenter的交互会过于频繁。如果Presenter过多地操作视图，往往会使得它与特定的 View联系过于紧密。一旦视图需要改变，那么Presenter也需要改变。<br>
<br>

## Getting Started

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).
