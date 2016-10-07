# pbindex

Generates an index of all public [PredictionBook](http://predictionbook.com/) predictions.  Serves as a workaround for [issue #78](https://github.com/tricycle/predictionbook/issues/78) and provides a convenient way to look through old predictions.

There's an already-generated index available at http://pbindex.neocities.org/ but it may become out of date.

## Generate an index

```
git clone https://github.com/ludios/pbindex
cd pbindex
./download.sh
```

then after about two days:

```
./make_index.py > index.html
```
