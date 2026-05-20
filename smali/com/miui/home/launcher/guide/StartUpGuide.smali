.class public abstract Lcom/miui/home/launcher/guide/StartUpGuide;
.super Ljava/lang/Object;
.source "StartUpGuide.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mIsQuiteGuide:Z

.field public mListener:Lcom/miui/home/launcher/guide/OnFinishStartUpGuideListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/miui/home/launcher/guide/StartUpGuide;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dealWithStoragePermissionResult(Z)V
    .locals 0

    return-void
.end method

.method public abstract getContentView()Landroid/view/View;
.end method

.method public guide()V
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/miui/home/launcher/guide/StartUpGuide;->performFirstGuide()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/miui/home/launcher/guide/StartUpGuide;->setFirstLaunch()V

    .line 34
    iget-object p0, p0, Lcom/miui/home/launcher/guide/StartUpGuide;->mListener:Lcom/miui/home/launcher/guide/OnFinishStartUpGuideListener;

    invoke-interface {p0}, Lcom/miui/home/launcher/guide/OnFinishStartUpGuideListener;->finishGuiding()V

    :cond_0
    return-void
.end method

.method public isFirstLaunch()Z
    .locals 0

    .line 69
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->isFirstLaunchGuideShown()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected needRequestStoragePermission(Landroid/content/Context;)Z
    .locals 0

    .line 61
    invoke-static {p1}, Lcom/miui/home/launcher/util/PermissionUtils;->hasStoragePermission(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/util/PermissionUtils;->shouldAskAgainStoragePermission()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract performFirstGuide()Z
.end method

.method public setFirstLaunch()V
    .locals 0

    .line 76
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->setIsFirstLaunchGuideShown()V

    return-void
.end method

.method public setOnFinishGuidingListener(Lcom/miui/home/launcher/guide/OnFinishStartUpGuideListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/miui/home/launcher/guide/StartUpGuide;->mListener:Lcom/miui/home/launcher/guide/OnFinishStartUpGuideListener;

    return-void
.end method

.method public abstract setupContentView()V
.end method
