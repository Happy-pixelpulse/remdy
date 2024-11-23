import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/extensions/localization_extension.dart';
import '../../common_widgets/doctor_filter_list.dart';
import '../../common_widgets/filter_list_manager.dart';
import '../../utils/colors.dart';
import '../doctor_list.dart';

class FilterWidget extends StatefulWidget {
  const FilterWidget({super.key});

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  FilterListManager selectedFilter = const FilterListManager(
      filterEnum: FilterEnum.distance, filterName: 'Distance');
  static const _filterList = [
    FilterListManager(filterEnum: FilterEnum.distance, filterName: 'Distance'),
    FilterListManager(
        filterEnum: FilterEnum.availability, filterName: 'Availability'),
    FilterListManager(filterEnum: FilterEnum.gender, filterName: 'Gender'),
    FilterListManager(
        filterEnum: FilterEnum.experience, filterName: 'Experience'),
  ];
  final List<DoctorFilterListData> _distanceDataList = [
    const DoctorFilterListData(id: 1, name: "Less than 2 kms"),
    const DoctorFilterListData(id: 2, name: "Less than 15 kms"),
    const DoctorFilterListData(id: 3, name: "Less than 10 kms"),
    const DoctorFilterListData(id: 4, name: "Entire city"),
  ];
  final List<DoctorFilterListData> _availabilityDataList = [
    const DoctorFilterListData(id: 1, name: "Available"),
    const DoctorFilterListData(id: 2, name: "Full"),
  ];
  final List<DoctorFilterListData> _genderDataList = [
    const DoctorFilterListData(id: 1, name: "Male"),
    const DoctorFilterListData(id: 2, name: "Female"),
  ];
  final List<DoctorFilterListData> _experienceDataList = [
    const DoctorFilterListData(id: 1, name: "High Expression"),
    const DoctorFilterListData(id: 2, name: "Less than 5 kms"),
    const DoctorFilterListData(id: 3, name: "Less than 15 kms"),
  ];

  DoctorFilterListData? _selectedFilter;

  List<DoctorFilterListData> _getFilterList(FilterEnum filterEnum) {
    switch (filterEnum) {
      case FilterEnum.distance:
        return _distanceDataList;
      case FilterEnum.availability:
        return _availabilityDataList;
      case FilterEnum.gender:
        return _genderDataList;
      case FilterEnum.experience:
        return _experienceDataList;
      default:
        return _distanceDataList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/2.1,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        color: AppColors.backgroundColor,
      ),
      child: Column(
        children: [
          Card(
            shape:const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.zero,
                bottomRight: Radius.zero
              )
            ),
            margin: const EdgeInsets.only(top: 18),
            elevation: 4,
            color: AppColors.backgroundColor,
            child: Row(
              children: [
                Expanded(
                  child: Align(
                    child: Text(
                      context.getLocalization()?.filter??'',
                      style: GoogleFonts.poppins(
                        fontSize: 23,
                        fontWeight: FontWeight.w400,
                        color: AppColors.bottomText,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 18),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.cancel_outlined,
                      size: 24,
                      color: AppColors.signText1,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16
                ),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 4,
                  color: AppColors.backgroundColor,
                  child: Column(
                    children: [
                      const SizedBox(height: 12),
                      ...[
                        for (int i = 0; i < _filterList.length; i++)
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  if (selectedFilter.filterEnum !=
                                      _filterList[i].filterEnum) {
                                    selectedFilter = _filterList[i];
                                    setState(() {});
                                  }
                                },
                                child: Text(
                                  _filterList[i].filterName,
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: _isFilterSelected(_filterList[i])
                                        ? AppColors.primary
                                        : AppColors.lightBlack,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 21,
                              ),
                            ],
                          )
                      ],
                    ],
                  ),
                ),
              ),
              Flexible(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: const EdgeInsets.only(left: 16),
                  elevation: 4,
                  color: AppColors.backgroundColor,
                  child: Column(
                    children: [
                      ...[
                        for (int i = 0;
                            i < _getFilterList(selectedFilter.filterEnum).length;
                            i++)
                          RadioListTile<DoctorFilterListData?>(
                            activeColor: AppColors.primary,
                              title: Text(
                                _getFilterList(selectedFilter.filterEnum)[i].name,
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: _getFilterList(selectedFilter.filterEnum)[i]==_selectedFilter
                                      ? AppColors.primary
                                      : AppColors.lightBlack,
                                ),
                                maxLines: 1,
                              ),
                              controlAffinity: ListTileControlAffinity.trailing,
                              value: _getFilterList(selectedFilter.filterEnum)[i],
                              groupValue:
                              _selectedFilter,
                              onChanged: (DoctorFilterListData? value) {
                                if (value != null) {
                                  _selectedFilter = value;
                                  setState(() {});
                                }
                              })
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 17,),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.secondary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    context.getLocalization()?.clearFilters??'',
                    style: GoogleFonts.poppins(
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                      color: AppColors.filterText,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      context.getLocalization()?.showDoctors??'',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: AppColors.secondary,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  bool _isFilterSelected(FilterListManager filterListManager) {
    return selectedFilter.filterEnum == filterListManager.filterEnum;
  }
}
