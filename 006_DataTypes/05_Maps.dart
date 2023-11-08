void main() {
  var player01 = {
    'name': 'qwer',
    'age': 33,
    'lie': true,
    'dddd': 33.11,
  };

  Map<String, Object> player02 = {
    'name': 'qwer',
    'age': 33,
    'lie': true,
    'dddd': 33.11,
  };

  Map<int, bool> player03 = {
    1: true,
    2: false,
    3: true,
  };

  var player04 = {
    [1, 2, 3, 4]: true,
    'map01': player01,
    3: player02,
    true: player03,
  };
}
