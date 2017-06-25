FROM debian:8
MAINTAINER SHIBATA Hiroshi hsbt@ruby-lang.org

ADD Rakefile all-ruby versions.json /all-ruby/
ADD patch /all-ruby/patch/
WORKDIR /all-ruby

RUN dpkg --add-architecture i386
RUN apt-get update -qq && \
    apt-get install -y --no-install-recommends \
    build-essential \
    libreadline6-dev \
    libssl-dev \
    libffi-dev \
    rake \
    bison \
    gcc-multilib \
    zlib1g:i386 \
    libncurses5:i386 \
    libgdbm3:i386 \
    libssl1.0.0:i386 \
    libreadline6:i386 \
    libffi6:i386 && \
    rm -rf /var/lib/apt/lists/*

RUN rake 0.49 0.50 0.51 0.54 0.55 0.60 0.64 0.65 0.69 0.73 0.73-950413 0.76 0.95 0.99.4-961224 && rm DIST/*
RUN rake 1.0-961225 1.0-971002 1.0-971003 1.0-971015 1.0-971021 1.0-971118 1.0-971125 1.0-971204 1.0-971209 1.0-971225 && rm DIST/*
RUN rake 1.1a0 1.1a1 1.1a2 1.1a3 1.1a4 1.1a5 1.1a6 1.1a7 1.1a8 1.1a9 1.1b0 1.1b1 1.1b2 1.1b3 1.1b4 1.1b5 1.1b6 1.1b7 1.1b8 1.1b9 && rm DIST/*
RUN rake 1.1b9_01 1.1b9_02 1.1b9_03 1.1b9_04 1.1b9_05 1.1b9_06 1.1b9_07 1.1b9_08 1.1b9_09 1.1b9_10 1.1b9_11 1.1b9_12 1.1b9_13 1.1b9_14 1.1b9_15 1.1b9_16 1.1b9_17 1.1b9_18 1.1b9_19 1.1b9_20 1.1b9_21 1.1b9_22 1.1b9_23 1.1b9_24 1.1b9_25 1.1b9_26 1.1b9_27 1.1b9_28 1.1b9_29 1.1b9_30 1.1b9_31 1.1b9_32 && rm DIST/*
RUN rake 1.1c0 1.1c1 1.1c2 1.1c3 1.1c4 1.1c5 1.1c6 1.1c7 1.1c8 1.1c9 1.1d0 1.1d1 1.2 1.2.1 1.2.2 1.2.3 1.2.4 1.2.5 1.2.6 && rm DIST/*
RUN rake 1.3 1.3.1-990215 1.3.1-990224 1.3.1-990225 1.3.1-990311 1.3.1-990315 1.3.1-990324 1.3.2-990402 1.3.2-990405 1.3.2-990408 1.3.2-990413 1.3.3-990430 1.3.3-990507 1.3.3-990513 1.3.3-990518 1.3.4-990531 1.3.4-990611 1.3.4-990624 1.3.4-990625 && rm DIST/*
RUN rake 1.3.5 1.3.6 1.3.7 1.4.0 1.4.1 1.4.2 1.4.3 1.4.4 1.4.5 1.4.6 1.6.0 1.6.1 1.6.2 1.6.3 1.6.4 1.6.5 1.6.6 1.6.7 1.6.8 1.8.0 1.8.1 1.8.2 1.8.3 1.8.4 && rm DIST/*
RUN rake 1.8.5 1.8.5-p2 1.8.5-p12 1.8.5-p11 1.8.5-p11-repack 1.8.5-p35 1.8.6-p36 1.8.5-p52 1.8.5-p113 1.8.5-p114 1.8.5-p115 1.8.5-p231 && rm DIST/*
RUN rake 1.8.6 1.8.6-p110 1.8.6-p111 1.8.6-p114 1.8.6-p230 1.8.6-p286 1.8.6-p287 1.8.6-p368 1.8.6-p369 1.8.6-p383 1.8.6-p388 1.8.6-p398 1.8.6-p399 1.8.6-p420 && rm DIST/*
RUN rake 1.8.7-preview1 1.8.7-preview2 1.8.7-preview3 1.8.7-preview4 1.8.7 1.8.7-p17 1.8.7-p22 1.8.7-p71 1.8.7-p72 1.8.7-p160 1.8.7-p173 1.8.7-p174 1.8.7-p248 1.8.7-p249 1.8.7-p299 1.8.7-p301 1.8.7-p302 1.8.7-p330 1.8.7-p334 1.8.7-p352 1.8.7-p357 1.8.7-p358 1.8.7-p370 1.8.7-p371 1.8.7-p373 1.8.7-p374 && rm DIST/*
RUN rake 1.9.0-0 1.9.0-1 1.9.0-2 1.9.0-3 1.9.0-4 1.9.0-5 1.9.1-preview1 1.9.1-preview2 1.9.1-rc1 1.9.1-rc2 1.9.1-p0 1.9.1-p129 1.9.1-p243 1.9.1-p376 1.9.1-p378 1.9.1-p429 1.9.1-p430 1.9.1-p431 && rm DIST/*
RUN rake 1.9.2-preview1 1.9.2-preview3 1.9.2-rc1 1.9.2-rc2 1.9.2-p0 1.9.2-p136 1.9.2-p180 1.9.2-p290 1.9.2-p318 1.9.2-p320 1.9.2-p330 && rm DIST/*
RUN rake 1.9.3-preview1 1.9.3-rc1 1.9.3-p0 1.9.3-p105 1.9.3-p125 1.9.3-p194 1.9.3-p286 1.9.3-p327 1.9.3-p362 1.9.3-p374 1.9.3-p385 1.9.3-p392 1.9.3-p426 1.9.3-p429 1.9.3-p448 1.9.3-p484 1.9.3-p545 1.9.3-p547 1.9.3-p550 1.9.3-p551  && rm DIST/*
RUN rake 2.0.0-preview1 2.0.0-preview2 2.0.0-rc1 2.0.0-rc2 2.0.0-p0 2.0.0-p195 2.0.0-p247 2.0.0-p353 2.0.0-p451 2.0.0-p481 2.0.0-p576 2.0.0-p594 2.0.0-p598 2.0.0-p643 2.0.0-p645 2.0.0-p647 2.0.0-p648 && rm DIST/*
RUN rake 2.1.0-preview1 2.1.0-preview2 2.1.0-rc1 2.1.0 2.1.1 2.1.2 2.1.3 2.1.4 2.1.5 2.1.6 2.1.7 2.1.8 2.1.9 2.1.10 && rm DIST/*
RUN rake 2.2.0-preview1 2.2.0-preview2 2.2.0-rc1 2.2.0 2.2.1 2.2.2 2.2.3 2.2.4 2.2.5 2.2.6 2.2.7 && rm DIST/*
RUN rake 2.3.0-preview1 2.3.0-preview2 2.3.0 2.3.1 2.3.2 2.3.3 2.3.4 && rm DIST/*
RUN rake 2.4.0-preview1 2.4.0-preview2 2.4.0-preview3 2.4.0-rc1 2.4.0 2.4.1 && rm DIST/*