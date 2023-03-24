         1193739 function calls (1054917 primitive calls) in 120.730 seconds

   Ordered by: cumulative time

   ncalls  tottime  percall  cumtime  percall filename:lineno(function)
        1    0.000    0.000  120.730  120.730 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/decorators/profile.py:8(wrapper_timer)
        1    0.004    0.004  120.730  120.730 /home/paul/projects/ritm-interactive-segmentation/supervisely/src/sly_main.py:49(wrapper)
        1    0.000    0.000  120.726  120.726 /home/paul/projects/ritm-interactive-segmentation/supervisely/src/sly_main.py:74(smart_segmentation)
        1    0.000    0.000  120.122  120.122 /home/paul/projects/ritm-interactive-segmentation/supervisely/src/sly_functions.py:184(process_bitmap_from_clicks)
        1    0.001    0.001  118.465  118.465 /home/paul/projects/ritm-interactive-segmentation/supervisely/src/mask_image.py:12(get_mask_from_clicks)
       92    0.044    0.000  118.413    1.287 /home/paul/projects/ritm-interactive-segmentation/interactive_demo/controller.py:51(add_click)
       92    0.094    0.001  117.834    1.281 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/predictors/base.py:51(get_prediction)
       92    0.043    0.000  116.611    1.268 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/predictors/brs.py:166(_get_prediction)
36237/1047    0.384    0.000  105.923    0.101 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/nn/modules/module.py:1494(_call_impl)
       30    0.155    0.005  102.641    3.421 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/predictors/brs.py:225(_get_head_input)
 4860/480    2.208    0.000   99.728    0.208 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/nn/modules/container.py:215(forward)
       30    0.121    0.004   97.584    3.253 /home/paul/projects/ritm-interactive-segmentation/isegm/model/modeling/hrnet_ocr.py:433(compute_hrnet_feats)
      240    4.800    0.020   93.071    0.388 /home/paul/projects/ritm-interactive-segmentation/isegm/model/modeling/hrnet_ocr.py:171(forward)
     3120    9.577    0.003   68.854    0.022 /home/paul/projects/ritm-interactive-segmentation/isegm/model/modeling/resnetv1b.py:23(forward)
     9734    0.068    0.000   38.748    0.004 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/nn/modules/conv.py:462(forward)
     9734    0.035    0.000   38.663    0.004 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/nn/modules/conv.py:454(_conv_forward)
     9734   38.628    0.004   38.628    0.004 {built-in method torch.conv2d}
     9420    0.164    0.000   29.349    0.003 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/nn/modules/batchnorm.py:137(forward)
     9420    0.077    0.000   29.119    0.003 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/nn/functional.py:2419(batch_norm)
     9420   29.022    0.003   29.022    0.003 {built-in method torch.batch_norm}
     8310    0.035    0.000   13.204    0.002 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/nn/modules/activation.py:102(forward)
     8310    0.031    0.000   13.170    0.002 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/nn/functional.py:1446(relu)
     8310   13.128    0.002   13.128    0.002 {built-in method torch.relu_}
       91    0.005    0.000   12.810    0.141 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/optimize/_lbfgsb_py.py:48(fmin_l_bfgs_b)
       91    0.047    0.001   12.803    0.141 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/optimize/_lbfgsb_py.py:212(_minimize_lbfgsb)
      446    0.516    0.001   12.449    0.028 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/optimize/_optimize.py:67(_compute_if_needed)
      314    0.001    0.000   12.437    0.040 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/optimize/_differentiable_functions.py:249(_update_fun)
      223    0.001    0.000   12.436    0.056 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/optimize/_differentiable_functions.py:154(update_fun)
      223    0.007    0.000   12.435    0.056 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/optimize/_differentiable_functions.py:132(fun_wrapped)
      223    0.001    0.000   12.418    0.056 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/optimize/_optimize.py:74(__call__)
      223    0.435    0.002   11.874    0.053 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/predictors/brs_functors.py:44(__call__)
       91    0.001    0.000    7.540    0.083 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/optimize/_optimize.py:175(_prepare_scalar_function)
       91    0.004    0.000    7.539    0.083 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/optimize/_differentiable_functions.py:86(__init__)
      223    0.003    0.000    4.997    0.022 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/optimize/_differentiable_functions.py:282(fun_and_grad)
      223    0.986    0.004    3.834    0.017 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/predictors/brs_losses.py:11(forward)
      474    2.848    0.006    2.848    0.006 {method 'to' of 'torch._C._TensorBase' objects}
      120    0.333    0.003    2.390    0.020 /home/paul/projects/ritm-interactive-segmentation/isegm/model/modeling/resnetv1b.py:62(forward)
      131    0.011    0.000    2.291    0.017 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/_tensor.py:428(backward)
      131    0.003    0.000    2.280    0.017 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/autograd/__init__.py:106(backward)
      131    2.229    0.017    2.229    0.017 {method 'run_backward' of 'torch._C._EngineBase' objects}
        2    0.000    0.000    2.197    1.098 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/api.py:103(post)
        2    0.000    0.000    2.197    1.098 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/api.py:14(request)
        2    0.000    0.000    2.193    1.096 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/sessions.py:500(request)
        2    0.000    0.000    2.182    1.091 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/sessions.py:671(send)
       30    0.009    0.000    2.072    0.069 /home/paul/projects/ritm-interactive-segmentation/isegm/model/modeling/ocr.py:55(forward)
     1336    0.018    0.000    1.757    0.001 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/nn/functional.py:3772(interpolate)
     1336    1.733    0.001    1.733    0.001 {built-in method torch._C._nn.upsample_bilinear2d}
       30    0.095    0.003    1.718    0.057 /home/paul/projects/ritm-interactive-segmentation/isegm/model/modeling/ocr.py:117(forward)
      446    1.646    0.004    1.646    0.004 {method 'item' of 'torch._C._TensorBase' objects}
        1    0.000    0.000    1.636    1.636 /home/paul/projects/ritm-interactive-segmentation/supervisely/src/sly_functions.py:36(download_image_from_context)
        1    0.000    0.000    1.636    1.636 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/api/image_api.py:495(download_np)
        1    0.000    0.000    1.592    1.592 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/api/image_api.py:486(_download)
        1    0.000    0.000    1.592    1.592 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/api/api.py:228(post)
      176    0.001    0.000    1.282    0.007 /usr/lib/python3.8/socket.py:655(readinto)
      176    0.002    0.000    1.279    0.007 /usr/lib/python3.8/ssl.py:1230(recv_into)
      176    0.001    0.000    1.278    0.007 /usr/lib/python3.8/ssl.py:1090(read)
      176    1.277    0.007    1.277    0.007 {method 'read' of '_ssl._SSLSocket' objects}
        2    0.000    0.000    1.245    0.623 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/adapters.py:436(send)
       30    0.006    0.000    1.131    0.038 /home/paul/projects/ritm-interactive-segmentation/isegm/model/is_model.py:94(get_coord_features)
       30    0.097    0.003    1.018    0.034 /home/paul/projects/ritm-interactive-segmentation/isegm/model/ops.py:102(forward)
      224    0.316    0.001    0.981    0.004 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/predictors/brs.py:178(get_prediction_logits)
      224    0.542    0.002    0.954    0.004 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/predictors/brs_functors.py:103(unpack_opt_params)
        4    0.000    0.000    0.937    0.234 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/models.py:887(content)
       35    0.001    0.000    0.937    0.027 {method 'join' of 'bytes' objects}
       73    0.000    0.000    0.936    0.013 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/models.py:812(generate)
       73    0.001    0.000    0.935    0.013 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/response.py:607(stream)
       72    0.003    0.000    0.935    0.013 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/response.py:535(read)
       72    0.000    0.000    0.928    0.013 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/response.py:487(_fp_read)
       72    0.001    0.000    0.927    0.013 /usr/lib/python3.8/http/client.py:448(read)
       72    0.001    0.000    0.925    0.013 /usr/lib/python3.8/http/client.py:480(readinto)
       72    0.002    0.000    0.925    0.013 {method 'readinto' of '_io.BufferedReader' objects}
       30    0.396    0.013    0.920    0.031 /home/paul/projects/ritm-interactive-segmentation/isegm/model/ops.py:51(get_coord_features)
        2    0.000    0.000    0.880    0.440 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/connection.py:361(connect)
       92    0.072    0.001    0.849    0.009 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/predictors/brs.py:23(_get_clicks_maps_nd)
      702    0.712    0.001    0.712    0.001 {method 'cpu' of 'torch._C._TensorBase' objects}
     1340    0.652    0.000    0.652    0.000 {built-in method torch.sum}
        1    0.000    0.000    0.643    0.643 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/connectionpool.py:522(urlopen)
        1    0.000    0.000    0.642    0.642 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/connectionpool.py:361(_make_request)
        1    0.000    0.000    0.605    0.605 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/app/v1/app_service.py:478(send_response)
        1    0.000    0.000    0.605    0.605 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/worker_api/agent_api.py:151(put_stream_with_data)
        1    0.000    0.000    0.605    0.605 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/worker_api/retriers.py:62(request)
        1    0.000    0.000    0.604    0.604 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/worker_api/agent_api.py:110(_put_out_stream)
        1    0.000    0.000    0.604    0.604 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/worker_api/agent_api.py:40(_send_request)
     1282    0.568    0.000    0.568    0.000 {built-in method numpy.zeros}
        2    0.000    0.000    0.506    0.253 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/ssl_.py:355(ssl_wrap_socket)
     1117    0.004    0.000    0.471    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/_tensor.py:34(wrapped)
      128    0.136    0.001    0.468    0.004 /home/paul/projects/ritm-interactive-segmentation/isegm/model/metrics.py:86(_compute_iou)
        1    0.000    0.000    0.455    0.455 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/connectionpool.py:1034(_validate_conn)
        2    0.000    0.000    0.426    0.213 /usr/lib/python3.8/http/client.py:1240(endheaders)
        8    0.000    0.000    0.426    0.053 /usr/lib/python3.8/http/client.py:943(send)
        2    0.000    0.000    0.426    0.213 /usr/lib/python3.8/http/client.py:1002(_send_output)
93224/4374    0.200    0.000    0.423    0.000 /usr/lib/python3.8/copy.py:128(deepcopy)
       30    0.070    0.002    0.397    0.013 /home/paul/projects/ritm-interactive-segmentation/isegm/model/modeling/hrnet_ocr.py:469(compute_pre_stage_features)
       92    0.001    0.000    0.397    0.004 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/predictors/base.py:97(apply_transforms)
       92    0.027    0.000    0.396    0.004 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/transforms/flip.py:9(transform)
        2    0.000    0.000    0.370    0.185 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/connection.py:161(_new_conn)
        2    0.000    0.000    0.370    0.185 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/connection.py:37(create_connection)
      894    0.368    0.000    0.368    0.000 {method 'pow' of 'torch._C._TensorBase' objects}
        2    0.000    0.000    0.362    0.181 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/ssl_.py:481(_ssl_wrap_socket_impl)
        2    0.000    0.000    0.362    0.181 /usr/lib/python3.8/ssl.py:494(wrap_socket)
        2    0.000    0.000    0.362    0.181 /usr/lib/python3.8/ssl.py:983(_create)
        2    0.000    0.000    0.362    0.181 /usr/lib/python3.8/ssl.py:1302(do_handshake)
        2    0.362    0.181    0.362    0.181 {method 'do_handshake' of '_ssl._SSLSocket' objects}
        2    0.000    0.000    0.361    0.180 /usr/lib/python3.8/http/client.py:1304(getresponse)
        2    0.000    0.000    0.361    0.180 /usr/lib/python3.8/http/client.py:309(begin)
        2    0.000    0.000    0.360    0.180 /usr/lib/python3.8/http/client.py:276(_read_status)
       35    0.000    0.000    0.360    0.010 {method 'readline' of '_io.BufferedReader' objects}
     8468    0.048    0.000    0.352    0.000 /usr/lib/python3.8/copy.py:258(_reconstruct)
        2    0.349    0.174    0.349    0.174 {method 'connect' of '_socket.socket' objects}
       92    0.021    0.000    0.322    0.003 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/cuda/memory.py:121(empty_cache)
      274    0.319    0.001    0.319    0.001 {built-in method torch.cat}
      478    0.304    0.001    0.304    0.001 {method 'repeat' of 'torch._C._TensorBase' objects}
       92    0.224    0.002    0.301    0.003 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/transforms/flip.py:23(inv_transform)
       92    0.300    0.003    0.300    0.003 {built-in method torch._C._cuda_emptyCache}
       30    0.153    0.005    0.277    0.009 /home/paul/projects/ritm-interactive-segmentation/isegm/model/modeling/ocr.py:19(forward)
      476    0.272    0.001    0.272    0.001 {built-in method torch.max}
       30    0.009    0.000    0.241    0.008 /home/paul/projects/ritm-interactive-segmentation/isegm/model/is_model.py:80(prepare_input)
       30    0.018    0.001    0.231    0.008 /home/paul/projects/ritm-interactive-segmentation/isegm/model/ops.py:122(__call__)
       92    0.008    0.000    0.231    0.003 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/transforms/flip.py:16(<listcomp>)
     8468    0.054    0.000    0.230    0.000 /usr/lib/python3.8/copy.py:226(_deepcopy_dict)
     4278    0.008    0.000    0.222    0.000 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/clicker.py:114(copy)
      476    0.217    0.000    0.217    0.000 {built-in method torch.abs}
       92    0.001    0.000    0.211    0.002 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/clicker.py:92(get_state)
       92    0.006    0.000    0.209    0.002 /usr/lib/python3.8/copy.py:200(_deepcopy_list)
      748    0.199    0.000    0.199    0.000 {method 'view' of 'torch._C._TensorBase' objects}
      509    0.187    0.000    0.187    0.000 {method 'float' of 'torch._C._TensorBase' objects}
       92    0.002    0.000    0.162    0.002 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/predictors/base.py:105(get_points_nd)
       30    0.002    0.000    0.158    0.005 /home/paul/projects/ritm-interactive-segmentation/isegm/model/modeling/hrnet_ocr.py:479(aggregate_hrnet_features)
      184    0.150    0.001    0.150    0.001 {built-in method torch.flip}
      315    0.145    0.000    0.145    0.000 {built-in method torch.sigmoid}
        2    0.144    0.072    0.144    0.072 {method 'load_verify_locations' of '_ssl._SSLContext' objects}
    91800    0.131    0.000    0.131    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/nn/modules/module.py:1601(__getattr__)
       93    0.119    0.001    0.119    0.001 {built-in method torch.tensor}
       90    0.098    0.001    0.098    0.001 {built-in method torch.matmul}
    36237    0.097    0.000    0.097    0.000 {built-in method torch._C._get_tracing_state}
      223    0.001    0.000    0.097    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/_tensor.py:846(__rsub__)
      223    0.096    0.000    0.096    0.000 {built-in method torch.rsub}
2770/2396    0.017    0.000    0.095    0.000 {built-in method numpy.core._multiarray_umath.implement_array_function}
      256    0.092    0.000    0.092    0.000 {built-in method torch.mean}
       60    0.000    0.000    0.086    0.001 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/nn/functional.py:1813(softmax)
       60    0.085    0.001    0.085    0.001 {method 'softmax' of 'torch._C._TensorBase' objects}
      666    0.085    0.000    0.085    0.000 {method 'detach' of 'torch._C._TensorBase' objects}
       30    0.063    0.002    0.084    0.003 /home/paul/projects/ritm-interactive-segmentation/isegm/model/ops.py:112(forward)
     8464    0.020    0.000    0.070    0.000 /usr/lib/python3.8/copy.py:209(_deepcopy_tuple)
       33    0.067    0.002    0.067    0.002 {method 'contiguous' of 'torch._C._TensorBase' objects}
       92    0.000    0.000    0.063    0.001 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/transforms/base.py:28(inv_transform)
       30    0.060    0.002    0.060    0.002 {method 'add_' of 'torch._C._TensorBase' objects}
     4890    0.020    0.000    0.058    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/nn/modules/container.py:290(__getitem__)
       60    0.058    0.001    0.058    0.001 {built-in method torch.arange}
       30    0.055    0.002    0.055    0.002 {built-in method torch.stack}
      314    0.001    0.000    0.052    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/optimize/_differentiable_functions.py:254(_update_grad)
      223    0.001    0.000    0.051    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/optimize/_differentiable_functions.py:166(update_grad)
      223    0.004    0.000    0.051    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/optimize/_differentiable_functions.py:162(grad_wrapped)
     8464    0.017    0.000    0.050    0.000 /usr/lib/python3.8/copy.py:210(<listcomp>)
      131    0.002    0.000    0.048    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/autograd/__init__.py:50(_make_grads)
      131    0.046    0.000    0.046    0.000 {built-in method torch.ones_like}
        1    0.000    0.000    0.043    0.043 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/imaging/image.py:236(read_bytes)
      224    0.041    0.000    0.041    0.000 {built-in method torch.chunk}
        1    0.040    0.040    0.040    0.040 {imdecode}
       92    0.039    0.000    0.039    0.000 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/predictors/brs_functors.py:36(init_click)
      899    0.037    0.000    0.037    0.000 {method 'reduce' of 'numpy.ufunc' objects}
       30    0.037    0.001    0.037    0.001 {method 'div_' of 'torch._C._TensorBase' objects}
      150    0.036    0.000    0.036    0.000 {method 'permute' of 'torch._C._TensorBase' objects}
      229    0.036    0.000    0.036    0.000 {method 'copy' of 'numpy.ndarray' objects}
     4890    0.015    0.000    0.035    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/nn/modules/container.py:281(_get_abs_string_index)
       30    0.035    0.001    0.035    0.001 {method 'min' of 'torch._C._TensorBase' objects}
       92    0.000    0.000    0.035    0.000 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/predictors/base.py:107(<listcomp>)
      184    0.022    0.000    0.035    0.000 {built-in method builtins.sum}
       30    0.000    0.000    0.035    0.001 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/nn/modules/activation.py:776(forward)
       30    0.000    0.000    0.035    0.001 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/nn/functional.py:1618(leaky_relu)
       30    0.034    0.001    0.034    0.001 {built-in method torch._C._nn.leaky_relu}
        1    0.000    0.000    0.034    0.034 /home/paul/projects/ritm-interactive-segmentation/interactive_demo/controller.py:29(set_image)
      223    0.001    0.000    0.033    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/optimize/_optimize.py:79(derivative)
       91    0.017    0.000    0.031    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/optimize/_constraints.py:406(old_bound_to_new)
       65    0.030    0.000    0.030    0.000 {method 'unsqueeze' of 'torch._C._TensorBase' objects}
     9420    0.011    0.000    0.029    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/nn/modules/batchnorm.py:408(_check_input_dim)
    16936    0.010    0.000    0.029    0.000 /usr/lib/python3.8/copy.py:263(<genexpr>)
      223    0.001    0.000    0.026    0.000 <__array_function__ internals>:177(array_equal)
      907    0.024    0.000    0.024    0.000 {built-in method numpy.array}
      446    0.002    0.000    0.024    0.000 <__array_function__ internals>:177(all)
      223    0.012    0.000    0.024    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/numeric.py:2407(array_equal)
        3    0.001    0.000    0.022    0.007 /home/paul/projects/ritm-interactive-segmentation/interactive_demo/controller.py:104(reset_last_object)
       30    0.000    0.000    0.022    0.001 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/functional.py:396(meshgrid)
23924/13900    0.017    0.000    0.022    0.000 {built-in method builtins.len}
    25610    0.021    0.000    0.021    0.000 {method 'dim' of 'torch._C._TensorBase' objects}
       30    0.000    0.000    0.021    0.001 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/functional.py:492(_meshgrid)
       30    0.000    0.000    0.021    0.001 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/functional.py:140(split)
       30    0.021    0.001    0.021    0.001 {method 'clone' of 'torch._C._TensorBase' objects}
       30    0.001    0.000    0.021    0.001 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/_tensor.py:788(split)
      446    0.002    0.000    0.021    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/fromnumeric.py:2432(all)
       30    0.021    0.001    0.021    0.001 {built-in method torch.meshgrid}
        4    0.000    0.000    0.021    0.005 /home/paul/projects/ritm-interactive-segmentation/interactive_demo/controller.py:113(reset_predictor)
       30    0.020    0.001    0.020    0.001 {built-in method torch.split_with_sizes}
        3    0.000    0.000    0.020    0.007 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/predictors/brs.py:18(set_input_image)
        3    0.000    0.000    0.020    0.007 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/predictors/base.py:42(set_input_image)
        2    0.000    0.000    0.020    0.010 /usr/lib/python3.8/socket.py:901(getaddrinfo)
        2    0.020    0.010    0.020    0.010 {built-in method _socket.getaddrinfo}
      537    0.002    0.000    0.020    0.000 <__array_function__ internals>:177(copy)
       30    0.020    0.001    0.020    0.001 {method 'sub_' of 'torch._C._TensorBase' objects}
      455    0.003    0.000    0.019    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/fromnumeric.py:69(_wrapreduction)
       30    0.018    0.001    0.018    0.001 {method 'mul_' of 'torch._C._TensorBase' objects}
   195159    0.017    0.000    0.017    0.000 {method 'get' of 'dict' objects}
      537    0.001    0.000    0.016    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/lib/function_base.py:871(copy)
    17028    0.011    0.000    0.014    0.000 /usr/lib/python3.8/copy.py:242(_keep_alive)
        3    0.000    0.000    0.014    0.005 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torchvision/transforms/transforms.py:129(__call__)
     9420    0.008    0.000    0.014    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/backends/__init__.py:31(__get__)
        3    0.004    0.001    0.014    0.005 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torchvision/transforms/functional.py:125(to_tensor)
     8740    0.013    0.000    0.013    0.000 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/predictors/base.py:107(<genexpr>)
       91    0.013    0.000    0.013    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/optimize/_lbfgsb_py.py:289(<listcomp>)
     9957    0.013    0.000    0.013    0.000 {built-in method torch._C._has_torch_function_unary}
     4860    0.007    0.000    0.012    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/nn/modules/container.py:207(__iter__)
      223    0.001    0.000    0.012    0.000 {method 'all' of 'numpy.ndarray' objects}
        1    0.000    0.000    0.012    0.012 /home/paul/projects/ritm-interactive-segmentation/supervisely/src/sly_functions.py:151(get_bitmap_from_mask)
   140118    0.012    0.000    0.012    0.000 {built-in method builtins.id}
       94    0.000    0.000    0.011    0.000 <__array_function__ internals>:177(zeros_like)
        1    0.000    0.000    0.011    0.011 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/geometry/bitmap.py:244(resize)
      359    0.011    0.000    0.011    0.000 {method 'astype' of 'numpy.ndarray' objects}
      223    0.000    0.000    0.011    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/_methods.py:61(_all)
      702    0.011    0.000    0.011    0.000 {method 'numpy' of 'torch._C._TensorBase' objects}
        1    0.000    0.000    0.011    0.011 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/geometry/bitmap_base.py:17(resize_origin_and_bitmap)
        1    0.000    0.000    0.011    0.011 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/imaging/image.py:728(resize_inter_nearest)
       92    0.000    0.000    0.011    0.000 <__array_function__ internals>:177(clip)
        1    0.000    0.000    0.010    0.010 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/skimage/transform/_warps.py:69(resize)
       94    0.001    0.000    0.010    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/numeric.py:77(zeros_like)
       91    0.001    0.000    0.010    0.000 {method 'any' of 'numpy.ndarray' objects}
        1    0.000    0.000    0.010    0.010 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/ndimage/_interpolation.py:691(zoom)
       92    0.000    0.000    0.010    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/fromnumeric.py:2111(clip)
        1    0.009    0.009    0.009    0.009 {built-in method scipy.ndimage._nd_image.zoom_shift}
       91    0.000    0.000    0.009    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/_methods.py:55(_any)
       92    0.000    0.000    0.009    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/fromnumeric.py:51(_wrapfunc)
      128    0.002    0.000    0.009    0.000 {method 'mean' of 'numpy.ndarray' objects}
       92    0.000    0.000    0.009    0.000 {method 'clip' of 'numpy.ndarray' objects}
       91    0.002    0.000    0.009    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/optimize/_lbfgsb_py.py:430(__init__)
       92    0.001    0.000    0.009    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/_methods.py:127(_clip)
    67732    0.008    0.000    0.008    0.000 /usr/lib/python3.8/copy.py:182(_deepcopy_atomic)
    25650    0.007    0.000    0.008    0.000 {built-in method builtins.isinstance}
        2    0.000    0.000    0.008    0.004 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/sessions.py:749(merge_environment_settings)
       95    0.000    0.000    0.008    0.000 <__array_function__ internals>:177(copyto)
        2    0.000    0.000    0.008    0.004 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/utils.py:819(get_environ_proxies)
        4    0.001    0.000    0.007    0.002 /usr/lib/python3.8/urllib/request.py:2494(getproxies_environment)
      128    0.003    0.000    0.007    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/_methods.py:164(_mean)
      562    0.001    0.000    0.007    0.000 /usr/lib/python3.8/_collections_abc.py:742(__iter__)
     9420    0.007    0.000    0.007    0.000 {built-in method torch._C._get_cudnn_enabled}
     9420    0.006    0.000    0.006    0.000 {built-in method torch._C._has_torch_function_variadic}
        1    0.000    0.000    0.006    0.006 /home/paul/projects/ritm-interactive-segmentation/interactive_demo/controller.py:36(set_mask)
      411    0.006    0.000    0.006    0.000 {built-in method torch.from_numpy}
       91    0.006    0.000    0.006    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/optimize/_constraints.py:419(<listcomp>)
    10020    0.004    0.000    0.006    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/nn/modules/container.py:311(__len__)
      520    0.005    0.000    0.005    0.000 /usr/lib/python3.8/os.py:670(__getitem__)
      184    0.004    0.000    0.005    0.000 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/predictors/base.py:118(<listcomp>)
      446    0.002    0.000    0.005    0.000 <__array_function__ internals>:177(atleast_1d)
      132    0.001    0.000    0.005    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/optimize/_differentiable_functions.py:240(update_x)
       92    0.005    0.000    0.005    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/_methods.py:108(_clip_dep_invoke_with_casting)
        1    0.000    0.000    0.005    0.005 /home/paul/projects/ritm-interactive-segmentation/interactive_demo/controller.py:96(finish_object)
     8468    0.004    0.000    0.005    0.000 /usr/lib/python3.8/copyreg.py:90(__newobj__)
        1    0.000    0.000    0.005    0.005 /home/paul/projects/ritm-interactive-segmentation/supervisely/src/sly_functions.py:161(optimize_crop)
        1    0.000    0.000    0.005    0.005 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/imaging/image.py:684(resize)
        1    0.005    0.005    0.005    0.005 {resize}
       91    0.004    0.000    0.004    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/optimize/_constraints.py:421(<listcomp>)
        1    0.000    0.000    0.004    0.004 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/imaging/image.py:281(write)
       91    0.001    0.000    0.004    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/sparse/linalg/_interface.py:157(__init__)
     8468    0.004    0.000    0.004    0.000 {method '__reduce_ex__' of 'object' objects}
      437    0.004    0.000    0.004    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/autograd/grad_mode.py:48(__init__)
     8592    0.004    0.000    0.004    0.000 {built-in method __new__ of type object at 0x8b4b80}
      437    0.002    0.000    0.004    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/autograd/grad_mode.py:57(__exit__)
        1    0.004    0.004    0.004    0.004 {imwrite}
      437    0.002    0.000    0.003    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/autograd/grad_mode.py:53(__enter__)
    17292    0.003    0.000    0.003    0.000 {built-in method builtins.getattr}
        2    0.003    0.002    0.003    0.002 {cvtColor}
        2    0.000    0.000    0.003    0.002 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/ssl_.py:250(create_urllib3_context)
       91    0.001    0.000    0.003    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/sparse/_sputils.py:221(isshape)
        1    0.000    0.000    0.003    0.003 /home/paul/projects/ritm-interactive-segmentation/supervisely/src/sly_functions.py:127(unpack_bitmap)
        1    0.000    0.000    0.003    0.003 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/geometry/bitmap_base.py:115(to_json)
      223    0.001    0.000    0.003    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/numeric.py:1878(isscalar)
        3    0.003    0.001    0.003    0.001 {method 'div' of 'torch._C._TensorBase' objects}
        1    0.000    0.000    0.003    0.003 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/geometry/bitmap.py:343(data_2_base64)
        2    0.000    0.000    0.003    0.002 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/sessions.py:454(__exit__)
        2    0.000    0.000    0.003    0.002 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/sessions.py:794(close)
    19721    0.003    0.000    0.003    0.000 {method 'append' of 'list' objects}
       91    0.000    0.000    0.003    0.000 <__array_function__ internals>:177(einsum)
        4    0.000    0.000    0.003    0.001 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/adapters.py:362(close)
     4865    0.003    0.000    0.003    0.000 {built-in method builtins.iter}
        4    0.000    0.000    0.003    0.001 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/poolmanager.py:216(clear)
        2    0.000    0.000    0.003    0.001 /usr/lib/python3.8/ssl.py:482(__new__)
        4    0.000    0.000    0.003    0.001 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/_collections.py:92(clear)
      548    0.001    0.000    0.003    0.000 <__array_function__ internals>:177(ndim)
        2    0.000    0.000    0.003    0.001 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/poolmanager.py:174(<lambda>)
        2    0.001    0.000    0.003    0.001 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/connectionpool.py:483(close)
      874    0.002    0.000    0.003    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/autograd/grad_mode.py:149(__init__)
      766    0.003    0.000    0.003    0.000 {method 'size' of 'torch._C._TensorBase' objects}
        2    0.000    0.000    0.003    0.001 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/sessions.py:457(prepare_request)
        2    0.001    0.001    0.003    0.001 /home/paul/projects/ritm-interactive-segmentation/interactive_demo/controller.py:136(result_mask)
        1    0.000    0.000    0.003    0.003 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/PIL/Image.py:2346(save)
        1    0.000    0.000    0.002    0.002 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/PIL/PngImagePlugin.py:1242(_save)
        1    0.000    0.000    0.002    0.002 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/PIL/ImageFile.py:499(_save)
        1    0.000    0.000    0.002    0.002 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/PIL/ImageFile.py:527(_encode_tile)
        1    0.002    0.002    0.002    0.002 {method 'encode' of 'ImagingEncoder' objects}
        2    0.000    0.000    0.002    0.001 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/utils.py:759(should_bypass_proxies)
      182    0.001    0.000    0.002    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/sparse/_sputils.py:199(isintlike)
     4880    0.002    0.000    0.002    0.000 {method 'values' of 'collections.OrderedDict' objects}
      446    0.002    0.000    0.002    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/shape_base.py:23(atleast_1d)
      184    0.001    0.000    0.002    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/_methods.py:93(_clip_dep_is_scalar_nan)
     8811    0.002    0.000    0.002    0.000 {built-in method builtins.hasattr}
      128    0.002    0.000    0.002    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/_methods.py:67(_count_reduce_items)
     8482    0.002    0.000    0.002    0.000 {method 'update' of 'dict' objects}
    13232    0.002    0.000    0.002    0.000 {method 'items' of 'dict' objects}
    17142    0.002    0.000    0.002    0.000 {built-in method builtins.round}
        2    0.000    0.000    0.002    0.001 /usr/lib/python3.8/urllib/request.py:2525(proxy_bypass_environment)
     1147    0.002    0.000    0.002    0.000 {built-in method torch._C._has_torch_function}
       30    0.000    0.000    0.002    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/nn/modules/dropout.py:149(forward)
        2    0.000    0.000    0.002    0.001 /usr/lib/python3.8/http/client.py:929(close)
        2    0.000    0.000    0.002    0.001 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/models.py:352(prepare)
       91    0.000    0.000    0.002    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/einsumfunc.py:1009(einsum)
        2    0.000    0.000    0.002    0.001 /usr/lib/python3.8/socket.py:496(close)
     5072    0.002    0.000    0.002    0.000 {built-in method _operator.index}
        2    0.000    0.000    0.002    0.001 /usr/lib/python3.8/ssl.py:1298(_real_close)
        3    0.002    0.001    0.002    0.001 /home/paul/projects/ritm-interactive-segmentation/interactive_demo/controller.py:124(current_object_prob)
        1    0.000    0.000    0.002    0.002 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/connection.py:231(request)
       91    0.002    0.000    0.002    0.000 {built-in method numpy.core._multiarray_umath.c_einsum}
        2    0.000    0.000    0.001    0.001 /usr/lib/python3.8/socket.py:492(_real_close)
       30    0.000    0.000    0.001    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/nn/functional.py:1305(dropout2d)
       95    0.000    0.000    0.001    0.000 <__array_function__ internals>:177(empty_like)
        2    0.001    0.001    0.001    0.001 {function socket.close at 0x7ff5426c4d30}
        1    0.000    0.000    0.001    0.001 /usr/lib/python3.8/http/client.py:1253(request)
        1    0.000    0.000    0.001    0.001 /usr/lib/python3.8/http/client.py:1258(_send_request)
       72    0.000    0.000    0.001    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/response.py:375(_init_decoder)
     1534    0.001    0.000    0.001    0.000 {built-in method torch.is_grad_enabled}
       74    0.000    0.000    0.001    0.000 /usr/lib/python3.8/contextlib.py:117(__exit__)
        8    0.000    0.000    0.001    0.000 /usr/lib/python3.8/ssl.py:1193(sendall)
        5    0.000    0.000    0.001    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/url.py:333(parse_url)
       91    0.000    0.000    0.001    0.000 <__array_function__ internals>:177(atleast_2d)
        2    0.000    0.000    0.001    0.001 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/adapters.py:333(get_connection)
       92    0.000    0.000    0.001    0.000 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/predictors/brs.py:45(get_states)
      185    0.001    0.000    0.001    0.000 {built-in method builtins.min}
     8729    0.001    0.000    0.001    0.000 {built-in method builtins.issubclass}
        8    0.000    0.000    0.001    0.000 /usr/lib/python3.8/ssl.py:1166(send)
       93    0.001    0.000    0.001    0.000 /usr/lib/python3.8/_collections_abc.py:657(get)
        8    0.001    0.000    0.001    0.000 {method 'write' of '_ssl._SSLSocket' objects}
      223    0.001    0.000    0.001    0.000 {method 'requires_grad_' of 'torch._C._TensorBase' objects}
      150    0.001    0.000    0.001    0.000 {built-in method builtins.next}
     4650    0.001    0.000    0.001    0.000 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/clicker.py:110(coords_and_indx)
        2    0.000    0.000    0.001    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/geometry/bitmap.py:125(__init__)
      223    0.001    0.000    0.001    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/autograd/grad_mode.py:100(__enter__)
        2    0.000    0.000    0.001    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/poolmanager.py:287(connection_from_url)
        2    0.000    0.000    0.001    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/models.py:410(prepare_url)
      182    0.001    0.000    0.001    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/getlimits.py:476(__new__)
      128    0.001    0.000    0.001    0.000 /home/paul/projects/ritm-interactive-segmentation/isegm/utils/misc.py:7(get_dims_with_exclusion)
       72    0.001    0.000    0.001    0.000 {method 'tobytes' of 'memoryview' objects}
     1663    0.001    0.000    0.001    0.000 {built-in method numpy.asarray}
       30    0.001    0.000    0.001    0.000 {built-in method torch.feature_dropout}
      548    0.001    0.000    0.001    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/fromnumeric.py:3152(ndim)
      279    0.000    0.000    0.001    0.000 /usr/lib/python3.8/abc.py:96(__instancecheck__)
        2    0.000    0.000    0.001    0.000 /usr/lib/python3.8/http/client.py:222(parse_headers)
      223    0.001    0.000    0.001    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/autograd/grad_mode.py:104(__exit__)
       92    0.000    0.000    0.001    0.000 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/predictors/base.py:89(_get_transform_states)
     4278    0.001    0.000    0.001    0.000 {built-in method builtins.setattr}
        2    0.000    0.000    0.001    0.000 /usr/lib/python3.8/email/parser.py:59(parsestr)
        2    0.000    0.000    0.001    0.000 /usr/lib/python3.8/email/parser.py:41(parse)
       74    0.000    0.000    0.001    0.000 /usr/lib/python3.8/contextlib.py:238(helper)
      504    0.000    0.000    0.001    0.000 /usr/lib/python3.8/os.py:693(__iter__)
      176    0.001    0.000    0.001    0.000 {method '_checkReadable' of '_io._IOBase' objects}
        7    0.000    0.000    0.001    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/url.py:274(_normalize_host)
      222    0.001    0.000    0.001    0.000 {method 'ravel' of 'numpy.ndarray' objects}
     1320    0.001    0.000    0.001    0.000 {built-in method torch._C._set_grad_enabled}
        2    0.000    0.000    0.001    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/poolmanager.py:225(connection_from_host)
        2    0.000    0.000    0.001    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/poolmanager.py:248(connection_from_context)
        4    0.001    0.000    0.001    0.000 /usr/lib/python3.8/socket.py:219(__init__)
      455    0.001    0.000    0.001    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/fromnumeric.py:70(<dictcomp>)
       92    0.001    0.000    0.001    0.000 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/predictors/base.py:90(<listcomp>)
        6    0.000    0.000    0.001    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/url.py:300(<listcomp>)
      108    0.001    0.000    0.001    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/_collections.py:156(__getitem__)
      144    0.000    0.000    0.001    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/response.py:431(_error_catcher)
       91    0.000    0.000    0.001    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/shape_base.py:81(atleast_2d)
        2    0.000    0.000    0.001    0.000 /usr/lib/python3.8/email/feedparser.py:173(feed)
        2    0.000    0.000    0.001    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/poolmanager.py:263(connection_from_pool_key)
      279    0.001    0.000    0.001    0.000 {built-in method _abc._abc_instancecheck}
        4    0.000    0.000    0.001    0.000 /usr/lib/python3.8/email/feedparser.py:178(_call_parse)
        4    0.000    0.000    0.000    0.000 /usr/lib/python3.8/email/feedparser.py:218(_parsegen)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/poolmanager.py:189(_new_pool)
       18    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/url.py:305(_idna_encode)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/connectionpool.py:914(__init__)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/utils.py:194(get_netrc_auth)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/connectionpool.py:169(__init__)
      274    0.000    0.000    0.000    0.000 {method 'reshape' of 'numpy.ndarray' objects}
       14    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/sessions.py:61(merge_setting)
      184    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/_methods.py:103(_clip_dep_is_byte_swapped)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/sessions.py:389(__init__)
        7    0.000    0.000    0.000    0.000 <__array_function__ internals>:177(any)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/geometry/bitmap.py:41(_find_mask_tight_bbox)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/adapters.py:296(build_response)
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/predictors/__init__.py:8(get_predictor)
      687    0.000    0.000    0.000    0.000 {method 'startswith' of 'bytes' objects}
     1000    0.000    0.000    0.000    0.000 /usr/lib/python3.8/os.py:752(decode)
       20    0.000    0.000    0.000    0.000 /usr/lib/python3.8/urllib/parse.py:369(urlparse)
      131    0.000    0.000    0.000    0.000 {built-in method torch._C._are_functorch_transforms_active}
        7    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/fromnumeric.py:2333(any)
       74    0.000    0.000    0.000    0.000 /usr/lib/python3.8/contextlib.py:82(__init__)
     1278    0.000    0.000    0.000    0.000 {method 'decode' of 'bytes' objects}
       90    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/_VF.py:26(__getattr__)
       12    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/structures.py:40(__init__)
       91    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/sparse/linalg/_interface.py:142(__new__)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/ndimage/_ni_support.py:73(_get_output)
       15    0.000    0.000    0.000    0.000 /usr/lib/python3.8/_collections_abc.py:824(update)
      500    0.000    0.000    0.000    0.000 {method 'tobytes' of 'numpy.ndarray' objects}
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/geometry/bitmap_base.py:77(__init__)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/response.py:633(from_httplib)
      520    0.000    0.000    0.000    0.000 /usr/lib/python3.8/os.py:748(encode)
       74    0.000    0.000    0.000    0.000 /usr/lib/python3.8/contextlib.py:108(__enter__)
       92    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/clicker.py:58(add_click)
      223    0.000    0.000    0.000    0.000 {method 'item' of 'numpy.ndarray' objects}
        7    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/url.py:210(_encode_invalid_chars)
       13    0.000    0.000    0.000    0.000 {built-in method posix.stat}
        2    0.000    0.000    0.000    0.000 {method '_wrap_socket' of '_ssl._SSLContext' objects}
       22    0.000    0.000    0.000    0.000 /usr/lib/python3.8/queue.py:121(put)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/skimage/transform/_warps.py:641(_clip_warp_output)
        9    0.000    0.000    0.000    0.000 /usr/lib/python3.8/genericpath.py:16(exists)
       24    0.000    0.000    0.000    0.000 /usr/lib/python3.8/queue.py:153(get)
        3    0.000    0.000    0.000    0.000 {built-in method torch.zeros_like}
      666    0.000    0.000    0.000    0.000 {built-in method numpy.asanyarray}
       92    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/cuda/__init__.py:176(is_initialized)
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/predictors/brs.py:154(__init__)
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/geometry/point_location.py:282(clone)
      184    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/predictors/base.py:121(<listcomp>)
       22    0.000    0.000    0.000    0.000 /usr/lib/python3.8/urllib/parse.py:425(urlsplit)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/models.py:484(prepare_headers)
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/cookies.py:124(extract_cookies_to_jar)
      176    0.000    0.000    0.000    0.000 {method '_checkClosed' of '_io._IOBase' objects}
  645/641    0.000    0.000    0.000    0.000 {method 'encode' of 'str' objects}
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/email/feedparser.py:471(_parse_headers)
        6    0.000    0.000    0.000    0.000 /usr/lib/python3.8/posixpath.py:228(expanduser)
       18    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/connection.py:221(putheader)
       38    0.000    0.000    0.000    0.000 {built-in method builtins.any}
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/adapters.py:372(request_url)
       14    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/utils.py:335(to_key_val_list)
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/utils.py:831(select_proxy)
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/adapters.py:136(__init__)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/models.py:611(prepare_cookies)
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/predictors/brs.py:10(__init__)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/adapters.py:239(cert_verify)
        6    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/cookies.py:521(cookiejar_from_dict)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/supervisely/src/sly_functions.py:95(get_click_list_from_points)
      455    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/einsumfunc.py:1001(_einsum_dispatcher)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/cookies.py:140(get_cookie_header)
       92    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/predictors/base.py:108(<listcomp>)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/connectionpool.py:244(_get_conn)
      935    0.000    0.000    0.000    0.000 {method 'lower' of 'str' objects}
        6    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/cookies.py:35(__init__)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/PIL/Image.py:609(_ensure_mutable)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/PIL/Image.py:603(_copy)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/interactive_demo/controller.py:12(__init__)
      446    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/fromnumeric.py:2427(_all_dispatcher)
        2    0.000    0.000    0.000    0.000 {method 'set_ciphers' of '_ssl._SSLContext' objects}
      537    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/lib/function_base.py:867(_copy_dispatcher)
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/predictors/base.py:8(__init__)
      131    0.000    0.000    0.000    0.000 {method 'numel' of 'torch._C._TensorBase' objects}
       14    0.000    0.000    0.000    0.000 /usr/lib/python3.8/_collections_abc.py:664(__contains__)
      191    0.000    0.000    0.000    0.000 {built-in method builtins.max}
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/connection.py:536(_match_hostname)
       74    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/response.py:9(is_fp_closed)
        1    0.000    0.000    0.000    0.000 {method 'copy' of 'ImagingCore' objects}
       91    0.000    0.000    0.000    0.000 {method 'match' of 're.Pattern' objects}
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/connectionpool.py:998(_new_conn)
       92    0.000    0.000    0.000    0.000 {built-in method torch._C._cuda_isInBadFork}
      455    0.000    0.000    0.000    0.000 {built-in method builtins.callable}
      443    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/_jit_internal.py:1102(is_scripting)
       43    0.000    0.000    0.000    0.000 /usr/lib/python3.8/email/_policybase.py:311(header_fetch_parse)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/supervisely/src/sly_functions.py:107(get_pos_neg_points_list_from_context)
      128    0.000    0.000    0.000    0.000 {method 'remove' of 'list' objects}
       18    0.000    0.000    0.000    0.000 /usr/lib/python3.8/http/client.py:1212(putheader)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/utils.py:767(get_proxy)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/email/message.py:451(items)
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/geometry/rectangle.py:59(__init__)
      178    0.000    0.000    0.000    0.000 /usr/lib/python3.8/socket.py:694(readable)
       44    0.000    0.000    0.000    0.000 /usr/lib/python3.8/threading.py:341(notify)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/email/message.py:459(<listcomp>)
      131    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/autograd/__init__.py:98(_tensor_or_tensors_to_tuple)
      548    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/fromnumeric.py:3148(_ndim_dispatcher)
      182    0.000    0.000    0.000    0.000 {method 'strip' of 'bytes' objects}
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/_collections.py:141(__init__)
       92    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/clicker.py:26(get_clicks)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/connection.py:208(putrequest)
       91    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/sparse/_base.py:1301(isspmatrix)
       34    0.000    0.000    0.000    0.000 /usr/lib/python3.8/enum.py:313(__call__)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/imaging/image.py:533(crop)
      184    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/clicker.py:105(__init__)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/PIL/Image.py:3030(fromarray)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/ssl_match_hostname.py:98(match_hostname)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/connection.py:100(_set_socket_options)
       91    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/optimize/_optimize.py:61(__init__)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/models.py:495(prepare_body)
       71    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/response.py:398(_decode)
        3    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torch/jit/_trace.py:1101(is_tracing)
        8    0.000    0.000    0.000    0.000 /usr/lib/python3.8/email/message.py:564(get_content_type)
      446    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/shape_base.py:19(_atleast_1d_dispatcher)
        4    0.000    0.000    0.000    0.000 /usr/lib/python3.8/http/cookiejar.py:1677(extract_cookies)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/pkg_resources/__init__.py:112(parse_version)
       15    0.000    0.000    0.000    0.000 /usr/lib/python3.8/email/message.py:462(get)
      129    0.000    0.000    0.000    0.000 {built-in method numpy.core._multiarray_umath.normalize_axis_index}
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/io/fs.py:212(ensure_base_path)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/http/client.py:1056(putrequest)
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/adapters.py:174(init_poolmanager)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/models.py:659(__init__)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/utils.py:258(extract_zipped_paths)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/geometry/bitmap_base.py:202(origin)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/connectionpool.py:75(__init__)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/utils.py:893(default_headers)
       10    0.000    0.000    0.000    0.000 /usr/lib/python3.8/enum.py:932(__or__)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/_collections.py:231(extend)
        2    0.000    0.000    0.000    0.000 {method 'setsockopt' of '_socket.socket' objects}
       12    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/geometry/point_location.py:37(__init__)
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torchvision/transforms/transforms.py:126(__init__)
        3    0.000    0.000    0.000    0.000 {built-in method torch._C._is_tracing}
        7    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torchvision/utils.py:538(_log_api_usage_once)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/http/cookiejar.py:1353(add_cookie_header)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/pkg_resources/_vendor/packaging/version.py:271(__init__)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/response.py:281(release_conn)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/geometry/bitmap_base.py:212(data)
       43    0.000    0.000    0.000    0.000 /usr/lib/python3.8/email/_policybase.py:281(_sanitize_header)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/models.py:589(prepare_auth)
       16    0.000    0.000    0.000    0.000 /usr/lib/python3.8/urllib/parse.py:158(hostname)
        1    0.000    0.000    0.000    0.000 {built-in method zlib.compress}
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/connectionpool.py:1095(_normalize_host)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/ssl.py:1120(getpeercert)
       83    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/structures.py:46(__setitem__)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/structures.py:76(copy)
        8    0.000    0.000    0.000    0.000 /usr/lib/python3.8/http/cookiejar.py:1258(__init__)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/supervisely/src/sly_functions.py:69(get_pos_neg_points_list_from_context_bbox_relative)
      370    0.000    0.000    0.000    0.000 /usr/lib/python3.8/ssl.py:1078(_checkClosed)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/json/__init__.py:183(dumps)
       37    0.000    0.000    0.000    0.000 /usr/lib/python3.8/email/feedparser.py:128(__next__)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/email/feedparser.py:184(close)
       12    0.000    0.000    0.000    0.000 /usr/lib/python3.8/http/cookiejar.py:1223(deepvalues)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/connectionpool.py:283(_put_conn)
      223    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/numeric.py:2403(_array_equal_dispatcher)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/response.py:201(__init__)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/utils.py:1011(get_auth_from_url)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/email/feedparser.py:101(push)
       44    0.000    0.000    0.000    0.000 /usr/lib/python3.8/urllib/parse.py:420(_remove_unsafe_bytes_from_url)
        2    0.000    0.000    0.000    0.000 {method 'getpeercert' of '_ssl._SSLSocket' objects}
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/http/client.py:246(__init__)
        6    0.000    0.000    0.000    0.000 /usr/lib/python3.8/email/message.py:588(get_content_maintype)
        8    0.000    0.000    0.000    0.000 /usr/lib/python3.8/socket.py:97(_intenum_converter)
        4    0.000    0.000    0.000    0.000 /usr/lib/python3.8/http/cookiejar.py:1596(make_cookies)
        6    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/cookies.py:534(<listcomp>)
       31    0.000    0.000    0.000    0.000 /usr/lib/python3.8/email/_policybase.py:293(header_source_parse)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/worker_api/agent_api.py:111(bindata_generator)
       13    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/utils.py:1027(check_header_validity)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/io/fs.py:188(mkdir)
        1    0.000    0.000    0.000    0.000 <__array_function__ internals>:177(amin)
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/poolmanager.py:171(__init__)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/connection.py:302(__init__)
       50    0.000    0.000    0.000    0.000 /usr/lib/python3.8/urllib/parse.py:113(_coerce_args)
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/ssl_.py:457(is_ipaddress)
        6    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/sessions.py:84(<listcomp>)
        5    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/PIL/PngImagePlugin.py:1078(putchunk)
        4    0.000    0.000    0.000    0.000 /usr/lib/python3.8/urllib/parse.py:484(urlunparse)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/ipaddress.py:27(ip_address)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/queue.py:33(__init__)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/sessions.py:723(<listcomp>)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/http/client.py:410(_close_conn)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/PIL/Image.py:1909(putpalette)
        7    0.000    0.000    0.000    0.000 {method 'settimeout' of '_socket.socket' objects}
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/json/encoder.py:182(encode)
        4    0.000    0.000    0.000    0.000 /usr/lib/python3.8/genericpath.py:39(isdir)
      148    0.000    0.000    0.000    0.000 /usr/lib/python3.8/http/client.py:438(isclosed)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/connection.py:115(__init__)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/http/client.py:204(_read_headers)
        5    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/url.py:91(__new__)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/PIL/Image.py:2973(frombuffer)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/fromnumeric.py:2829(amin)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/sessions.py:159(resolve_redirects)
      102    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/url.py:306(<genexpr>)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/url.py:323(_encode_target)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/poolmanager.py:79(_default_key_normalizer)
        2    0.000    0.000    0.000    0.000 {method 'close' of '_io.BufferedReader' objects}
       33    0.000    0.000    0.000    0.000 {method 'search' of 're.Pattern' objects}
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/geometry/rectangle.py:368(from_array)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/socket.py:301(makefile)
       12    0.000    0.000    0.000    0.000 /usr/lib/python3.8/http/cookiejar.py:1219(vals_sorted_by_key)
        4    0.000    0.000    0.000    0.000 /usr/lib/python3.8/ssl.py:710(verify_mode)
       58    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/structures.py:51(__getitem__)
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/predictors/brs_functors.py:98(__init__)
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/retry.py:243(__init__)
        7    0.000    0.000    0.000    0.000 {built-in method torch._C._log_api_usage_once}
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/ssl.py:544(set_alpn_protocols)
        6    0.000    0.000    0.000    0.000 /usr/lib/python3.8/encodings/idna.py:147(encode)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/json/encoder.py:204(iterencode)
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/cookies.py:542(merge_cookies)
        5    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/url.py:244(_remove_path_dot_segments)
       91    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/optimize/_optimize.py:147(_check_unknown_options)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/models.py:106(_encode_params)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/utils.py:654(requote_uri)
       92    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/transforms/base.py:25(transform)
        8    0.000    0.000    0.000    0.000 /usr/lib/python3.8/email/message.py:497(get_all)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/email/feedparser.py:139(__init__)
        3    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/geometry/rectangle.py:617(get_cropped_numpy_slice)
       31    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/_collections.py:215(add)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/ssl.py:486(_encode_hostname)
        1    0.000    0.000    0.000    0.000 {method 'min' of 'numpy.ndarray' objects}
        1    0.000    0.000    0.000    0.000 <__array_function__ internals>:177(expand_dims)
        6    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/timeout.py:101(__init__)
       92    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/fromnumeric.py:2107(_clip_dispatcher)
       94    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/numeric.py:73(_zeros_like_dispatcher)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/_methods.py:43(_amin)
       44    0.000    0.000    0.000    0.000 /usr/lib/python3.8/threading.py:261(_is_owned)
       46    0.000    0.000    0.000    0.000 /usr/lib/python3.8/threading.py:246(__enter__)
       16    0.000    0.000    0.000    0.000 /usr/lib/python3.8/urllib/parse.py:198(_hostinfo)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/worker_api/agent_rpc.py:49(send_from_memory_generator)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/socket.py:732(close)
       34    0.000    0.000    0.000    0.000 /usr/lib/python3.8/enum.py:631(__new__)
       16    0.000    0.000    0.000    0.000 /usr/lib/python3.8/_collections_abc.py:676(items)
        1    0.000    0.000    0.000    0.000 /usr/lib/python3.8/os.py:198(makedirs)
        2    0.000    0.000    0.000    0.000 {built-in method today}
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/PIL/Image.py:2896(new)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/socket.py:512(family)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/http/client.py:820(__init__)
       37    0.000    0.000    0.000    0.000 /usr/lib/python3.8/email/feedparser.py:78(readline)
        1    0.000    0.000    0.000    0.000 <__array_function__ internals>:177(ones_like)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/lib/shape_base.py:512(expand_dims)
        1    0.000    0.000    0.000    0.000 /usr/lib/python3.8/posixpath.py:71(join)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/geometry/rectangle.py:555(contains)
       79    0.000    0.000    0.000    0.000 {method 'startswith' of 'str' objects}
       46    0.000    0.000    0.000    0.000 /usr/lib/python3.8/threading.py:249(__exit__)
        2    0.000    0.000    0.000    0.000 {method 'getpeername' of '_socket.socket' objects}
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/models.py:631(prepare_hooks)
       30    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/url.py:416(ensure_type)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/sly_logger.py:72(<lambda>)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/models.py:85(path_url)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/_dtype.py:344(_name_get)
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/clicker.py:83(reset_clicks)
       26    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/utils.py:1046(_validate_header_part)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/response.py:40(assert_header_parsing)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/urllib/parse.py:333(geturl)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/http/cookiejar.py:1731(clear_expired_cookies)
       95    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/multiarray.py:1079(copyto)
        3    0.000    0.000    0.000    0.000 /usr/lib/python3.8/http/client.py:415(close)
       91    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/optimize/_optimize.py:255(hess)
        4    0.000    0.000    0.000    0.000 /usr/lib/python3.8/urllib/parse.py:495(urlunsplit)
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/cookies.py:358(update)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/io/fs.py:306(dir_exists)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/PIL/PngImagePlugin.py:1096(write)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/posixpath.py:100(split)
        6    0.000    0.000    0.000    0.000 /usr/lib/python3.8/threading.py:222(__init__)
       66    0.000    0.000    0.000    0.000 {method 'split' of 'str' objects}
       95    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/multiarray.py:84(empty_like)
        4    0.000    0.000    0.000    0.000 {method 'readlines' of '_io._IOBase' objects}
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/connectionpool.py:963(_prepare_conn)
        3    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/PIL/Image.py:835(load)
       68    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/structures.py:58(<genexpr>)
       46    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/queue.py:15(_qsize)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/ipaddress.py:1224(__init__)
       24    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/_utils.py:79(unwrap_if_numpy)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/response.py:323(_init_length)
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/sessions.py:799(mount)
       44    0.000    0.000    0.000    0.000 /usr/lib/python3.8/email/utils.py:51(_has_surrogates)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/numeric.py:219(ones_like)
        1    0.000    0.000    0.000    0.000 {method 'max' of 'numpy.ndarray' objects}
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/_collections.py:47(__init__)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/urllib/parse.py:809(quote)
      258    0.000    0.000    0.000    0.000 {built-in method builtins.ord}
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/models.py:207(register_hook)
       20    0.000    0.000    0.000    0.000 <string>:1(__new__)
        3    0.000    0.000    0.000    0.000 /usr/lib/python3.8/posixpath.py:117(splitext)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/timeout.py:168(from_float)
        5    0.000    0.000    0.000    0.000 {function SocketIO.close at 0x7ff5426cd700}
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/_methods.py:39(_amax)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/models.py:258(__init__)
        6    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/hooks.py:15(default_hooks)
        8    0.000    0.000    0.000    0.000 /usr/lib/python3.8/http/cookiejar.py:877(__init__)
       91    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/shape_base.py:77(_atleast_2d_dispatcher)
       92    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/transforms/base.py:34(get_state)
        4    0.000    0.000    0.000    0.000 {method 'tolist' of 'numpy.ndarray' objects}
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/connectionpool.py:324(_get_timeout)
       10    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/structures.py:57(__iter__)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/utils.py:533(get_encoding_from_headers)
       22    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/queue.py:18(_put)
      132    0.000    0.000    0.000    0.000 {method 'replace' of 'str' objects}
       31    0.000    0.000    0.000    0.000 /usr/lib/python3.8/email/message.py:479(set_raw)
       92    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/transforms/flip.py:30(get_state)
       19    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/packages/six.py:1014(ensure_text)
       36    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/connection.py:223(<genexpr>)
       22    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/queue.py:21(_get)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/connection.py:328(set_cert)
       10    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/PIL/PngImagePlugin.py:154(_crc32)
        1    0.000    0.000    0.000    0.000 /usr/lib/python3.8/email/message.py:213(get_payload)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/models.py:335(__init__)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/http/client.py:381(_check_close)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/pkg_resources/_vendor/packaging/version.py:474(_cmpkey)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/sessions.py:107(get_redirect_target)
       12    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/PIL/_binary.py:101(o32be)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/imaging/image.py:109(validate_ext)
       12    0.000    0.000    0.000    0.000 /usr/lib/python3.8/threading.py:81(RLock)
        7    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/geometry/rectangle.py:471(top)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/models.py:573(prepare_content_length)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/timeout.py:184(clone)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/ipaddress.py:1810(__init__)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/geometry/point_location.py:177(translate)
        8    0.000    0.000    0.000    0.000 /usr/lib/python3.8/http/client.py:1260(<genexpr>)
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/packages/six.py:642(itervalues)
       44    0.000    0.000    0.000    0.000 {method 'acquire' of '_thread.lock' objects}
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/ndimage/_interpolation.py:769(<listcomp>)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/urllib/parse.py:880(quote_from_bytes)
       43    0.000    0.000    0.000    0.000 {method 'rstrip' of 'str' objects}
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/predictors/brs_functors.py:9(__init__)
        6    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/geometry/geometry.py:28(__init__)
       12    0.000    0.000    0.000    0.000 {built-in method builtins.sorted}
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/ipaddress.py:1125(_ip_int_from_string)
        8    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/packages/six.py:991(ensure_str)
        3    0.000    0.000    0.000    0.000 /usr/lib/python3.8/logging/__init__.py:1424(debug)
        6    0.000    0.000    0.000    0.000 {method 'subn' of 're.Pattern' objects}
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/_dtype.py:330(_name_includes_bit_suffix)
       46    0.000    0.000    0.000    0.000 {method '__enter__' of '_thread.lock' objects}
        7    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/geometry/rectangle.py:437(left)
        3    0.000    0.000    0.000    0.000 {method 'transpose' of 'numpy.ndarray' objects}
        3    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/interactive_demo/controller.py:120(reset_init_mask)
        1    0.000    0.000    0.000    0.000 {built-in method posix.mkdir}
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/response.py:699(closed)
        1    0.000    0.000    0.000    0.000 <__array_function__ internals>:177(amax)
        4    0.000    0.000    0.000    0.000 /usr/lib/python3.8/_collections_abc.py:701(__len__)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/ssl_match_hostname.py:25(_dnsname_match)
       20    0.000    0.000    0.000    0.000 /usr/lib/python3.8/http/client.py:981(_output)
        8    0.000    0.000    0.000    0.000 /usr/lib/python3.8/email/message.py:29(_splitparam)
       79    0.000    0.000    0.000    0.000 {method 'join' of 'str' objects}
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/skimage/transform/_warps.py:185(<listcomp>)
       18    0.000    0.000    0.000    0.000 {method 'fullmatch' of 're.Pattern' objects}
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/ssl.py:596(options)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/models.py:770(is_redirect)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/io/fs.py:45(get_file_ext)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/urllib/parse.py:150(username)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/ndimage/_ni_support.py:57(_normalize_sequence)
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/sessions.py:805(<listcomp>)
       31    0.000    0.000    0.000    0.000 {method 'setdefault' of 'collections.OrderedDict' objects}
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/socket.py:502(detach)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/http/cookiejar.py:1294(_cookie_attrs)
       33    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/_collections.py:187(__iter__)
       18    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/timeout.py:122(_validate_timeout)
       37    0.000    0.000    0.000    0.000 {method 'find' of 'str' objects}
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/http/client.py:427(flush)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/PIL/ImagePalette.py:196(raw)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/logging/__init__.py:1497(log)
        3    0.000    0.000    0.000    0.000 {built-in method torch.get_default_dtype}
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/email/feedparser.py:53(__init__)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/ssl.py:1372(version)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/PIL/ImagePalette.py:84(getdata)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/email/feedparser.py:70(close)
       13    0.000    0.000    0.000    0.000 {built-in method _struct.pack}
        1    0.000    0.000    0.000    0.000 <__array_function__ internals>:177(iscomplexobj)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/socket.py:643(__init__)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/_collections.py:54(__getitem__)
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/ssl_.py:211(resolve_cert_reqs)
        6    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/connection.py:132(host)
        2    0.000    0.000    0.000    0.000 {method '_set_alpn_protocols' of '_ssl._SSLContext' objects}
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/socket.py:518(type)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/_collections.py:61(__setitem__)
        8    0.000    0.000    0.000    0.000 /usr/lib/python3.8/posixpath.py:41(_get_sep)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/PIL/Image.py:417(_getencoder)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/email/feedparser.py:197(_new_message)
        2    0.000    0.000    0.000    0.000 {method 'getsockopt' of '_socket.socket' objects}
        1    0.000    0.000    0.000    0.000 {built-in method PIL._imaging.fill}
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/utils.py:128(super_len)
       56    0.000    0.000    0.000    0.000 {method 'partition' of 'str' objects}
       50    0.000    0.000    0.000    0.000 /usr/lib/python3.8/urllib/parse.py:102(_noop)
        3    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torchvision/transforms/_functional_pil.py:14(_is_pil_image)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/numerictypes.py:356(issubdtype)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/numeric.py:1348(normalize_axis_tuple)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/urllib/parse.py:634(unquote)
        4    0.000    0.000    0.000    0.000 /usr/lib/python3.8/email/feedparser.py:122(pushlines)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/PIL/Image.py:543(_new)
       15    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/_internal_utils.py:23(to_native_string)
        8    0.000    0.000    0.000    0.000 {method 'cast' of 'memoryview' objects}
        3    0.000    0.000    0.000    0.000 /usr/lib/python3.8/genericpath.py:121(_splitext)
        4    0.000    0.000    0.000    0.000 {method 'extend' of 'list' objects}
       10    0.000    0.000    0.000    0.000 {built-in method zlib.crc32}
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/models.py:394(prepare_method)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/ssl.py:600(options)
       23    0.000    0.000    0.000    0.000 {method 'rpartition' of 'str' objects}
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/connection.py:242(<genexpr>)
       16    0.000    0.000    0.000    0.000 /usr/lib/python3.8/_collections_abc.py:698(__init__)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/fromnumeric.py:2703(amax)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/sessions.py:780(get_adapter)
        1    0.000    0.000    0.000    0.000 /usr/lib/python3.8/base64.py:51(b64encode)
       33    0.000    0.000    0.000    0.000 {method 'lstrip' of 'str' objects}
        1    0.000    0.000    0.000    0.000 {method 'ByteSize' of 'google.protobuf.pyext._message.CMessage' objects}
        1    0.000    0.000    0.000    0.000 {method 'SerializeToString' of 'google.protobuf.pyext._message.CMessage' objects}
       46    0.000    0.000    0.000    0.000 {method '__exit__' of '_thread.lock' objects}
       12    0.000    0.000    0.000    0.000 /usr/lib/python3.8/http/cookiejar.py:1750(__iter__)
        5    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/geometry/rectangle.py:454(right)
        4    0.000    0.000    0.000    0.000 /usr/lib/python3.8/email/message.py:120(__init__)
        5    0.000    0.000    0.000    0.000 /usr/lib/python3.8/logging/__init__.py:1689(isEnabledFor)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/clicker.py:7(__init__)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/ipaddress.py:1558(_ip_int_from_string)
        3    0.000    0.000    0.000    0.000 {method 'sort' of 'list' objects}
        5    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/geometry/rectangle.py:488(bottom)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/PIL/ImagePalette.py:37(__init__)
        3    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/imaging/image.py:622(restore_proportional_size)
       16    0.000    0.000    0.000    0.000 {method 'write' of '_io.BytesIO' objects}
        6    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/hooks.py:16(<dictcomp>)
        6    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torchvision/transforms/functional.py:115(_is_numpy)
       10    0.000    0.000    0.000    0.000 {method 'copy' of 'dict' objects}
       29    0.000    0.000    0.000    0.000 {method 'pop' of 'dict' objects}
       12    0.000    0.000    0.000    0.000 {built-in method time.time}
        8    0.000    0.000    0.000    0.000 {method 'acquire' of '_thread.RLock' objects}
        6    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/utils.py:201(<genexpr>)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/utils.py:630(unquote_unreserved)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/skimage/_shared/utils.py:672(_to_ndimage_mode)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/retry.py:468(is_retry)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/ssl_match_hostname.py:79(_to_unicode)
        4    0.000    0.000    0.000    0.000 /usr/lib/python3.8/ssl.py:718(verify_mode)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/urllib/parse.py:902(urlencode)
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/retry.py:301(<listcomp>)
        1    0.000    0.000    0.000    0.000 {built-in method binascii.b2a_base64}
        8    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/pkg_resources/_vendor/packaging/version.py:282(<genexpr>)
        3    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/PIL/Image.py:512(__init__)
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/adapters.py:74(__init__)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/models.py:795(iter_content)
        6    0.000    0.000    0.000    0.000 {method 'count' of 'bytes' objects}
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/email/feedparser.py:210(_pop_message)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/queue.py:12(_init)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/connection.py:192(_is_using_tunnel)
        8    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/transforms/base.py:5(__init__)
       13    0.000    0.000    0.000    0.000 {built-in method posix.fspath}
        1    0.000    0.000    0.000    0.000 {method 'ParseFromString' of 'google.protobuf.pyext._message.CMessage' objects}
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/pkg_resources/_vendor/packaging/version.py:86(__ge__)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/poolmanager.py:303(_merge_pool_kwargs)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/http/client.py:1204(_validate_host)
        6    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/structures.py:60(__len__)
        6    0.000    0.000    0.000    0.000 {method 'split' of 'bytes' objects}
       16    0.000    0.000    0.000    0.000 {method 'keys' of 'dict' objects}
        6    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/request.py:40(__init__)
        2    0.000    0.000    0.000    0.000 {method 'write' of '_io.StringIO' objects}
        4    0.000    0.000    0.000    0.000 {method 'clear' of 'collections.OrderedDict' objects}
       22    0.000    0.000    0.000    0.000 {method 'append' of 'collections.deque' objects}
        1    0.000    0.000    0.000    0.000 {built-in method PIL._imaging.map_buffer}
       20    0.000    0.000    0.000    0.000 {method 'group' of 're.Match' objects}
       22    0.000    0.000    0.000    0.000 {method 'pop' of 'collections.deque' objects}
        6    0.000    0.000    0.000    0.000 {method 'decode' of 'bytearray' objects}
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/socket.py:486(_decref_socketios)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/PIL/ImagePalette.py:95(tobytes)
        8    0.000    0.000    0.000    0.000 {method 'endswith' of 'str' objects}
       33    0.000    0.000    0.000    0.000 {method 'popleft' of 'collections.deque' objects}
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/urllib/parse.py:186(_userinfo)
       16    0.000    0.000    0.000    0.000 {method 'strip' of 'str' objects}
        1    0.000    0.000    0.000    0.000 {method 'putpalette' of 'ImagingCore' objects}
       11    0.000    0.000    0.000    0.000 {method 'upper' of 'str' objects}
        2    0.000    0.000    0.000    0.000 {method 'rstrip' of 'bytes' objects}
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/sessions.py:91(merge_hooks)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/utils.py:508(_parse_content_type_header)
       10    0.000    0.000    0.000    0.000 {method 'groups' of 're.Match' objects}
        4    0.000    0.000    0.000    0.000 {method 'read' of '_io.StringIO' objects}
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/worker_api/agent_rpc.py:44(batched)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/timeout.py:198(start_connect)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/numerictypes.py:282(issubclass_)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/PIL/Image.py:2875(_check_size)
        1    0.000    0.000    0.000    0.000 /usr/lib/python3.8/posixpath.py:140(basename)
       16    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/geometry/point_location.py:41(row)
       10    0.000    0.000    0.000    0.000 {method 'count' of 'str' objects}
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/_utils.py:28(generate_free_name)
        9    0.000    0.000    0.000    0.000 {method 'rfind' of 'str' objects}
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/lib/type_check.py:303(iscomplexobj)
        1    0.000    0.000    0.000    0.000 {built-in method math.ceil}
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/_internal_utils.py:36(unicode_is_ascii)
       16    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/geometry/point_location.py:57(col)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/http/cookiejar.py:1287(_cookies_for_request)
        1    0.000    0.000    0.000    0.000 <frozen importlib._bootstrap>:389(parent)
        1    0.000    0.000    0.000    0.000 <frozen importlib._bootstrap>:1017(_handle_fromlist)
        3    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/torchvision/transforms/functional.py:120(_is_numpy_image)
        8    0.000    0.000    0.000    0.000 {method 'index' of 'list' objects}
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/retry.py:448(_is_method_retryable)
        4    0.000    0.000    0.000    0.000 {method 'extend' of 'collections.deque' objects}
        2    0.000    0.000    0.000    0.000 {method 'pop' of 'collections.OrderedDict' objects}
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/email/parser.py:17(__init__)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/geometry/geometry.py:37(_add_creation_info)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/ssl_.py:325(disable_check_hostname)
        1    0.000    0.000    0.000    0.000 {built-in method PIL._imaging.zip_encoder}
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/imaging/image.py:68(is_valid_ext)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/http/client.py:1196(_validate_path)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/pkg_resources/_vendor/packaging/version.py:98(_compare)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/skimage/transform/_warps.py:21(_preprocess_resize_output_shape)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/email/message.py:303(set_payload)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/http/client.py:1187(_validate_method)
        6    0.000    0.000    0.000    0.000 /usr/lib/python3.8/http/cookiejar.py:44(_debug)
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/response.py:257(<genexpr>)
        2    0.000    0.000    0.000    0.000 {method 'version' of '_ssl._SSLSocket' objects}
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/numeric.py:1398(<listcomp>)
        2    0.000    0.000    0.000    0.000 {method 'getpalette' of 'ImagingCore' objects}
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/lib/shape_base.py:600(<listcomp>)
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/cookies.py:110(__init__)
        8    0.000    0.000    0.000    0.000 {method 'items' of 'collections.OrderedDict' objects}
        1    0.000    0.000    0.000    0.000 {method 'format' of 'str' objects}
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/supervisely/src/sly_functions.py:63(get_smart_bbox)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/email/message.py:181(is_multipart)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/connection.py:108(allowed_gai_family)
        6    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/pkg_resources/_vendor/packaging/version.py:420(_parse_letter_version)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/hooks.py:22(dispatch_hook)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/models.py:994(raise_for_status)
        3    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/PIL/ImagePalette.py:52(palette)
        6    0.000    0.000    0.000    0.000 {method 'setdefault' of 'dict' objects}
        8    0.000    0.000    0.000    0.000 {method 'release' of '_thread.RLock' objects}
        4    0.000    0.000    0.000    0.000 {built-in method _stat.S_ISDIR}
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/utils.py:884(default_user_agent)
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/utils.py:737(set_environ)
        2    0.000    0.000    0.000    0.000 {method 'append' of 'bytearray' objects}
        1    0.000    0.000    0.000    0.000 /usr/lib/python3.8/json/encoder.py:104(__init__)
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/http/client.py:1183(_encode_request)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/response.py:349(<listcomp>)
        6    0.000    0.000    0.000    0.000 {method 'gettimeout' of '_socket.socket' objects}
        2    0.000    0.000    0.000    0.000 {built-in method time.perf_counter}
        8    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/cookies.py:117(info)
        3    0.000    0.000    0.000    0.000 {method 'pixel_access' of 'ImagingCore' objects}
        2    0.000    0.000    0.000    0.000 {method 'extend' of 'bytearray' objects}
        8    0.000    0.000    0.000    0.000 {method 'seek' of '_io.StringIO' objects}
        2    0.000    0.000    0.000    0.000 {built-in method _thread.allocate_lock}
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/skimage/_shared/utils.py:686(_fix_ndimage_mode)
        7    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/fromnumeric.py:2328(_any_dispatcher)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/ssl_.py:234(resolve_ssl_version)
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/timeout.py:223(connect_timeout)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/timeout.py:241(read_timeout)
        4    0.000    0.000    0.000    0.000 /usr/lib/python3.8/ssl.py:1082(_check_connected)
        2    0.000    0.000    0.000    0.000 {method 'fileno' of '_socket.socket' objects}
        2    0.000    0.000    0.000    0.000 {built-in method builtins.all}
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/worker_api/agent_api.py:28(_get_retrier)
        4    0.000    0.000    0.000    0.000 {method 'update' of 'collections.OrderedDict' objects}
        3    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/transforms/base.py:31(reset)
        1    0.000    0.000    0.000    0.000 {method 'setimage' of 'ImagingEncoder' objects}
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/pkg_resources/_vendor/packaging/version.py:490(<lambda>)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/request.py:101(set_file_position)
        4    0.000    0.000    0.000    0.000 {method 'truncate' of '_io.StringIO' objects}
        4    0.000    0.000    0.000    0.000 {method 'values' of 'dict' objects}
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/PIL/_util.py:5(is_path)
        1    0.000    0.000    0.000    0.000 {built-in method builtins.hex}
        2    0.000    0.000    0.000    0.000 /usr/lib/python3.8/http/client.py:866(_get_hostport)
        2    0.000    0.000    0.000    0.000 {method 'pop' of 'set' objects}
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/_dtype.py:24(_kind_name)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/scipy/ndimage/_ni_support.py:36(_extend_mode_to_code)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/utils.py:575(iter_slices)
        3    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/PIL/ImagePalette.py:48(palette)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/models.py:216(<genexpr>)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/skimage/_shared/utils.py:626(_validate_interpolation_order)
        4    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/PIL/Image.py:539(size)
        2    0.000    0.000    0.000    0.000 {method 'pop' of 'list' objects}
        2    0.000    0.000    0.000    0.000 {function HTTPResponse.flush at 0x7ff5424ac040}
        4    0.000    0.000    0.000    0.000 /usr/lib/python3.8/email/feedparser.py:125(__iter__)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/connection.py:151(host)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/PIL/PngImagePlugin.py:1092(__init__)
        1    0.000    0.000    0.000    0.000 {method 'cleanup' of 'ImagingEncoder' objects}
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/adapters.py:401(add_headers)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/pkg_resources/_vendor/packaging/version.py:88(<lambda>)
        1    0.000    0.000    0.000    0.000 {built-in method numpy.ascontiguousarray}
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/timeout.py:118(resolve_default_timeout)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/sessions.py:451(__enter__)
        3    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/isegm/inference/transforms/flip.py:36(reset)
        2    0.000    0.000    0.000    0.000 {function socket.detach at 0x7ff5426c4dc0}
        1    0.000    0.000    0.000    0.000 {method 'getvalue' of '_io.BytesIO' objects}
        1    0.000    0.000    0.000    0.000 {method 'flush' of '_io.BytesIO' objects}
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/requests/cookies.py:87(get_new_headers)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/pkg_resources/_vendor/packaging/version.py:461(_parse_local_version)
        1    0.000    0.000    0.000    0.000 {built-in method time.monotonic}
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/PIL/Image.py:321(preinit)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/PIL/ImageFile.py:75(_tilesort)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/fromnumeric.py:2824(_amin_dispatcher)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/lib/type_check.py:206(_is_type_dispatcher)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/lib/shape_base.py:508(_expand_dims_dispatcher)
        2    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/geometry/bitmap.py:120(geometry_name)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/util/proxy.py:4(connection_requires_http_tunnel)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/fromnumeric.py:2698(_amax_dispatcher)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/numpy/core/numeric.py:215(_ones_like_dispatcher)
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/urllib3/connectionpool.py:314(_validate_conn)
        1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}
        1    0.000    0.000    0.000    0.000 /home/paul/projects/ritm-interactive-segmentation/.venv/lib/python3.8/site-packages/supervisely/geometry/bitmap.py:176(_impl_json_class_name)


