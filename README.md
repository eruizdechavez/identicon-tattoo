# identicon-tattoo

<p align="center" width="100%">
  <img src="./example.png" width="200px">
</p>

<p align="center" width="100%">
  <em>Generate Tattoo art using identicon images.</em>
</p>


## Usage

If this is the first time using the repo, you need to build the image by executing `./build.sh`.

The script assumes there is a `data.mjs` file inside the `data` folder with the strings to be used as seeds for the identicons. You can use the example file `data.mjs.example` as an example (the example logo in this page was generated with those strings).

To generate the image execute `./run.sh`; a `tattoo.png` file will be generated inside the `data` folder.

### Customization

There is some limited customization right now. You can change the number of columns and the border size using environment variables. To change the default values prepend the run command with the proper environment variable.

Variable | Default
--- | ---
COLS | 2
BORDER | 100

**Example**

```sh
COLS=3 BORDER=20 ./run.sh
```
