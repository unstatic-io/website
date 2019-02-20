# unstatic.io
Codebase for the website [https://unstatic.io](https://unstatic.io)

## Running
We use [Parcel](https://parceljs.org/) to bundle our static website.

### Development
Starts a Parcel development server in watch mode, initiating a server that runs locally at [http://localhost:1234](http://localhost:1234)
```bash
$ npm run dev
```

### Production
Bundles the entire website as a set of self-contained files that can be served as a static website.

```bash
$ npm run dist
```

### Deployment
The website can be baked into a Docker image that runs nginx, which is the current strategy in our production deployments.

Make sure that the correct version is set at `package.json` and then run

```bash
$ ./docker/build.sh
```

This will create a Docker image with the tag `unstatic.io/website:${VERSION}` where `${VERSION}` is the value version value from `package.json`.

Once the image is built, run it as a Docker container with its `80` port exposed.

Example:

```bash
$ docker run -d --name unstatic-io-web --rm -p 12345:80 unstatic.io/website
```


## LICENSE
MIT
