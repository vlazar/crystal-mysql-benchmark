# crystal-mysql-benchmark

## Environment

* macOS 10.13.5
* Xcode 9.4.1
* MySQL 5.6 (installed with Homebrew)
* Crystal 0.24.2 vs Crystal 0.25.0/0.25.1 (installed with Homebrew)

```bash
$ xcodebuild -version
Xcode 9.4.1
Build version 9F2000

$ mysql --version
mysql  Ver 14.14 Distrib 5.6.40, for osx10.13 (x86_64) using  EditLine wrapper

```

## Setup DB

```bash
$ mysql -uroot -e "create database crystal_mysql_benchmark;"
$ mysql -uroot crystal_mysql_benchmark < numbers.sql

```

## Benchmark Results

Crystal 0.25.1


```bash
$ crystal --version
Crystal 0.25.1 (2018-06-29)

LLVM: 5.0.2
Default target: x86_64-apple-macosx

$ crystal build --release benchmark.cr

$ ./benchmark
select id from numbers  65.51  ( 15.27ms) (± 2.76%)  249212 B/op  fastest
```

Crystal 0.24.2

```bash
$ crystal --version
Crystal 0.24.2 (2018-03-10)

LLVM: 5.0.1
Default target: x86_64-apple-macosx

$ crystal build --release benchmark.cr

$ ./benchmark
select id from numbers   1.03k (970.01µs) (± 0.94%) fastes
```
