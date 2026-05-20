.class public Lcom/miui/home/launcher/common/DeviceLevelUtils;
.super Ljava/lang/Object;
.source "DeviceLevelUtils.java"


# static fields
.field public static final BUILD_DEVICE_HIGH_END:I

.field public static final BUILD_DEVICE_LOW_END:I

.field public static final BUILD_DEVICE_MIDDLE_END:I

.field public static final CHANGE_TASK_VIEW_LAYER_TYPE_DEVICES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ANIMATION_RATE:I

.field public static DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MTK_ADD_DEVICES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final QCOM_REMOVE_DEVICES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static TAG:Ljava/lang/String; = "DeviceLevelUtils"

.field public static sAnimationRateUpdated:Z

.field public static sChangeTaskViewLayerType:Z

.field public static sCpuLevel:I

.field public static sCurrentAnimationRate:I

.field public static sDeviceLevel:I

.field public static sDeviceLevelFromFolme:I

.field public static sDeviceLevelTransitionAnimRatio:F

.field public static sGpuLevel:I


# direct methods
.method public static synthetic $r8$lambda$TAb6v34CyXlkCsUNjevfP549jwk(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->lambda$animationRateUpdated$1(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_G1WrDgZ9YYA3XXkQ3q2m3FI3e0(Lcom/miui/home/launcher/Launcher;JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->lambda$showStatusBar$0(Lcom/miui/home/launcher/Launcher;JZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 32
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->getBuildDeviceLowEnd()I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->BUILD_DEVICE_LOW_END:I

    .line 33
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->getBuildDeviceMiddleEnd()I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->BUILD_DEVICE_MIDDLE_END:I

    .line 34
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->getBuildDeviceHighEnd()I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->BUILD_DEVICE_HIGH_END:I

    const-string v0, "550a6aee24871befa055ffd52f92eba9"

    const-string v1, "1cacf8ccb61cb3325bf40e6ecbe919e3"

    .line 36
    invoke-static {v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->QCOM_REMOVE_DEVICES:Ljava/util/Set;

    const-string v0, "8e4c8500fb823b206d2e96b9e5fc96ca"

    const-string v1, "8dea2d82da0ebf5936d90e8bb22919f4"

    const-string v2, "51434272ddcb40e9ca2e2a3ae6231fa9"

    const-string v3, "91d33b4943a4de7884534a1dfbcd88d7"

    .line 41
    invoke-static {v0, v1, v2, v3}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->MTK_ADD_DEVICES:Ljava/util/Set;

    .line 63
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    const-string v1, "4bb6777bb903cae3166e826932f7fe94"

    .line 66
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    const-string v1, "be8c477aab1c04b4a9b7640633f62bee"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    const-string v1, "74c9687238a05332b9c4e1129340f281"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    const-string v1, "06cfcadd99933d42bf1f7ba542f799b9"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    const-string v1, "9c6713ee9b81fc23f9c2ed117f44a471"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    const-string v1, "533c5ba8368075db8f6ef201546bd71a"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    const-string v1, "cd13b6a6af66fb774faa589a9d18f906"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, -0x1

    .line 79
    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCpuLevel:I

    .line 80
    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sGpuLevel:I

    .line 81
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->getDeviceLevelOfCpuAndGpu()I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevelFromFolme:I

    .line 82
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->getDeviceLevel()I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevel:I

    .line 83
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->getDeviceLevelTransitionAnimRatio()F

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevelTransitionAnimRatio:F

    .line 85
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->CHANGE_TASK_VIEW_LAYER_TYPE_DEVICES:Ljava/util/Set;

    const-string v1, "gauguin"

    .line 87
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "gauguinpro"

    .line 88
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 92
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sChangeTaskViewLayerType:Z

    .line 129
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    const-string v1, "polaris"

    .line 131
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "dipper"

    .line 132
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "equuleus"

    .line 133
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "perseus"

    .line 134
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "ursa"

    .line 135
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "monet"

    .line 136
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "monetin"

    .line 137
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "vangogh"

    .line 138
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "cezanne"

    .line 140
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "atom"

    .line 141
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "bomb"

    .line 142
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "duchamp"

    .line 144
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "yuechu"

    .line 145
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "peridot"

    .line 146
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->getDefaultAnimationRate()I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEFAULT_ANIMATION_RATE:I

    const/4 v0, 0x0

    .line 206
    sput-boolean v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sAnimationRateUpdated:Z

    return-void
.end method

.method private static animationRateUpdated(Landroid/content/Context;)V
    .locals 1

    .line 239
    sget-boolean v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sAnimationRateUpdated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 240
    sput-boolean v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sAnimationRateUpdated:Z

    .line 241
    new-instance v0, Lcom/miui/home/launcher/common/DeviceLevelUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/common/DeviceLevelUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    .line 280
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 281
    sget-object p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, " sDeviceLevel:"

    .line 282
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevel:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, " sDeviceLevelTransitionAnimRatio:"

    .line 283
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevelTransitionAnimRatio:F

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(F)V

    const-string p0, " sChangeTaskViewLayerType:"

    .line 284
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sChangeTaskViewLayerType:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Z)V

    const-string p0, " sCpuLevel:"

    .line 285
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCpuLevel:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, " sGpuLevel:"

    .line 286
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sGpuLevel:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, " sDeviceLevelFromFolme:"

    .line 287
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevelFromFolme:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 288
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public static getBuildDeviceHighEnd()I
    .locals 3

    .line 59
    const-class v0, Lmiui/os/Build;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "DEVICE_HIGH_END"

    invoke-static {v0, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public static getBuildDeviceLowEnd()I
    .locals 3

    .line 49
    const-class v0, Lmiui/os/Build;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "DEVICE_LOW_END"

    invoke-static {v0, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getBuildDeviceMiddleEnd()I
    .locals 3

    .line 54
    const-class v0, Lmiui/os/Build;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "DEVICE_MIDDLE_END"

    invoke-static {v0, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private static getDefaultAnimationRate()I
    .locals 2

    .line 209
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    .line 211
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHighLevelDeviceFromFolme()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getDeviceLevel()I
    .locals 5

    .line 95
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEVICE_LOW_END_WHITE_LIST:Ljava/util/Set;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->BUILD_DEVICE_LOW_END:I

    return v0

    .line 98
    :cond_0
    const-class v0, Lmiui/os/Build;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "getDeviceLevelForAnimation"

    invoke-static {v0, v1, v4, v2, v3}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 101
    :goto_0
    sget-object v1, Lcom/miui/home/launcher/common/DeviceLevelUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceLevelForAnimation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static getDeviceLevelOfCpuAndGpu()I
    .locals 3

    .line 106
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "viva"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "vida"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    sget v0, Lmiuix/device/DeviceUtils;->DEV_STANDARD_VERSION:I

    sget v1, Lmiuix/device/DeviceUtils;->TYPE_CPU:I

    invoke-static {v0, v1}, Lmiuix/device/DeviceUtils;->getDeviceLevel(II)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCpuLevel:I

    .line 111
    sget v0, Lmiuix/device/DeviceUtils;->DEV_STANDARD_VERSION:I

    sget v1, Lmiuix/device/DeviceUtils;->TYPE_GPU:I

    invoke-static {v0, v1}, Lmiuix/device/DeviceUtils;->getDeviceLevel(II)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sGpuLevel:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 107
    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCpuLevel:I

    .line 108
    sput v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sGpuLevel:I

    .line 113
    :goto_1
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceLevelOfCpuAndGpu: cpuLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCpuLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  gpuLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sGpuLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCpuLevel:I

    sget v1, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sGpuLevel:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static getDeviceLevelTransitionAnimRatio()F
    .locals 1

    .line 167
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDeviceOrSpecialDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 270
    invoke-static {p0}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->setDefaultAnimationRate(Landroid/content/Context;)V

    .line 271
    invoke-static {p0}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->updateAnimationRate(Landroid/content/Context;)I

    .line 272
    invoke-static {p0}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->setAnimationRateUpdatedFromSharedPreference(Landroid/content/Context;)V

    return-void
.end method

.method public static isHideStatusBarWhenEnterRecents()Z
    .locals 1

    .line 185
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevelFromFolme:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHighAnimationRate()Z
    .locals 1

    .line 258
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCurrentAnimationRate:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHighLevelDeviceFromFolme()Z
    .locals 2

    .line 126
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevelFromFolme:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLowAnimationRate()Z
    .locals 2

    .line 266
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCurrentAnimationRate:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLowLevelDevice()Z
    .locals 2

    .line 155
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevel:I

    sget v1, Lcom/miui/home/launcher/common/DeviceLevelUtils;->BUILD_DEVICE_LOW_END:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLowLevelDeviceFromFolme()Z
    .locals 1

    .line 118
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevelFromFolme:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLowLevelOrLiteDevice()Z
    .locals 1

    .line 159
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelDevice()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isMiuiLiteOrMiddleVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isLowLevelOrLiteDeviceOrSpecialDevice()Z
    .locals 1

    .line 163
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSpecialDeviceUsingLowLevelAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isMiddleAnimationRate()Z
    .locals 2

    .line 262
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCurrentAnimationRate:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isMiddleLevelDeviceFromFolme()Z
    .locals 2

    .line 122
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sDeviceLevelFromFolme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isUseSimpleAnim()Z
    .locals 2

    .line 150
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelDeviceFromFolme()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isMiddleLevelDeviceFromFolme()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->FORCE_USE_COMPLETE_ANIM_DEVICES:Ljava/util/Set;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 151
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$animationRateUpdated$1(Landroid/content/Context;)V
    .locals 2

    const-string v0, "animation_rate_updated"

    const/4 v1, 0x1

    .line 241
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private static synthetic lambda$showStatusBar$0(Lcom/miui/home/launcher/Launcher;JZ)V
    .locals 2

    if-eqz p0, :cond_1

    .line 190
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHideStatusBarWhenEnterRecents()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 192
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/Launcher;->showStatusBar(Z)V

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {p0, p3, p1, p2}, Lcom/miui/home/launcher/Launcher;->showStatusBarDelay(ZJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static needMamlProgressIcon()Z
    .locals 1

    .line 292
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHighLevelDeviceFromFolme()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_Q:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->needRemoveDownloadAnimationDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static needRemoveDownloadAnimationDevice()Z
    .locals 3

    .line 296
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v0

    .line 297
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->IS_QCOM:Z

    if-eqz v1, :cond_0

    .line 298
    sget-object v1, Lcom/miui/home/launcher/common/DeviceLevelUtils;->QCOM_REMOVE_DEVICES:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 300
    :cond_0
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->IS_MTK:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 301
    sget-object v1, Lcom/miui/home/launcher/common/DeviceLevelUtils;->MTK_ADD_DEVICES:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    :cond_1
    return v2
.end method

.method public static needShieldHideSwitchDevice()Z
    .locals 3

    .line 307
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "mondrian"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ruby"

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "redwood"

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 310
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "c66ef8e10868698335d019edbc82de9b"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 311
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "550a6aee24871befa055ffd52f92eba9"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 312
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "d76169a6ee7af8a191e04d4745fdfe1b"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 313
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "f1405b8e61bcea02c60bb1d376b3e57b"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 314
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "4408ffb790dababd6cbe8fd2a2f75ff3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 315
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "900bc885d7553375aec470198a9514f3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 316
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "379683511189a8ac385bd67bc3de2497"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static setAnimationRate(Landroid/content/Context;I)V
    .locals 2

    .line 229
    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCurrentAnimationRate:I

    if-eq v0, p1, :cond_0

    .line 230
    sput p1, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCurrentAnimationRate:I

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_home_animation_rate"

    invoke-static {v0, v1, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putIntToSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 233
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAnimationRate(I)V

    .line 234
    invoke-static {p0}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->animationRateUpdated(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static setAnimationRateUpdatedFromSharedPreference(Landroid/content/Context;)V
    .locals 2

    const-string v0, "animation_rate_updated"

    const/4 v1, 0x0

    .line 254
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sAnimationRateUpdated:Z

    return-void
.end method

.method private static setDefaultAnimationRate(Landroid/content/Context;)V
    .locals 3

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_home_animation_rate"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getIntFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 221
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getIsOnUpgradeMiui15()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEFAULT_ANIMATION_RATE:I

    invoke-static {p0, v1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putIntToSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 224
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->setIsOnUpgradeMiui15(Z)V

    :cond_1
    return-void
.end method

.method public static setTaskViewLayerType(Lcom/miui/home/recents/views/TaskView;I)V
    .locals 1

    .line 175
    sget-boolean v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sChangeTaskViewLayerType:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public static showStatusBar(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 181
    invoke-static {p0, p1, v0, v1}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->showStatusBar(Lcom/miui/home/launcher/Launcher;ZJ)V

    return-void
.end method

.method public static showStatusBar(Lcom/miui/home/launcher/Launcher;ZJ)V
    .locals 2

    .line 189
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/launcher/common/DeviceLevelUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/miui/home/launcher/common/DeviceLevelUtils$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/Launcher;JZ)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static supportSetAnimationRate()Z
    .locals 1

    .line 276
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelDeviceFromFolme()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDeviceOrSpecialDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static updateAnimationRate(Landroid/content/Context;)I
    .locals 2

    if-nez p0, :cond_0

    .line 247
    sget p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEFAULT_ANIMATION_RATE:I

    return p0

    .line 248
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->DEFAULT_ANIMATION_RATE:I

    const-string v1, "miui_home_animation_rate"

    invoke-static {p0, v1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getIntFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/miui/home/launcher/common/DeviceLevelUtils;->sCurrentAnimationRate:I

    return p0
.end method
