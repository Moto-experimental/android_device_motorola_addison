# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1 \
    audio.offload.disable=false \
    persist.vendor.audio.fluence.speaker=true \
    persist.vendor.audio.ras.enabled=false \
    persist.vendor.audio.default.acc=218752 \
    persist.vendor.audio.pdm.gain=12 \
    vendor.audio.flac.sw.decoder.24bit=true \
    vendor.audio.noisy.broadcast.delay=600 \
    vendor.audio.offload.buffer.size.kb=32 \
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

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    bluetooth.hfp.client=1 \
    ro.qualcomm.bt.hci_transport=smd \
    persist.vendor.qcom.bluetooth.enable.splita2dp=false

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.HAL3.enabled=1 \
    vendor.vidc.enc.dcvs.extra-buff-count=2 \
    persist.camera.eis.enable=1

# Codec2 switch
PRODUCT_PROPERTY_OVERRIDES += \
    debug.media.codec2=2

# core_ctrl
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.core_ctl_min_cpu=2 \
    ro.vendor.qti.core_ctl_max_cpu=4

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196610

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.stagefright.thumbnail.prefer_hw_codecs=true

# Mods
PRODUCT_PROPERTY_OVERRIDES += \
    sys.mod.platformsdkversion=281

# OMX
# Rank OMX SW codecs lower than OMX HW codecs
PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.omx_default_rank.sw-audio=1 \
    debug.stagefright.omx_default_rank=0

# SurfaceFlinger
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.has_wide_color_display=true \
    ro.surface_flinger.use_color_management=true
