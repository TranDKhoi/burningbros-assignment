import 'package:bb_assignment/configs/styles/app_color.dart';
import 'package:bb_assignment/configs/styles/app_size.dart';
import 'package:bb_assignment/configs/styles/app_style.dart';
import 'package:bb_assignment/features/home/data/responses/product_response.dart';
import 'package:bb_assignment/features/home/presentation/widgets/fav_button.dart';
import 'package:bb_assignment/shared/presentation/widgets/gap.dart';
import 'package:bb_assignment/shared/presentation/widgets/m_box.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem(this.product, {super.key});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final String prodPrice = "\$${product.price}";
    return MBox(
      padding: const EdgeInsets.all(AppSize.p6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedNetworkImage(
            imageUrl: product.thumbnail,
            width: AppSize.s100,
            height: AppSize.s100,
            errorWidget: (context, url, error) => const Gap(AppSize.s0),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title,
                  style: AppStyle.boldStyle(
                    color: AppColor.blue,
                  ),
                ),
                Text(
                  product.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyle.regularStyle(
                    color: AppColor.adaptiveHintColor(context),
                  ),
                ),
                const SizedBox(height: AppSize.s10),
                Text(
                  prodPrice,
                  style: AppStyle.regularStyle(
                    color: AppColor.adaptiveTextColor(context),
                  ),
                ),
              ],
            ),
          ),
          FavButton(id: product.id),
        ],
      ),
    );
  }
}
