
class FindFoodModel
{
  String _title;
  String _subTitle;
  String _ImagePath;

  FindFoodModel(this._title, this._subTitle, this._ImagePath);

  String get ImagePath => _ImagePath;

  String get subTitle => _subTitle;

  String get title => _title;
}