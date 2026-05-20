.class public Lcom/mi/appfinder/launcher/utils/FeatureEnableUtils;
.super Ljava/lang/Object;
.source "FeatureEnableUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLogcatEnable()Z
    .locals 2

    const-string v0, "HOME_FINDER_LOGCAT"

    const/4 v1, 0x2

    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
