.class public Lcom/miui/home/recents/AnimatorDurationScaleHelper;
.super Ljava/lang/Object;
.source "AnimatorDurationScaleHelper.java"


# static fields
.field private static sAnimatorDurationScale:F = 1.0f

.field private static final sAnimatorDurationScaleObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/miui/home/recents/AnimatorDurationScaleHelper$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/miui/home/recents/AnimatorDurationScaleHelper$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/miui/home/recents/AnimatorDurationScaleHelper;->sAnimatorDurationScaleObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 11
    invoke-static {}, Lcom/miui/home/recents/AnimatorDurationScaleHelper;->updateAnimatorDurationScale()V

    return-void
.end method

.method public static isCloseAnimator()Z
    .locals 3

    .line 39
    sget v0, Lcom/miui/home/recents/AnimatorDurationScaleHelper;->sAnimatorDurationScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCloseAnimator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnimatorDurationScaleHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static registerAnimatorDurationScaleObserver()V
    .locals 4

    const-string v0, "AnimatorDurationScaleHelper"

    const-string v1, "registerAnimatorDurationScaleObserver"

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "animator_duration_scale"

    .line 27
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/AnimatorDurationScaleHelper;->sAnimatorDurationScaleObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 26
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 29
    invoke-static {}, Lcom/miui/home/recents/AnimatorDurationScaleHelper;->updateAnimatorDurationScale()V

    return-void
.end method

.method private static updateAnimatorDurationScale()V
    .locals 3

    .line 34
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "animator_duration_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    .line 33
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/miui/home/recents/AnimatorDurationScaleHelper;->sAnimatorDurationScale:F

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sAnimatorDurationScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/miui/home/recents/AnimatorDurationScaleHelper;->sAnimatorDurationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimatorDurationScaleHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
