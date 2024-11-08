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
      width: 393,
      height: 451,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        color: AppColors.secondary,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 17,
              left: 150,
            ),
            child: Row(
              children: [
                Text(
                  context.getLocalization()?.filter??'',
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: AppColors.bottomText,
                  ),
                ),
                const SizedBox(
                  width: 95,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.cancel_outlined,
                    weight: 19,
                    color: AppColors.signText1,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: AppColors.bottomTextfield,
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 17),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    ...[
                      for (int i = 0; i < _filterList.length; i++)
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (selectedFilter.filterEnum !=
                                    _filterList[i].filterEnum) {
                                  selectedFilter = _filterList[i];
                                  setState(() {});
                                }
                              },
                              child: SizedBox(
                                height: 38,
                                width: 130,
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
                            ),
                            const Divider(
                              color: AppColors.bottomTextfield,
                              thickness: 1,
                              indent: 5,
                              endIndent: 5,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        )
                    ],
                  ],
                ),
              ),
              Flexible(
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
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 17, right: 16),
                child: SizedBox(
                  width: 145,
                  height: 50,
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
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: AppColors.filterText,
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: SizedBox(
                  width: 145,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      context.getLocalization()?.showDoctors??'',
                      style: GoogleFonts.poppins(
                        fontSize: 10,
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
