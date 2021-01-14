import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  final Function saveFilters;
  final Map<String, bool> currentFilters;

  FiltersScreen(this.currentFilters, this.saveFilters);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _hasSubtitle = false;
  //bool _vegetarian = false;
  //bool _vegan = false;
  bool _isRecommended = false;

  @override
  initState() {/////////////////////////////////////////////////////////////////////////////////////
    _hasSubtitle = widget.currentFilters['gluten'];
    _isRecommended = widget.currentFilters['lactose'];
   // _vegetarian = widget.currentFilters['vegetarian'];
    //_vegan = widget.currentFilters['vegan'];
    super.initState();
  }

  Widget _buildSwitchListTile(
    String title,
    String description,
    bool currentValue,
    Function updateValue,
  )
   {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(
        description,
      ),
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final selectedFilters = {
                'subtitle': _hasSubtitle,
                'recommended': _isRecommended,
              //  'vegan': _vegan,
               // 'vegetarian': _vegetarian,
              };
              widget.saveFilters(selectedFilters);
            },
          )
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selection.',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildSwitchListTile(
                  'Has Subtitle',
                  'Only include movies with subtitles',
                  _hasSubtitle,
                  (newValue) {
                    setState(
                      () {
                        _hasSubtitle = newValue;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  'Is Recommended',
                  'Only include recommended movies.',
                  _isRecommended,
                  (newValue) {
                    setState(
                      () {
                        _isRecommended = newValue;
                      },
                    );
                  },
                ),
                // _buildSwitchListTile(
                //   'Vegetarian',
                //   'Only include vegetarian meals.',
                //   _vegetarian,
                //   (newValue) {
                //     setState(
                //       () {
                //         _vegetarian = newValue;
                //       },
                //     );
                //   },
                // ),
                // _buildSwitchListTile(
                //   'Vegan',
                //   'Only include vegan meals.',
                //   _vegan,
                //   (newValue) {
                //     setState(
                //       () {
                //         _vegan = newValue;
                //       },
                //     );
                //   },
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
