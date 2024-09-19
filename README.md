# nat_ros

**NOTE: This repository is a work in progress. An expected release date is set for the end of October 2023. The current status is that it works and has been tested on ROS1 NOETIC. However, there are some ongoing tasks to change certain names and improve the organization of the code. Additionally, there have been rare instances of crashes due to overflow, which need further investigation and resolution.**

## Overview

`nat_ros` is a ROS (Robot Operating System) package designed to work as a NatNet server client. It facilitates the integration of the NatNet Server message into ROS by parsing it into ROS-compatible message types. it is based on [NatCpp](https://github.com/bsyy6/NatCpp) library.

## Installation

To install and use `nat_ros`, follow these steps:

1. **Note:**
    - tested on ROS1 NOETIC with OptiTrack V120 - running a motive 2.3.0 (NatNet SDK 4.0.0)
      
2. **Clone the Repository:**
    in your workspace, clone the package.
    ```bash
    git clone https://github.com/bsyy6/nat_ros
    cd nat_ros
    ```

4. **Build the Package:**
    ```bash
    catkin_make
    ```

5. **Source the Workspace:**
    ```bash
    source devel/setup.bash
    ```

## Usage

When starting the `nat_ros` node, you can pass one or more of the following options as command-line arguments to specify the type of data you want to publish. The `--all` flag will publish all available data by default. Use these flags to customize the data output:

- `--all`: Publish all available data.
- `--basic`: Publish basic data ( markers and bodies only )
- `--bodies`: Publish body-related data.
- `--skeletons`: Publish skeleton-related data.
- `--markers`: Publish marker-related data.
- `--forcePlates`: Publish force plate data.
- `--devices`: Publish device-related data.
- `--advancedTime`: Publish data with advanced time information.
- `--basicTime`: Publish data with basic time information.
After installation, you can use `nat_ros` to interface with the NatNet Server and parse its messages into ROS-compatible message types. The message is published on topic `NatServer`

## Example Usage

Start the `nat_ros` node with the desired options by including the flags when launching it. For example, to publish all the available data you can use the following command:

```bash
rosrun nat_ros  --all
```

## Known Issues

- **Crashes Due to Overflow:**
    There have been rare instances of crashes in the current version of `nat_ros` attributed to overflow. This issue is under investigation, I am attempting to resolve it before the project's official release.

## Contributions and Bug Reporting

We welcome contributions and bug reports. If you encounter any issues, please feel free to open an issue on this repository.

## License

THE SOFTWARE IS PROVIDED "AS IS," WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES, OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT, OR OTHERWISE, ARISING FROM, OUT OF, OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Acknowledgments

- Developed in Artifial Hands Area - Scuola Superiore Santanna.
---

**Note**: This README will be updated as the project progresses and is officially released.
