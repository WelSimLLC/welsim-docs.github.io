# Troubleshooting
If you encounter an issue that cannot be resolved here, please send the project file (*.wsdb and the associated folder) to <info@welsim.com> for investigation. 

## Issue 1: No graphical window (No OpenGL driver)
The graphics window fails to display items, or no window is even displayed. 

![finite_element_analysis_welsim_troubleshooting_1](img/7_trouble/opengl_error2.jpg "Graphics window shows all black area, and error message says about OpenGL.")

![finite_element_analysis_welsim_troubleshooting_opengl2](img/7_trouble/opengl_error4.jpg "No windows show up in the MatEditor due to the OpenGL missing.")

* **Cause**: This is because of a lack of OpenGL drivers, or an old version of OpenGL. This often happens in a Windows OS hosted in a Sandbox environment.

* **Solution**: Install or update the OpenGL drivers latest version. If this occurs in a sandboxed Windows, install the [Mesa for Windows distribution](https://github.com/pal1000/mesa-dist-win), and deploy the OpenGL software to the application using the included *perappdeploy.bat* batch file.


## Issue 2: Result mesh data mismatching
The result contour fails to display because of mismatched mesh. The error message of this issue is shown below.

![finite_element_analysis_welsim_result_data_point_error1](img/7_trouble/result_data_point_error1.jpg "Result does not display, and error message says about point data."){#welsim_result_data_point_error1}

* **Cause**: This issue is because of mismatched data between the result and mesh.

* **Solution**: This could be a software defect, so please send the model to [info@welsim.com](mailto:info@welsim.com) for investigation.


### Issue 3: Excessive solving time for explicit transient structural analysis
When using OpenRadioss as the solver for transient structural problems, the solving time can be significantly longer than expected.

* **Cause**: When the material density is too small, it can lead to very small time steps, which in turn causes the solving time to be excessively long.

* **Solution**: Check the material density value, and increase the value if it is incorrect.

