#
# vendor prop for addison
#

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1 \
    audio.deep_buffer.media=true \
    audio.offload.disable=false \
    audio.offload.video=false \
    persist.vendor.audio.calfile0=/vendor/etc/acdbdata/Bluetooth_cal.acdb \
    persist.vendor.audio.calfile1=/vendor/etc/acdbdata/General_cal.acdb \
    persist.vendor.audio.calfile2=/vendor/etc/acdbdata/Global_cal.acdb \
    persist.vendor.audio.calfile3=/vendor/etc/acdbdata/Handset_cal.acdb \
    persist.vendor.audio.calfile4=/vendor/etc/acdbdata/Hdmi_cal.acdb \
    persist.vendor.audio.calfile5=/vendor/etc/acdbdata/Headset_cal.acdb \
    persist.vendor.audio.calfile6=/vendor/etc/acdbdata/Speaker_cal.acdb \
    persist.vendor.audio.dualmic.config=endfire \
    persist.vendor.audio.fluence.speaker=true \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicecomm=true \
    persist.vendor.audio.fluence.voicerec=false \
    persist.vendor.audio.ras.enabled=false \
    persist.vendor.audio.default.acc=218752 \
    persist.vendor.audio.pdm.gain=12 \
    vendor.audio_hal.period_size=240 \
    vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false \
    vendor.audio.flac.sw.decoder.24bit=true \
    vendor.audio.hw.aac.encoder=true \
    vendor.audio.noisy.broadcast.delay=600 \
    vendor.audio.offload.buffer.size.kb=32 \
    vendor.audio.offload.gapless.enabled=true \
    vendor.audio.offload.multiaac.enable=true \
    vendor.audio.offload.multiple.enabled=false \
    vendor.audio.offload.passthrough=false \
    vendor.audio.offload.pcm.16bit.enable=false \
    vendor.audio.offload.pcm.24bit.enable=false \
    vendor.audio.offload.pstimeout.secs=3 \
    vendor.audio.offload.track.enable=true \
    vendor.audio.parser.ip.buffer.size=262144 \
    vendor.audio.safx.pbe.enabled=true \
    vendor.audio.tunnel.encode=false \
    vendor.audio.use.sw.alac.decoder=false \
    vendor.audio.use.sw.ape.decoder=false \
    vendor.voice.path.for.pcm.voip=true \
    vendor.audio.offload.min.duration.secs=60

# BPF
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.ebpf.supported=false

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    bluetooth.hfp.client=1 \
    ro.qualcomm.bt.hci_transport=smd \
    persist.vendor.qcom.bluetooth.enable.splita2dp=false

# Boot
PRODUCT_PROPERTY_OVERRIDES += \
    sys.vendor.shutdown.waittime=500

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.HAL3.enabled=1 \
    vendor.vidc.enc.dcvs.extra-buff-count=2 \
    persist.camera.eis.enable=1

# CNE
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.vendor.cne.feature=1

# Codec2 switch
PRODUCT_PROPERTY_OVERRIDES += \
    debug.media.codec2=2

# core_ctrl
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.core_ctl_min_cpu=2 \
    ro.vendor.qti.core_ctl_max_cpu=4

# Dex2oat
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat64.enabled=true

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.hwc_set_default_colormode=true \
    debug.sf.hw=1 \
    debug.egl.hw=1 \
    persist.hwc.mdpcomp.enable=true \
    debug.sf.disable_backpressure=1 \
    debug.sf.disable_client_composition_cache=1 \
    vendor.gralloc.enable_fb_ubwc=1 \
    vendor.display.disable_skip_validate=1 \
    vendor.display.disable_rotator_downscale=1 \
    vendor.video.disable.ubwc=1 \
    dev.pm.dyn_samplingrate=1 \
    persist.demo.hdmirotationlock=false \
    debug.enable.sglscale=1 \
    debug.gralloc.enable_fb_ubwc=1 \
    debug.sf.recomputecrop=0 \
    ro.opengles.version=196610 \
    ro.qualcomm.cabl=0 \
    persist.sys.sf.disable_blurs=1 \
    ro.sf.blurs_are_expensive=1 \
    ro.launcher.blur.appLaunch=0 \
    ro.config.avoid_gfx_accel=true \
    ro.vendor.perf.scroll_opt=true \
    debug.cpurend.vsync=false \
    debug.hwui.use_buffer_age=false

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Hardware
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.egl=adreno

# IMS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1

# IORap
PRODUCT_PROPERTY_OVERRIDES += \
    iorapd.readahead.enable=false \
    iorapd.perfetto.enable=false \
    ro.iorapd.enable=false

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.stagefright.thumbnail.prefer_hw_codecs=true

# Memory optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    persist.device_config.runtime_native.usap_pool_enabled=true \
    persist.device_config.runtime_native.usap_pool_size_max=5

# Mods
PRODUCT_PROPERTY_OVERRIDES += \
    sys.mod.platformsdkversion=281

# OMX
# Rank OMX SW codecs lower than OMX HW codecs
PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.omx_default_rank.sw-audio=1 \
    debug.stagefright.omx_default_rank=0

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so

# Qualcomm
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    debug.qc.hardware=true \
    persist.timed.enable=true

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.ims.dropset_feature=0 \
    persist.vendor.ims.disableADBLogs=0 \
    persist.vendor.ims.disableDebugDataPathLogs=0 \
    persist.vendor.ims.disableDebugLogs=0 \
    persist.vendor.ims.disableIMSLogs=0 \
    persist.vendor.ims.disableQXDMLogs=1 \
    persist.vendor.ims.vt.enableadb=1 \
    persist.vendor.radio.0x9e_not_callname=1 \
    persist.vendor.radio.adb_log_on=0 \
    persist.vendor.radio.add_power_save=1 \
    persist.vendor.radio.aosp_usr_pref_sel=true \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.cs_srv_type=1 \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.data_con_rprt=1 \
    persist.vendor.radio.dfr_mode_set=1 \
    persist.vendor.radio.eri64_as_home=1 \
    persist.vendor.radio.flexmap_type=none \
    persist.vendor.radio.jbims=1 \
    persist.vendor.radio.lte_vrte_ltd=1 \
    persist.vendor.radio.msgtunnel.start=true \
    persist.vendor.radio.mt_sms_ack=30 \
    persist.vendor.radio.no_wait_for_card=1 \
    persist.vendor.radio.oem_ind_to_both=0 \
    persist.vendor.radio.procedure_bytes=SKIP \
    persist.vendor.radio.qcril_uim_vcc_feature=1 \
    persist.vendor.radio.relay_oprt_change=1 \
    persist.vendor.radio.sw_mbn_update=1 \
    ro.vendor.radio.imei.sv=13 \
    ro.build.vendorprefix=/vendor \
    ro.telephony.iwlan_operation_mode=legacy \
    persist.sys.fflag.override.settings_provider_model=false

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ril.subscription.types=NV,RUIM \
    telephony.lteOnCdmaDevice=1

# SurfaceFlinger
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
    ro.surface_flinger.max_virtual_display_dimension=4096 \
    ro.surface_flinger.protected_contents=true \
    ro.surface_flinger.vsync_event_phase_offset_ns=2000000 \
    ro.surface_flinger.vsync_sf_event_phase_offset_ns=6000000 \
    ro.surface_flinger.has_wide_color_display=true \
    ro.surface_flinger.use_color_management=true \
    debug.renderengine.backend=threaded \
    ro.surface_flinger.supports_background_blur=0

PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.early_phase_offset_ns=1500000 \
    debug.sf.early_app_phase_offset_ns=1500000 \
    debug.sf.early_gl_phase_offset_ns=3000000 \
    debug.sf.early_gl_app_phase_offset_ns=15000000

# SOC
PRODUCT_PROPERTY_OVERRIDES += \
    ro.soc.manufacturer=Qualcomm \
    ro.soc.model=MSM8937

# XML format
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.binary_xml=false
