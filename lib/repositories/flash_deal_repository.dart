import 'package:obroomart/app_config.dart';
import 'package:http/http.dart' as http;
import 'package:obroomart/data_model/flash_deal_response.dart';
import 'package:obroomart/helpers/shared_value_helper.dart';

class FlashDealRepository {
  Future<FlashDealResponse> getFlashDeals() async {

    Uri url = Uri.parse("${AppConfig.BASE_URL}/flash-deals");
    final response =
        await http.get(url,headers: {
          "App-Language": app_language.$,
        });
    return flashDealResponseFromJson(response.body);
  }
}
