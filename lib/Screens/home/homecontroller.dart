

import 'package:crudperform/core/base/base_controller.dart';
import 'package:crudperform/notification/notification.dart';

class HomeController extends BaseController{
  NotificationServices notificationServices = NotificationServices();
}


@override
void initState()
{
  notificationServices.messaging
}

@override
void dispose()
{

}