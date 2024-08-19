library dt_pagination;

import 'package:flutter/material.dart';

class WebPagination extends StatefulWidget {
  final int initPage; // Initial page number
  final int pageSize; // Number of items per page
  final int total; // Total number of pages
  final double itemSize; // Size of page number item
  final double textFont; // Font size of page number item text
  final Color selectTextColor; // Text color of selected page number item
  final Color unselectTextColor; // Text color of unselected page number item
  final Color selectItemColor; // Background color of selected page number item
  final Color unselectItemColor; // Background color of unselected page number item
  final Color arrowItemColor; // Background color of pagination arrow items
  final Color arrowItemTextColor; // Text color of pagination arrow items
  final bool curPageAlwaysCenter; // Should the current page number be centered
  final Function(int)? pageChanged; // Page change callback

  const WebPagination({
    Key? key,
    this.initPage = 1,
    this.pageSize = 10,
    required this.total,
    this.itemSize = 30,
    this.textFont = 14,
    this.selectTextColor = Colors.white,
    this.unselectTextColor = Colors.black,
    this.selectItemColor = Colors.redAccent,
    this.unselectItemColor = Colors.white,
    this.arrowItemColor = Colors.redAccent,
    this.arrowItemTextColor = Colors.white,
    this.curPageAlwaysCenter = true,
    this.pageChanged,
  }) : super(key: key);

  @override
  State<WebPagination> createState() => _WebPaginationState();
}

class _WebPaginationState extends State<WebPagination> {
  int curPage = 1;
  List<int> paginationList = []; // List of page number items

  @override
  void initState() {
    super.initState();
    curPage = widget.initPage;
    resetPagination(curPage);
  }

  // Refresh the list of page number items
  void resetPagination(int curIndex) {
    if (curIndex <= 0) curIndex = 1;
    if (curIndex > widget.total) curIndex = widget.total;
    curPage = curIndex; // Current page

    // Callback
    if (widget.pageChanged != null) {
      widget.pageChanged!(curPage);
    }

    paginationList.clear();

    if (widget.curPageAlwaysCenter) {
      // Keep the selected page number centered
      int leftLackNum = 0; // Number of items missing on the left side of curPage
      int rightLackNum = 0; // Number of items missing on the right side of curPage

      // Number of items needed on the left side, including curPage (+1)
      int leftCount = (widget.pageSize / 2).floor() + 1;

      if (curPage < leftCount) {
        // If curPage is less than leftCount, not enough buttons on the left side, record the number of missing items
        leftLackNum = leftCount - curPage;
      }

      // Number of items needed on the right side, pageSize - leftCount
      int rightCount = widget.pageSize - leftCount;
      if ((widget.total - curPage) < rightCount) {
        // If not enough buttons on the right side, record the number of missing items
        rightLackNum = rightCount - (widget.total - curPage);
      }

      // Add items to the left side list, count is rightLackNum + leftCount
      for (int i = rightLackNum + leftCount - 1; i >= 0; i--) {
        if (curPage - i > 0) {
          paginationList.add(curPage - i);
        }
      }

      // Add items to the right side list, count is leftLackNum + rightCount
      for (int i = 1; i <= leftLackNum + rightCount; i++) {
        if (curPage + i <= widget.total) {
          paginationList.add(curPage + i);
        }
      }

      debugPrint('Number of missing items on the left: $leftLackNum, Number of missing items on the right: $rightLackNum');
    } else {
      int startIndex = curPage % widget.pageSize == 0
          ? curPage - widget.pageSize
          : (curPage / widget.pageSize).floor() * widget.pageSize;
      for (int i = 1; i <= widget.pageSize; i++) {
        if (startIndex + i <= widget.total) {
          paginationList.add(startIndex + i);
        }
      }
    }

    debugPrint(
        'curPage: $curPage\npageList: ${paginationList.toString()}\npageSize: ${paginationList.length}');

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // First page
        GestureDetector(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 2),
            width: widget.itemSize,
            height: widget.itemSize,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: widget.arrowItemColor,
            ),
            alignment: Alignment.center,
            child: Icon(
              Icons.first_page,
              color: widget.arrowItemTextColor,
            ),
          ),
          onTap: () {
            resetPagination(1);
          },
        ),
        // Previous page
        GestureDetector(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 2),
            width: widget.itemSize,
            height: widget.itemSize,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: widget.arrowItemColor,
            ),
            alignment: Alignment.center,
            child: Icon(
              Icons.chevron_left,
              color: widget.arrowItemTextColor,
            ),
          ),
          onTap: () {
            resetPagination(curPage - 1);
          },
        ),
        // Page number list
        ...List.generate(paginationList.length, (index) {
          return GestureDetector(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 2),
              width: widget.itemSize,
              height: widget.itemSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: curPage == paginationList[index]
                    ? widget.selectItemColor
                    : widget.unselectItemColor,
              ),
              alignment: Alignment.center,
              child: Text(
                paginationList[index].toString(),
                style: TextStyle(
                  fontSize: widget.textFont,
                  color: curPage == paginationList[index]
                      ? widget.selectTextColor
                      : widget.unselectTextColor,
                ),
              ),
            ),
            onTap: () {
              resetPagination(paginationList[index]);
            },
          );
        }),
        // Next page
        GestureDetector(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 2),
            width: widget.itemSize,
            height: widget.itemSize,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: widget.arrowItemColor,
            ),
            alignment: Alignment.center,
            child: Icon(
              Icons.chevron_right,
              color: widget.arrowItemTextColor,
            ),
          ),
          onTap: () {
            resetPagination(curPage + 1);
          },
        ),
        // Last page
        GestureDetector(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 2),
            width: widget.itemSize,
            height: widget.itemSize,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: widget.arrowItemColor,
            ),
            alignment: Alignment.center,
            child: Icon(
              Icons.last_page,
              color: widget.arrowItemTextColor,
            ),
          ),
          onTap: () {
            resetPagination(widget.total);
          },
        ),
      ],
    );
  }
}
