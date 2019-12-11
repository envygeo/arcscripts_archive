# Unofficial Arcscripts Archive
Home: https://github.com/envygeo/arcscripts_archive

a) listing of content published to [Esri ArcScripts][1] before it went offline, and  
b) restored copies of said content - when and if found


The index csv is sourced from a post from Jim Barry in the thread [Please restore ArcScripts][2] on GeoNet. For convenience it's also in xls, but the csv remains definitive record (for version control).

## Contributing Guidelines

_Draft_

Fork the project and issue a pull request.  

Include a Readme with a short description of how you retrieved the package (e.g. downloaded from web archive, from your personal cache, asked So-n-so, ...).

Please look for and indicate if the ArcScript has a newer version on https://codesharing.arcgis.com/.

### Method
- Extract zip to `./data/AS12345`
- Create `./data/AS12345/_Readme.txt`
    - copy paste `12345` row from `ArcScripts_items.csv`
    - regex search & replace `\t` with `\r\n` (replace tabs with new line)
    - insert header metadata on source and retrieval date:
    
    ~~~
        # Source: Jim Barry, Geonet forum
        # Url: https://community.esri.com/message/895793-re-please-restore-arcscripts?commentID=895793&et=watches.email.thread#comment-895793
        # Retrieved_date: 2019-12-11
    ~~~

Example: [`data/AS15287`](data/AS15287)

The underscore `_` preface is prevent collision with a zipfile's Readme. If the zipfile readme has same name rename that one, not ours.


### Binary files
We're using [Git Large File Storage][3] extension. Please install it, check if the file types you add are already tracked in `.gitattributes.txt`. If not add them with an incantation like `git lfs track *.shp`.



## License
The MIT license chosen is for the overall project (index, meta information, workflows, update scripts, etc.). Each script could have it's own license, underneath the license Esri used when the original collection was compiled.

  [1]: http://arcscripts.esri.com
  [2]: https://community.esri.com/thread/182094-please-restore-arcscripts
  [3]: https://git-lfs.github.com/
