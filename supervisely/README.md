<div align="center" markdown>

<img src="https://i.imgur.com/UdBujFN.png" width="250"/> 
<br>
<img src="https://i.imgur.com/Mm2Auxx.png" width="100"/> 

<h1> RITM Interactive Segmentation</h1>

**state-of-the art click-based interactive segmentation integrated into Supervisely Image Annotator**
 
<p align="center">
  <a href="#Overview">Overview</a> •
  <a href="#How-to-run">How to run</a> •
  <a href="#How-to-use">How to use</a> •
  <a href="#Examples">Examples</a> •
  <a href="#Acknowledgment">Acknowledgment</a>
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



# Demo

We have prepared a videos and demonstrated how TransT works on the following domains:

* <a href="#People">People</a>  
* <a href="#Automobiles">Automobiles</a>  
* <a href="#Animals">Animals</a> 
* <a href="#Things">Things</a> 
* <a href="#Conveyor">Conveyor</a> 


## People


<table>
  <tr style="width: 100%">
    <td>
      <a data-key="sly-embeded-video-link" href="https://youtu.be/fNqMP-C7MA0" data-video-code="fNqMP-C7MA0">     <img src="https://imgur.com/EjbHbX0.jpg" alt="SLY_EMBEDED_VIDEO_LINK"  style="width:100%;"> </a>
    </td>
    <td>
      <a data-key="sly-embeded-video-link" href="https://youtu.be/Nv-45hoh4GQ" data-video-code="Nv-45hoh4GQ">     <img src="https://imgur.com/iPajKlb.jpg" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
    </td>
  </tr>
  <tr>
    <td>
      <a data-key="sly-embeded-video-link" href="https://youtu.be/HLlgsf1ClXI" data-video-code="HLlgsf1ClXI">     <img src="https://imgur.com/6B3l6Dp.jpg" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
    </td>
    <td>
      <a data-key="sly-embeded-video-link" href="https://youtu.be/ZkroK9_OH6Y" data-video-code="ZkroK9_OH6Y">     <img src="https://imgur.com/7i290SG.jpg" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
    </td>
  </tr>
  <tr>
    <td>
      <a data-key="sly-embeded-video-link" href="https://youtu.be/zKUCtnQAhKU" data-video-code="zKUCtnQAhKU">     <img src="https://imgur.com/0lE1Kmx.jpg" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a>
    </td>
    <td>
      <a data-key="sly-embeded-video-link" href="https://youtu.be/jQW8jipqle8" data-video-code="jQW8jipqle8">     <img src="https://imgur.com/wbX5cl2.jpg" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a>
    </td>
  </tr>
</table>


## Automobiles


<table>
  <tr style="width: 100%">
    <td>
      <a data-key="sly-embeded-video-link" href="https://youtu.be/Om3EjoV_B9Q" data-video-code="Om3EjoV_B9Q">     <img src="https://imgur.com/vSEQTD8.jpg" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
    </td>
    <td>
       <a data-key="sly-embeded-video-link" href="https://youtu.be/Ebth1bWiDrU" data-video-code="Ebth1bWiDrU">     <img src="https://imgur.com/QUlhUXN.jpg" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
    </td>
  </tr>
  <tr style="width: 100%">
    <td>
      <a data-key="sly-embeded-video-link" href="https://youtu.be/rMBusxCQPAY" data-video-code="rMBusxCQPAY">     <img src="https://imgur.com/W0G6ZSE.jpg" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
    </td>
    <td>
       <a data-key="sly-embeded-video-link" href="https://youtu.be/lk2BSSwv_G8" data-video-code="lk2BSSwv_G8">     <img src="https://imgur.com/ZCjA02a.jpg" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
    </td>
  </tr>
  </tr>
  <tr style="width: 100%">
    <td>
      <a data-key="sly-embeded-video-link" href="https://youtu.be/_769hB_Nm9s" data-video-code="_769hB_Nm9s">     <img src="https://imgur.com/2FlTHlp.jpg" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
    </td>
  </tr>
</table>


## Animals


<table>
  <tr style="width: 100%">
    <td>
      <a data-key="sly-embeded-video-link" href="https://youtu.be/Zmc-G3Wiy0k" data-video-code="Zmc-G3Wiy0k"> <img src="https://imgur.com/KRCk1PZ.jpg" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
    </td>
    <td>
      <a data-key="sly-embeded-video-link" href="https://youtu.be/rD78jMwyCpo" data-video-code="rD78jMwyCpo"> <img src="https://imgur.com/rkoOwJs.jpg" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
    </td>
  </tr>
  <tr style="width: 100%">
    <td>
      <a data-key="sly-embeded-video-link" href="https://youtu.be/X1I3E6O6BOk" data-video-code="X1I3E6O6BOk"> <img src="https://imgur.com/QLOeU72.jpg" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
    </td>
  </tr>
</table>



## Things


<table>
  <tr style="width: 100%">
    <td>
      <a data-key="sly-embeded-video-link" href="https://youtu.be/3Dks8Vp9kSA" data-video-code="3Dks8Vp9kSA"> <img src="https://imgur.com/6rksiaj.jpg" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
    </td>
    <td>
      <a data-key="sly-embeded-video-link" href="https://youtu.be/qFN5fNyq7EQ" data-video-code="qFN5fNyq7EQ"> <img src="https://imgur.com/AmFEs4f.jpg" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
    </td>
  </tr>
  <tr style="width: 100%">
    <td>
      <a data-key="sly-embeded-video-link" href="https://youtu.be/ns5_tNuSmkw" data-video-code="ns5_tNuSmkw"> <img src="https://imgur.com/EU6dAek.jpg" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
    </td>
    <td>
      <a data-key="sly-embeded-video-link" href="https://youtu.be/rRsex6BqRGs" data-video-code="rRsex6BqRGs"> <img src="https://imgur.com/GeDONRT.jpg" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
    </td>
  </tr>
  <tr style="width: 100%">
    <td>
      <a data-key="sly-embeded-video-link" href="https://youtu.be/qhrsWzxA7Js" data-video-code="qhrsWzxA7Js"> <img src="https://imgur.com/aRnNDdZ.jpg" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
    </td>
    <td>
      <a data-key="sly-embeded-video-link" href="https://youtu.be/u_b_AP99jLI" data-video-code="u_b_AP99jLI"> <img src="https://imgur.com/CSnYQPI.jpg" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
    </td>
  </tr>
  <tr style="width: 100%">
    <td>
      <a data-key="sly-embeded-video-link" href="https://youtu.be/ocDRgXHcDuw" data-video-code="ocDRgXHcDuw"> <img src="https://imgur.com/D1PDsK8.jpg" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
    </td>
  </tr>
</table>


## Conveyor


<table>
  <tr style="width: 100%">
    <td>
      <a data-key="sly-embeded-video-link" href="https://youtu.be/MQ6ZZ8_F870" data-video-code="MQ6ZZ8_F870"> <img src="https://imgur.com/2FdDTZ2.jpg" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
    </td>
    <td>
      <a data-key="sly-embeded-video-link" href="https://youtu.be/FW-AL5Pc1Vc" data-video-code="FW-AL5Pc1Vc"> <img src="https://imgur.com/WgsINiu.jpg" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
    </td>
  </tr>
  <tr style="width: 100%">
    <td>
      <a data-key="sly-embeded-video-link" href="https://youtu.be/sJGjmvCkJBU" data-video-code="sJGjmvCkJBU"> <img src="https://imgur.com/voOkvmv.jpg" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
    </td>
    <td>
      <a data-key="sly-embeded-video-link" href="https://youtu.be/YJ8Xone3y7U" data-video-code="YJ8Xone3y7U"> <img src="https://imgur.com/gWxkRmw.jpg" alt="SLY_EMBEDED_VIDEO_LINK"  style="max-width:100%;"> </a> 
    </td>
  </tr>
</table>

# Acknowledgment

This app is based on the great work `Reviving Iterative Training with Mask Guidance for Interactive Segmentation` ([paper](https://arxiv.org/abs/2102.06583),  [github](https://github.com/saic-vul/ritm_interactive_segmentation)). ![GitHub Org's stars](https://img.shields.io/github/stars/saic-vul/ritm_interactive_segmentation?style=social)