from setuptools import setup, find_packages

def read(filename):
        return [
                req.strip()
                for req in open(filename).readlines()
        ]

setup(
        name="online_streaming_store",
        version="0.1.0",
        description="",
        packages=find_packages(),
        include_package_data=True,
        install_requires=read("requirements.txt"),
)