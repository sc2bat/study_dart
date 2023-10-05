import 'package:http/http.dart' as http;

void main() async {
	final httpPackageUrl = Uri.https('dart.dev', '/f/packeages/http.json');
	final httpPackageInfo = await http.read(httpPackageUrl);
	print(httpPackageInfo);
}
