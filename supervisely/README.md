<div align="center" markdown>
  
<h1 align="center" style="border-bottom: 0"> <img align="center" src="https://i.imgur.com/Mm2Auxx.png" width="80"> RITM Interactive Segmentation </h1>

  <p align="center"><b>state-of-the art click-based interactive segmentation integrated into Supervisely Image Annotator</b></p>

  
<p align="center">
  <a href="#Overview">Overview</a> •
  <a href="#How-to-run">How to run</a> •
  <a href="#How-to-use">How to use</a> •
  <a href="#Demo">Demo</a> •
  <a href="#Manual-object-correction">Manual object correction</a> •
  <a href="#Acknowledgment">Acknowledgment</a> 
</p>

[![](https://img.shields.io/badge/supervisely-ecosystem-brightgreen)](https://ecosystem.supervise.ly/apps/supervisely-ecosystem/ritm-interactive-segmentation/supervisely)
[![](https://img.shields.io/badge/slack-chat-green.svg?logo=slack)](https://supervise.ly/slack)
![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/supervisely-ecosystem/ritm-interactive-segmentation)
[![views](https://app.supervise.ly/img/badges/views/supervisely-ecosystem/ritm-interactive-segmentation/supervisely.png)](https://supervise.ly)
[![runs](https://app.supervise.ly/img/badges/runs/supervisely-ecosystem/ritm-interactive-segmentation/supervisely.png)](https://supervise.ly)


<p float="left">
  <img src="https://github.com/supervisely-ecosystem/ritm-interactive-segmentation/releases/download/v0.1/ritm_poster.gif?raw=true" style="width:80%;"/>
</p>    
 
</div>


## Overview

Application key points:  
- Manually selected ROI
- Deploy on GPU(faster) or CPU(slower)
- Accurate predictions in most cases
- Correct prediction interactively with `red` and `green` clicks
- Select from [5 pretrained models](../README.md#evaluation)
- Models are class agnostic, you can segment any object from any domain

RITM Interactive segmentation algorithms allow users to explicitly control the predictions using interactive input at several iterations, in contrast to common semantic and instance segmentation algorithms that can only input an image and output a segmentation mask in one pass. Such interaction makes it possible to select an object of interest and correct prediction errors.

<img src="https://i.imgur.com/8RaxwK2.png" style="width:100%;"/>

Besides segmenting new objects, proposed method allows to correct external masks, e.g. produced by other
instance or semantic segmentation models. A user can fix false negative and false positive regions with positive (green)
and negative (red) clicks, respectively.

# How to run

### ⚠️ Notice  
 * The application may already be launched by the instance administrator (**Enterprise**) or the Supervisely team (**Community**). If the app is not available in dropdown menu in Labeling tool, please contact us. If the Smart Tool responds slowly, please run additional application sessions in your team.
 * **Enterprise only**: You can share started application with all users on your instance using **share** button in front of running session. We recommend to run multiple sessions if large number of users are using Smart Tool simultaneously.

---

1. Add [RITM interactive segmentation smart tool](https://ecosystem.supervise.ly/apps/supervisely-ecosystem%252Fritm-interactive-segmentation%252Fsupervisely) to your team from Ecosystem.

<img data-key="sly-module-link" data-module-slug="supervisely-ecosystem/ritm-interactive-segmentation/supervisely" src="https://i.imgur.com/eWmFwQ9.png" width="600px" style='padding-bottom: 20px'/>  

2. Run app from **Plugins & Apps** page:

<img src="https://i.imgur.com/jWwuGQy.png" width="100%"/>

3. Select options in modal window and press the `Run` button.
 
<div align="center" markdown>
<img src="https://i.imgur.com/4fmlsBJ.png" width="500"/>
</div>

4. You'll see `Model has been successfully deployed` message indicating that the application has been successfully started and you can work with it from now on.
 
<div align="center" markdown>
<img src="https://imgur.com/xIs9YPe.png" width="90%"/>
</div>

# How to use

<a data-key="sly-embeded-video-link" href="https://youtu.be/q1IVBrZDSGk" data-video-code="q1IVBrZDSGk"> <img src="https://imgur.com/MWHDZQy.png" alt="SLY_EMBEDED_VIDEO_LINK"  width="70%"> </a>  


## Controls

| Key                                                           | Description                               |
| ------------------------------------------------------------- | ------------------------------------------|
| <kbd>Left Mouse Button</kbd>                                  | Place a positive click                    |
| <kbd>Shift + Left Mouse Button</kbd>                          | Place a negative click                    |
| <kbd>Scroll Wheel</kbd>                                       | Zoom an image in and out                  |
| <kbd>Right Mouse Button</kbd> + <br> <kbd>Move Mouse</kbd>    | Move an image                             |
| <kbd>Space</kbd>                                              | Finish the current object mask            |
| <kbd>Shift + H</kbd>                                          | Higlight instances with random colors     |
| <kbd>Ctrl + H</kbd>                                           | Hide all labels                           |


<p align="left"> <img align="center" src="https://i.imgur.com/jxySekj.png" width="50"> <b>—</b> Auto add positivie point to rectangle button (<b>ON</b> by default for SmartTool apps) </p>

<div align="center" markdown>
<img src="https://i.imgur.com/dlaLrsi.png" width="90%"/>
</div>

<p align="left"> <img align="center" src="https://i.imgur.com/kiwbBkj.png" width="200"> <b>—</b> SmartTool selector button, switch between SmartTool apps and models</p>

<div align="center" markdown>
<img src="https://i.imgur.com/FATcNZU.png" width="90%"/>
</div>

# Demo

We have prepared a videos and demonstrated how RITM works for the different domains:


<table>
  <tr style="width: 100%">
    <td>
       <a data-key="sly-embeded-video-link" href="https://youtu.be/05qQPnPmNoY" data-video-code="05qQPnPmNoY">     <img src="https://i.imgur.com/ApNseQ8.png" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
    </td>
    <td>
      <a data-key="sly-embeded-video-link" href="https://youtu.be/FVu1nTlNIj4" data-video-code="FVu1nTlNIj4"> <img src="https://i.imgur.com/FUeoLq9.png" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
    </td>
      </tr>
    <tr style="width: 100%">
      <td>
        <a data-key="sly-embeded-video-link" href="https://youtu.be/WfrST7p3FM8" data-video-code="WfrST7p3FM8">     <img src="https://i.imgur.com/Nb9o1v2.png" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
      </td>
      <td>
        <a data-key="sly-embeded-video-link" href="https://youtu.be/QBS6DDjFGfE" data-video-code="QBS6DDjFGfE"> <img src="https://i.imgur.com/MGXZyBp.png" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
      </td> 
    </tr>
    <tr style="width: 100%">  
      <td>
        <a data-key="sly-embeded-video-link" href="https://youtu.be/9gPSpdrARK8" data-video-code="9gPSpdrARK8">     <img src="https://i.imgur.com/o6ltQqA.png" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
      </td>
      <td>
        <a data-key="sly-embeded-video-link" href="https://youtu.be/IWPQdG0T9RM" data-video-code="IWPQdG0T9RM"> <img src="https://i.imgur.com/vK4GgA1.png" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
      </td>
    </tr>
    <tr style="width: 100%">
      <td>
      <a data-key="sly-embeded-video-link" href="https://youtu.be/TClsj28jmmU" data-video-code="TClsj28jmmU">     <img src="https://i.imgur.com/QVxEF5y.png" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
      </td>
      <td>
        <a data-key="sly-embeded-video-link" href="https://youtu.be/I-CqsZemwWc" data-video-code="I-CqsZemwWc">   <img src="https://i.imgur.com/gEAnQI0.png" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
      </td> 
    </tr>
    <tr style="width: 100%">
      <td>
      <a data-key="sly-embeded-video-link" href="https://youtu.be/QdtuoJ2cHHc" data-video-code="QdtuoJ2cHHc"> <img src="https://i.imgur.com/Xy0RJk0.png" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
      </td>
      <td>
      <a data-key="sly-embeded-video-link" href="https://youtu.be/wlGKMEgDMqU" data-video-code="wlGKMEgDMqU"> <img src="https://i.imgur.com/SmZWFcK.png" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
      </td>   
    </tr>
  </table>
  
  
# Manual object correction

<a data-key="sly-embeded-video-link" href="https://youtu.be/6pMUHn0jNGE" data-video-code="6pMUHn0jNGE"> <img src="https://i.imgur.com/skXXok8.png" alt="SLY_EMBEDED_VIDEO_LINK"  width="500"> </a>  

# Acknowledgment

This app is based on the great work `Reviving Iterative Training with Mask Guidance for Interactive Segmentation` ([paper](https://arxiv.org/abs/2102.06583),  [github](https://github.com/saic-vul/ritm_interactive_segmentation)). ![GitHub Org's stars](https://img.shields.io/github/stars/saic-vul/ritm_interactive_segmentation?style=social)
