
/// View抽象类
abstract class IView<T> {
  setPresenter(T presenter);
}

/// Presenter 抽象类
abstract class IPresenter{
  init();
}