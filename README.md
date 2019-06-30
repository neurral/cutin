# cutin

Different docker containersand wrappers.

## DockerHub Builds:

[https://hub.docker.com/r/neurral/cutin/tags](https://hub.docker.com/r/neurral/cutin/tags)

Note: there are no `latest` tags used. Each branch is built on its own name.

---

## 1. DockerHub Image Naming Convention

"Stack" refers to the technology/technologies you are containeraizing.

- Docker org and repository: **`neurral/cutin`**
- Colon: **`:`**
- Name of stack (if multiple, separate each name by underscore): **`stack1_stack2_stack3`**
- If specifying a version of the stack, follow with a dash and semver: **`-0.0.1`**

#### Example: `neurral/cutin:nodejs_postgres-10.4.0`

## 2. Branch Naming and Tag Convention

- Branch name: **`dockerfiles`/name_of_stack**

#### Example: Postgres with PostGIS

1. Let's name this stack as something short but memorable and sortable: **pg_postgis**.

2. Create branch:

```bash
$ git branch dockerfiles/pg_postgis
$ git checkout dockerfiles/pg_postgis
```

3. Create your own folder with same name. Do not mix with master or unrelated folders.

```bash
$ mkdir pg_postgis
```

4. In your folder, add your **Dockerfile** and changes.
5. Once, done, test it with a `docker build` in project root.

```bash
# use YOUR_FOLDER_NAME with the docker tag following the naming convention below.

$ docker build pg_postgis/ -t neurral/cutin:pg_postgis-10.4
```

6. If you want to PR this, add a git tag following the name of your branch-version and push.

```bash
$ git tag pg_postgis-10.4
$ git push origin dockerfiles/pg_postgis-10.4 --tags
```

## 3. Use the docker pushed images

In your custom Dockerfile:

```yaml
FROM neurral/cutin:pg_postgis-10.4
```

or docker-compose.yml:

```yaml
image: neurral/cutin:pg_postgis-10.4
```
