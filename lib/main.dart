import 'package:crypto_app/root.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(
      const ProviderScope(
        child: CryptoApp(),
      ),
    );


// https://rest.coinapi.io/v1/exchanges

///https://rest.coinapi.io/v1/exchangerate/BTC/EUR?apikey=EEC8C305-A172-4709-8EE0-9F8239BF7CE7

/// All time values are in UTC time  zone.
/// https://rest.coinapi.io/v1/exchanges/apikey={API-KEY} 
///  /v1/exchangerate/{asset_id_base}/{asset_id_quote}?time={time}
/// GET /v1/exchangerate/{asset_id_base}?invert={invert}
/// hostname/_apibaseURL: "rest.coinapi.io"
/// _apipath: /v1/
/// path: "/v1/exchanges",
/// "headers": {'X-CoinAPI-Key': '73034021-THIS-IS-SAMPLE-KEY'}
/// '303A864C-9DC141D1-8AFD-E33DFC46981D'


/// API ERRORS 
/// 400	Bad Request -- There is something wrong with your request
/// 401	Unauthorized -- Your API key is wrong
/// 403	Forbidden -- Your API key doesnt't have enough privileges to access this resource
/// 429	Too many requests -- You have exceeded your API key rate limits
/// 550	No data -- You requested specific single item that we don't have at this moment.
/// 
/// 
/// JSON SAMPLE
/// 
/// {
/// "exchange_id": "OKCOIN_CNY",
/// "website": "https://www.okcoin.cn/",
/// "name": "OKCoin CNY",
/// "data_start": "2013-06-12",
/// "data_end": "2018-03-09",
/// "data_quote_start": "2015-02-15T12:53:50.3430000Z",
/// "data_quote_end": "2018-03-09T23:34:52.5800000Z",
/// "data_orderbook_start": "2015-02-15T12:53:50.3430000Z",
/// "data_orderbook_end": "2018-03-09T23:34:52.5800000Z",
/// "data_trade_start": "2013-06-12T14:24:24.0000000Z",
/// "data_trade_end": "2017-11-01T16:30:39.7077259Z",
/// "data_symbols_count": 2,
/// "volume_1hrs_usd": 0.0,
/// "volume_1day_usd": 0.0,
/// "volume_1mth_usd": 0.0
/// },
/// 
/// exchange_id
/// 
/// {
    // "exchange_id": "CHAINCE",
    // "url": "https://s3.eu-central-1.amazonaws.com/bbxt-static-icons/type-id/png_16/204e55dd8dab4a0d823c21f04be6be4b.png"
  // },


// "time": "2022-04-01T14:19:53.6000000Z",
//   "asset_id_base": "BTC",
//   "asset_id_quote": "EUR",
//   "rate": 41329.685514746618520531869733,
//   "src_side_base": [
//     {
//       "time": "2022-04-01T14:19:53.6000000Z",
//       "asset": "USD",
//       "rate": 45626.228123036763633721684626,
//       "volume": 1510394010.7698557239500000000
//     },
//     {
//       "time": "2022-04-01T14:19:53.6000000Z",
//       "asset": "GALA",
//       "rate": 45602.180429626773695277211597,
//       "volume": 15966023.349569339525693545388
//     }
//   ],
//   "src_side_quote": [
//     {
//       "time": "2022-04-01T14:19:53.6000000Z",
//       "asset": "BTC",
//       "rate": 1.1039783534922232470488475511,
//       "volume": 312416546.66771108419539411947
//     },
//     {
//       "time": "2022-04-01T14:19:53.6000000Z",
//       "asset": "ETH",
//       "rate": 1.1039509247785150009030353920,
//       "volume": 215983223.56682020615589243993
//     },