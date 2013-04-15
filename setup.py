from distutils.core import setup
setup(
    name = "beard",
    packages = ["beard"],
    version = "0.8",
    description = "Computation-less template language",
    author = "Ivan Tikhonov",
    author_email = "kefeer@brokestream.com",
    url = "http://brokestream.com/beard/",
    download_url = "http://brokestream.com/beard/dist/beard-0.8.zip",
    keywords = ["templates"],
    classifiers = [
        "Programming Language :: Python",
        "Development Status :: 4 - Beta",
        "Intended Audience :: Developers",
        "License :: Public Domain"
        ],
    long_description = """\
Template language designed to be cross-language.
"""
)
