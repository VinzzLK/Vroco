.class public Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;
.super Ljava/lang/Object;
.source "OneTrackInterfaceUtils.java"


# static fields
.field public static final IS_ENABLE:Z

.field private static mHomeSettingOneTrack:Lcom/xiaomi/onetrack/OneTrack;

.field private static mMiuiHomeOneTrack:Lcom/xiaomi/onetrack/OneTrack;

.field private static mWidgetOneTrack:Lcom/xiaomi/onetrack/OneTrack;

.field private static sMirrorOneTrack:Lcom/xiaomi/onetrack/OneTrack;

.field private static sOneHandModeOneTrack:Lcom/xiaomi/onetrack/OneTrack;


# direct methods
.method public static synthetic $r8$lambda$4_yBZcudZn06sIYfPCKbfo28zR4(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->lambda$trackHomeSettingEvent$6(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E-uGMikynO05EosSbZh9sNkWxFc(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->lambda$trackEvent$0(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EeoD3sAkQC3oWmalkdvw3m4eLkU(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->lambda$trackOneHandModeEvent$3(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GStT2mJroiram-g-hvbaYgPVwiI(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->lambda$trackMiuiWidgetAdvertEvent$2(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pVyQitiERPwj_uQWAKJwxvydiGE(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->lambda$trackHomeSettingStatusEvent$5(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rpc2CRl0fgQibib73GQ9sBh0u4c(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->lambda$trackMiuiWidgetEvent$1(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zlWc8wkQp3mKQ5llYIBPI86H0DQ(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->lambda$trackMirrorEvent$4(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 18
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->IS_ENABLE:Z

    return-void
.end method

.method public static hasMemoryOaid()Z
    .locals 1

    .line 94
    sget-object v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->mMiuiHomeOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/OneTrack;->hasMemoryOaid()Z

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 6

    const-string v0, "home_channel"

    .line 34
    sget-boolean v1, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->IS_ENABLE:Z

    const-string v2, "OneTrackInterfaceUtils"

    if-nez v1, :cond_0

    const-string p0, "OneTrack is not enable in miuiHome"

    .line 35
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 39
    :cond_0
    :try_start_0
    new-instance v1, Lcom/xiaomi/onetrack/Configuration$Builder;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/Configuration$Builder;-><init>()V

    const-string v3, "43275"

    .line 40
    invoke-virtual {v1, v3}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v1

    .line 41
    invoke-virtual {v1, v0}, Lcom/xiaomi/onetrack/Configuration$Builder;->setChannel(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v1

    sget-object v3, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 42
    invoke-virtual {v1, v3}, Lcom/xiaomi/onetrack/Configuration$Builder;->setMode(Lcom/xiaomi/onetrack/OneTrack$Mode;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v1

    const/4 v4, 0x1

    .line 43
    invoke-virtual {v1, v4}, Lcom/xiaomi/onetrack/Configuration$Builder;->setExceptionCatcherEnable(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    move-result-object v1

    .line 39
    invoke-static {p0, v1}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    move-result-object v1

    sput-object v1, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->mMiuiHomeOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    .line 45
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->setUseSystemNetTrafficOnly()V

    .line 47
    new-instance v1, Lcom/xiaomi/onetrack/Configuration$Builder;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/Configuration$Builder;-><init>()V

    const-string v5, "31000401650"

    .line 48
    invoke-virtual {v1, v5}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v1

    .line 49
    invoke-virtual {v1, v0}, Lcom/xiaomi/onetrack/Configuration$Builder;->setChannel(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0, v3}, Lcom/xiaomi/onetrack/Configuration$Builder;->setMode(Lcom/xiaomi/onetrack/OneTrack$Mode;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v4}, Lcom/xiaomi/onetrack/Configuration$Builder;->setExceptionCatcherEnable(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    move-result-object v0

    .line 47
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->mHomeSettingOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    .line 53
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->setUseSystemNetTrafficOnly()V

    .line 55
    new-instance v0, Lcom/xiaomi/onetrack/Configuration$Builder;

    invoke-direct {v0}, Lcom/xiaomi/onetrack/Configuration$Builder;-><init>()V

    const-string v1, "31000000517"

    .line 56
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    const-string v1, "31000000893"

    .line 57
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAdEventAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    const-string v1, "1"

    .line 58
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setPluginId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$Mode;->PLUGIN:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 59
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setMode(Lcom/xiaomi/onetrack/OneTrack$Mode;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v4}, Lcom/xiaomi/onetrack/Configuration$Builder;->setUseCustomPrivacyPolicy(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    move-result-object v0

    .line 55
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->mWidgetOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    .line 62
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->setUseSystemNetTrafficOnly()V

    .line 63
    sget-object v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->mWidgetOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    invoke-virtual {v0, v4}, Lcom/xiaomi/onetrack/OneTrack;->setCustomPrivacyPolicyAccepted(Z)V

    .line 65
    new-instance v0, Lcom/xiaomi/onetrack/Configuration$Builder;

    invoke-direct {v0}, Lcom/xiaomi/onetrack/Configuration$Builder;-><init>()V

    const-string v5, "31000000730"

    .line 66
    invoke-virtual {v0, v5}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    const-string v5, "miuihome_handmode"

    .line 67
    invoke-virtual {v0, v5}, Lcom/xiaomi/onetrack/Configuration$Builder;->setPluginId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setMode(Lcom/xiaomi/onetrack/OneTrack$Mode;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    .line 69
    invoke-virtual {v0, v4}, Lcom/xiaomi/onetrack/Configuration$Builder;->setUseCustomPrivacyPolicy(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    move-result-object v0

    .line 65
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->sOneHandModeOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    .line 71
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->setUseSystemNetTrafficOnly()V

    .line 72
    sget-object v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->sOneHandModeOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    invoke-virtual {v0, v4}, Lcom/xiaomi/onetrack/OneTrack;->setCustomPrivacyPolicyAccepted(Z)V

    .line 74
    new-instance v0, Lcom/xiaomi/onetrack/Configuration$Builder;

    invoke-direct {v0}, Lcom/xiaomi/onetrack/Configuration$Builder;-><init>()V

    const-string v1, "31000000686"

    .line 75
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v3}, Lcom/xiaomi/onetrack/Configuration$Builder;->setMode(Lcom/xiaomi/onetrack/OneTrack$Mode;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v4}, Lcom/xiaomi/onetrack/Configuration$Builder;->setExceptionCatcherEnable(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 78
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAutoTrackActivityAction(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0, v4}, Lcom/xiaomi/onetrack/Configuration$Builder;->setUseCustomPrivacyPolicy(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    move-result-object v0

    .line 74
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->sMirrorOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    .line 81
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->setUseSystemNetTrafficOnly()V

    .line 82
    sget-object p0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->sMirrorOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    invoke-virtual {p0, v4}, Lcom/xiaomi/onetrack/OneTrack;->setCustomPrivacyPolicyAccepted(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "init"

    .line 84
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static synthetic lambda$trackEvent$0(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    const-string v0, "OneTrackInterfaceUtils"

    .line 111
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->mMiuiHomeOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    invoke-virtual {v1, p0, p1}, Lcom/xiaomi/onetrack/OneTrack;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 113
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", params="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 112
    invoke-static {v0, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string/jumbo p1, "trackEvent fail"

    .line 115
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private static synthetic lambda$trackHomeSettingEvent$6(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    const-string v0, "OneTrackInterfaceUtils"

    .line 192
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->mHomeSettingOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    const-string v2, "31000401650"

    invoke-virtual {v1, v2, p0, p1}, Lcom/xiaomi/onetrack/OneTrack;->trackPluginEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", params="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "trackHomeSettingEvent trackEvent fail"

    .line 195
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static synthetic lambda$trackHomeSettingStatusEvent$5(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    const-string v0, "OneTrackInterfaceUtils"

    .line 180
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->mHomeSettingOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    const-string v2, "31000401650"

    invoke-virtual {v1, v2, p0, p1}, Lcom/xiaomi/onetrack/OneTrack;->trackPluginEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", params="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "trackHomeSettingStatusEvent trackEvent fail"

    .line 183
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static synthetic lambda$trackMirrorEvent$4(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    const-string v0, "OneTrackInterfaceUtils"

    .line 167
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->sMirrorOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    invoke-virtual {v1, p0, p1}, Lcom/xiaomi/onetrack/OneTrack;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 169
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", params="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 168
    invoke-static {v0, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string/jumbo p1, "trackMirrorEvent trackEvent fail"

    .line 171
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private static synthetic lambda$trackMiuiWidgetAdvertEvent$2(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    const-string v0, "OneTrackInterfaceUtils"

    .line 137
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->mWidgetOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    invoke-virtual {v1, p0, p1}, Lcom/xiaomi/onetrack/OneTrack;->adTrack(Ljava/lang/String;Ljava/util/Map;)V

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 139
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", params="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 138
    invoke-static {v0, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string/jumbo p1, "trackMiuiWidgetAdvertEvent trackAdvertEvent fail"

    .line 141
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private static synthetic lambda$trackMiuiWidgetEvent$1(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    const-string v0, "OneTrackInterfaceUtils"

    .line 124
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->mWidgetOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    const-string v2, "31000000517"

    invoke-virtual {v1, v2, p0, p1}, Lcom/xiaomi/onetrack/OneTrack;->trackPluginEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 126
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", params="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 125
    invoke-static {v0, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string/jumbo p1, "trackMiuiWidgetEvent trackEvent fail"

    .line 128
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private static synthetic lambda$trackOneHandModeEvent$3(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    const-string v0, "OneTrackInterfaceUtils"

    .line 152
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->sOneHandModeOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    const-string v2, "miuihome_handmode"

    invoke-virtual {v1, v2, p0, p1}, Lcom/xiaomi/onetrack/OneTrack;->trackPluginEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 154
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", params="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 153
    invoke-static {v0, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string/jumbo p1, "trackOneHandModeEvent trackEvent fail"

    .line 156
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static refreshGetOaidTime()V
    .locals 2

    const-string v0, "OneTrackInterfaceUtils"

    const-string v1, "refresh get oaid time: "

    .line 89
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->mMiuiHomeOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/OneTrack;->refreshGetOaidTime()V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;)V
    .locals 3

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "pointless"

    const-string v2, ""

    .line 103
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 108
    sget-boolean v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->IS_ENABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static trackHomeSettingEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 189
    sget-boolean v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->IS_ENABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 190
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static trackHomeSettingStatusEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 177
    sget-boolean v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->IS_ENABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 178
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static trackMirrorEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 162
    sget-boolean v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->IS_ENABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static trackMiuiWidgetAdvertEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 134
    sget-boolean v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->IS_ENABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static trackMiuiWidgetEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 121
    sget-boolean v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->IS_ENABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static trackOneHandModeEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 147
    sget-boolean v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils;->IS_ENABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/common/OneTrackInterfaceUtils$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
