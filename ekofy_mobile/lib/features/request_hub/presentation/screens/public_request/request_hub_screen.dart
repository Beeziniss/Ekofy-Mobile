import 'dart:async';
import 'dart:developer';

import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:ekofy_mobile/features/request_hub/data/models/request_card_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/models/public_request.dart';
import '../../../data/models/request_status.dart';
import '../../widgets/empty_state.dart';
import '../../widgets/request_card.dart';
import 'create_request_screen.dart';
import 'request_detail_screen.dart';

class RequestHubScreen extends ConsumerStatefulWidget {
  const RequestHubScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RequestHubScreenState();
}

class _RequestHubScreenState extends ConsumerState<RequestHubScreen> {
  final _scrollController = ScrollController();
  final _searchCtrl = TextEditingController();

  List<PublicRequestItem> _visible = [];
  RequestStatus? _filter;
  _SortBy _sort = _SortBy.newest;
  int _page = 1;
  final int _pageSize = 6;
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    // Initial load is handled by provider
    _scrollController.addListener(_onScroll);
    _searchCtrl.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _scrollController.dispose();
    _searchCtrl.dispose();
    super.dispose();
  }

  Future<void> _load() async {
    await ref.read(requestProvider.notifier).fetchPublicRequests();
  }

  void _onSearchChanged() {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 250), () {
      _applyFilters(resetPage: true);
    });
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 100) {
      _loadMore();
    }
  }

  void _applyFilters({bool resetPage = false}) {
    if (resetPage) _page = 1;
    final q = _searchCtrl.text.trim().toLowerCase();
    final all = ref.read(requestProvider).publicRequestItems;
    Iterable<PublicRequestItem> list = all;
    if (_filter != null) {
      list = list.where((e) => e.status == _filter);
    }
    if (q.isNotEmpty) {
      list = list.where(
        (e) =>
            e.title.toLowerCase().contains(q) ||
            e.detailDescription.toLowerCase().contains(q),
      );
    }
    final sorted = list.toList()
      ..sort((a, b) {
        switch (_sort) {
          case _SortBy.newest:
            return b.createdAt.compareTo(a.createdAt);
          case _SortBy.oldest:
            return a.createdAt.compareTo(b.createdAt);
          case _SortBy.amountHigh:
            return b.amount.compareTo(a.amount);
          case _SortBy.amountLow:
            return a.amount.compareTo(b.amount);
        }
      });

    final end = (_page * _pageSize).clamp(0, sorted.length);
    setState(() {
      _visible = sorted.sublist(0, end);
    });
  }

  void _loadMore() {
    final q = _searchCtrl.text.trim().toLowerCase();
    final all = ref.read(requestProvider).publicRequestItems;
    Iterable<PublicRequestItem> list = all;
    log(all.toString());
    if (_filter != null) list = list.where((e) => e.status == _filter);
    if (q.isNotEmpty) {
      list = list.where(
        (e) =>
            e.title.toLowerCase().contains(q) ||
            e.detailDescription.toLowerCase().contains(q),
      );
    }
    final sorted = list.toList()
      ..sort((a, b) {
        switch (_sort) {
          case _SortBy.newest:
            return b.createdAt.compareTo(a.createdAt);
          case _SortBy.oldest:
            return a.createdAt.compareTo(b.createdAt);
          case _SortBy.amountHigh:
            return b.amount.compareTo(a.amount);
          case _SortBy.amountLow:
            return a.amount.compareTo(b.amount);
        }
      });
    final total = sorted.length;
    final nextEnd = ((_page + 1) * _pageSize).clamp(0, total);
    if (nextEnd > _visible.length) {
      setState(() {
        _page += 1;
        _visible = sorted.sublist(0, nextEnd);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(requestProvider, (previous, next) {
      if (previous?.publicRequestItems != next.publicRequestItems) {
        _applyFilters(resetPage: true);
      }
    });

    final state = ref.watch(requestProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Request Hub'),
        actions: [
          IconButton(
            tooltip: 'Help',
            onPressed: () => _showHelp(context),
            icon: const Icon(Icons.help_outline),
          ),
        ],
      ),
      floatingActionButton: Semantics(
        label: 'Create Request',
        button: true,
        child: FloatingActionButton(
          onPressed: () => _openCreate(context),
          child: const Icon(Icons.add),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: _load,
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            const SliverToBoxAdapter(child: SizedBox(height: 12)),
            SliverToBoxAdapter(child: _searchBar()),
            const SliverToBoxAdapter(child: SizedBox(height: 8)),
            // SliverToBoxAdapter(
            //   child: FilterChipsRow(
            //     selected: _filter,
            //     onSelected: (v) {
            //       _filter = v;
            //       _applyFilters(resetPage: true);
            //     },
            //   ),
            // ),
            SliverToBoxAdapter(child: _sortRow(context)),
            if (state.isLoading && _visible.isEmpty)
              const SliverFillRemaining(
                child: Center(child: CircularProgressIndicator()),
              )
            else if (_visible.isEmpty)
              SliverFillRemaining(
                hasScrollBody: false,
                child: EmptyState(
                  title: 'No requests found',
                  subtitle:
                      'Try adjusting filters or create your first request',
                  actionLabel: 'Create first request',
                  onAction: () => _openCreate(context),
                ),
              )
            else
              SliverList.builder(
                itemCount: _visible.length + 1,
                itemBuilder: (context, index) {
                  if (index == _visible.length) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 24),
                      child: Center(
                        child: Text('Pull to refresh • Scroll for more'),
                      ),
                    );
                  }
                  final item = _visible[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: RequestCard(
                      item: RequestCardModel.fromPublicRequest(item),
                      onTap: () => _openDetail(context, item),
                      onViewDetails: () => _openDetail(context, item),
                      onEdit: () =>
                          _placeholder(context, 'Edit not implemented'),
                      onCancel: () =>
                          _placeholder(context, 'Cancel not implemented'),
                    ),
                  );
                },
              ),
            const SliverToBoxAdapter(child: SizedBox(height: 80)),
          ],
        ),
      ),
    );
  }

  Widget _searchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Semantics(
        label: 'Search requests',
        textField: true,
        child: TextField(
          controller: _searchCtrl,
          decoration: InputDecoration(
            hintText: 'Search requests…',
            prefixIcon: const Icon(Icons.search),
            filled: true,
            fillColor: const Color(0xFF111111),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Color(0xFF2C2C2C)),
            ),
          ),
        ),
      ),
    );
  }

  Widget _sortRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
      child: Row(
        children: [
          Text(
            '${_visible.length} results',
            style: const TextStyle(color: Colors.white70),
          ),
          const Spacer(),
          Semantics(
            label: 'Sort requests',
            button: true,
            child: TextButton.icon(
              onPressed: () async {
                final chosen = await showMenu<_SortBy>(
                  context: context,
                  position: const RelativeRect.fromLTRB(1000, 80, 16, 0),
                  items: const [
                    PopupMenuItem(value: _SortBy.newest, child: Text('Newest')),
                    PopupMenuItem(value: _SortBy.oldest, child: Text('Oldest')),
                    PopupMenuItem(
                      value: _SortBy.amountHigh,
                      child: Text('Amount: High → Low'),
                    ),
                    PopupMenuItem(
                      value: _SortBy.amountLow,
                      child: Text('Amount: Low → High'),
                    ),
                  ],
                );
                if (chosen != null) {
                  setState(() => _sort = chosen);
                  _applyFilters(resetPage: true);
                }
              },
              icon: const Icon(Icons.sort),
              label: Text(_sort.label),
            ),
          ),
        ],
      ),
    );
  }

  void _openDetail(BuildContext context, PublicRequestItem item) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (_) => RequestDetailScreen(item: item)));
  }

  void _openCreate(BuildContext context) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (_) => const CreateRequestScreen()));
  }

  void _showHelp(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('About Request Hub'),
        content: const Text(
          'This is a hub which contains all Open Public request from all listener.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  void _placeholder(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }
}

enum _SortBy { newest, oldest, amountHigh, amountLow }

extension _SortByX on _SortBy {
  String get label {
    switch (this) {
      case _SortBy.newest:
        return 'Newest';
      case _SortBy.oldest:
        return 'Oldest';
      case _SortBy.amountHigh:
        return 'Amount: High → Low';
      case _SortBy.amountLow:
        return 'Amount: Low → High';
    }
  }
}
