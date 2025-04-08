/// Represents all possible field options for the Place Details API.
/// Developers can pick the fields they need according to the SKU they want to trigger.
enum FieldMaskOption {
  // Place Details Essentials SKU
  addressComponents,
  addressDescriptor, // experimental outside India
  adrFormatAddress,
  formattedAddress,
  location,
  plusCode,
  postalAddress,
  shortFormattedAddress,
  types,
  viewport,

  // Place Details Pro SKU
  accessibilityOptions,
  businessStatus,
  containingPlaces,
  displayName,
  googleMapsLinks, // pre-GA Preview
  googleMapsUri,
  iconBackgroundColor,
  iconMaskBaseUri,
  primaryType,
  primaryTypeDisplayName,
  pureServiceAreaBusiness,
  subDestinations,
  utcOffsetMinutes,

  // Place Details Enterprise SKU
  currentOpeningHours,
  currentSecondaryOpeningHours,
  internationalPhoneNumber,
  nationalPhoneNumber,
  priceLevel,
  priceRange,
  rating,
  regularOpeningHours,
  regularSecondaryOpeningHours,
  userRatingCount,
  websiteUri,

  // Place Details Enterprise + Atmosphere SKU
  allowsDogs,
  curbsidePickup,
  delivery,
  dineIn,
  editorialSummary,
  evChargeOptions,
  fuelOptions,
  goodForChildren,
  goodForGroups,
  goodForWatchingSports,
  liveMusic,
  menuForChildren,
  parkingOptions,
  paymentOptions,
  outdoorSeating,
  reservable,
  restroom,
  reviews,
  routingSummaries,
  servesBeer,
  servesBreakfast,
  servesBrunch,
  servesCocktails,
  servesCoffee,
  servesDessert,
  servesDinner,
  servesLunch,
  servesVegetarianFood,
  servesWine,
  takeout,
}

/// Extension to convert enum value into the string accepted by the API.
/// Here we simply return the enum name which matches the API's field string.
extension FieldMaskOptionExtension on FieldMaskOption {
  String get value {
    // This returns the last part of the enum string, e.g. "addressComponents" from "FieldMaskOption.addressComponents".
    return toString().split('.').last;
  }
}

/// Helper to build the comma-separated field mask string from a list of enum options.
String buildFieldMask(List<FieldMaskOption> options) {
  return options.map((option) => option.value).join(",");
}
