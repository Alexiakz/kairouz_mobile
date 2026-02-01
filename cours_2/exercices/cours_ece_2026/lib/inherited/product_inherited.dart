import 'package:flutter/material.dart';
import '../model/product.dart';

class ProductInherited extends InheritedWidget {
  final Product product;

  const ProductInherited({
    super.key,
    required this.product,
    required super.child,
  });

  static ProductInherited of(BuildContext context) {
    final ProductInherited? result =
        context.dependOnInheritedWidgetOfExactType<ProductInherited>();
    assert(result != null, 'Aucun ProductInherited trouvé dans le contexte');
    return result!;
  }

  @override
  bool updateShouldNotify(ProductInherited oldWidget) {
    return product != oldWidget.product;
  }
}