<div align="center" markdown>
  
<h1 style="float: left; border-bottom: 0"> <img align="center" src="https://i.imgur.com/Mm2Auxx.png" width="80" style="float:left;"> RITM Interactive Segmentation </h1>

**state-of-the art click-based interactive segmentation integrated into Supervisely Image Annotator**

  
<p align="center">
  <a href="#Original-work">Original work</a> •
  <a href="#How-to-use">How to use</a> •
  <a href="#Demo">Demo</a> 
</p>

[![](https://img.shields.io/badge/supervisely-ecosystem-brightgreen)](https://ecosystem.supervise.ly/apps/supervisely-ecosystem/ritm-interactive-segmentation/supervisely)
[![](https://img.shields.io/badge/slack-chat-green.svg?logo=slack)](https://supervise.ly/slack)
![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/supervisely-ecosystem/ritm-interactive-segmentation)
[![views](https://app.supervise.ly/public/api/v3/ecosystem.counters?repo=supervisely-ecosystem/ritm-interactive-segmentation/supervisely&counter=views&label=views)](https://supervise.ly)
[![used by teams](https://app.supervise.ly/public/api/v3/ecosystem.counters?repo=supervisely-ecosystem/ritm-interactive-segmentation/supervisely&counter=downloads&label=used%20by%20teams)](https://supervise.ly)
[![runs](https://app.supervise.ly/public/api/v3/ecosystem.counters?repo=supervisely-ecosystem/ritm-interactive-segmentation/supervisely&counter=runs&label=runs&123)](https://supervise.ly)

<p float="left">
  <img src="https://github.com/supervisely-ecosystem/ritm-interactive-segmentation/releases/download/v0.1/ritm_poster.gif?raw=true" style="width:80%;"/>
</p>    
 
</div>

<p align="center"> Original work available by hyperlinks: <a href=https://arxiv.org/pdf/2102.06583.pdf><b>paper</b></a> and <a href="https://github.com/saic-vul/ritm_interactive_segmentation"><b>code</b></a></p>


## Overview

Application key points:  
- Manually selected ROI
- Capability to segment objects of previously unseen classes.
- Accurate predictions in most cases
- Correct prediction errors on the fly
- Select from [5 pretrained models](../README.md#evaluation) provided by RITM

RITM Interactive segmentation algorithms allow users to explicitly control the predictions using interactive input at several iterations, in contrast to common semantic and instance segmentation algorithms that can only input an image and output a segmentation mask in one pass. Such interaction makes it possible to select an object of interest and correct prediction errors.

<img src="https://i.imgur.com/8RaxwK2.png" style="width:100%;"/>

Besides segmenting new objects, proposed method allows to correct external masks, e.g. produced by other
instance or semantic segmentation models. A user can fix false negative and false positive regions with positive (green)
and negative (red) clicks, respectively.

# How to use

## Community edition

1. Upload video to [supervese.ly](https://supervise.ly/)
2. Annotate object using `Rectangle Tool`
3. Select object, choose `TransT object tracking (CVPR2021)` from tracking menu 
4. Click `track` button

<table>
  <tr style="width: 100%">
    <td>
      <img src="https://imgur.com/4SKQyrD.png" />
    </td>
    <td>
      <img src="https://imgur.com/KWsubjO.png" />
    </td>
  </tr>
  <tr style="width: 100%">
    <td>
      <img src="https://imgur.com/uvRFFJU.png" />
    </td>
    <td>
      <img src="https://imgur.com/fvGTEry.png" />
    </td>
  </tr>
</table>


## Agent edition

1. Add [TransT object tracking (CVPR2021)](https://ecosystem.supervise.ly/apps/supervisely-ecosystem/trans-t/supervisely/serve) from Ecosystem
2. Run app on agent with `GPU`
3. Use in `Videos Annotator` by analogy with <a href="#Community-edition">Community edition</a>  



## Controls:

| Key                                                           | Description                               |
| ------------------------------------------------------------- | ------------------------------------------|
| <kbd>Left Mouse Button</kbd>                                  | Place a positive click                    |
| <kbd>Right Mouse Button</kbd>                                 | Place a negative click                    |
| <kbd>Scroll Wheel</kbd>                                       | Zoom an image in and out                  |
| <kbd>Right Mouse Button</kbd> + <br> <kbd>Move Mouse</kbd>    | Move an image                             |
| <kbd>Space</kbd>                                              | Finish the current object mask            |
| <kbd>Shift + H</kbd>                                          | Higlight instances with random colors     |
| <kbd>Ctrl + H</kbd>                                           | Hide all labels                           |


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
