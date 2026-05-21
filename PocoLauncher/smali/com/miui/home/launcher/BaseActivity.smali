.class public abstract Lcom/miui/home/launcher/BaseActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/BaseActivity$MultiWindowModeChangedListener;,
        Lcom/miui/home/launcher/BaseActivity$OnStartCallback;
    }
.end annotation


# static fields
.field private static synthetic ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private mActivityFlags:I

.field private final mDPChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/GridConfig$OnGridConfigChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mForceInvisible:I

.field protected mGridConfig:Lcom/miui/home/launcher/GridConfig;

.field private final mMultiWindowModeChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/BaseActivity$MultiWindowModeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnStartCallback:Lcom/miui/home/launcher/BaseActivity$OnStartCallback;

.field private final mViewCache:Lcom/miui/home/launcher/util/ViewCache;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/miui/home/launcher/BaseActivity;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/BaseActivity;->mDPChangeListeners:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/BaseActivity;->mMultiWindowModeChangedListeners:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Lcom/miui/home/launcher/util/ViewCache;

    invoke-direct {v0}, Lcom/miui/home/launcher/util/ViewCache;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/BaseActivity;->mViewCache:Lcom/miui/home/launcher/util/ViewCache;

    return-void
.end method

.method private static synthetic ajc$preClinit()V
    .locals 9

    .line 1
    new-instance v8, Lorg/aspectj/runtime/reflect/Factory;

    const-class v0, Lcom/miui/home/launcher/BaseActivity;

    const-string v1, "BaseActivity.java"

    invoke-direct {v8, v1, v0}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "4"

    const-string v2, "onCreate"

    const-string v3, "com.miui.home.launcher.BaseActivity"

    const-string v4, "android.os.Bundle"

    const-string v5, "savedInstanceState"

    const-string v6, ""

    const-string/jumbo v7, "void"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v0

    const-string v1, "method-execution"

    const/16 v2, 0x65

    invoke-virtual {v8, v1, v0, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/BaseActivity;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static fromContext(Landroid/content/Context;)Lcom/miui/home/launcher/BaseActivity;
    .locals 1

    .line 88
    instance-of v0, p0, Lcom/miui/home/launcher/BaseActivity;

    if-eqz v0, :cond_0

    .line 89
    check-cast p0, Lcom/miui/home/launcher/BaseActivity;

    return-object p0

    .line 91
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/BaseActivity;

    return-object p0
.end method

.method static final synthetic onCreate_aroundBody0(Lcom/miui/home/launcher/BaseActivity;Landroid/os/Bundle;Lorg/aspectj/lang/JoinPoint;)V
    .locals 0

    .line 101
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onCreateBeforeSuper(Landroid/os/Bundle;)V

    .line 102
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-static {}, Lcom/miui/home/safemode/SafeModeAspect;->aspectOf()Lcom/miui/home/safemode/SafeModeAspect;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/miui/home/safemode/SafeModeAspect;->onActivityMethodAfter(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/miui/home/safemode/SafeModeAspect;->aspectOf()Lcom/miui/home/safemode/SafeModeAspect;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/home/safemode/SafeModeAspect;->onActivityMethodAfter(Lorg/aspectj/lang/JoinPoint;)V

    throw p0
.end method


# virtual methods
.method public addOnGridConfigChangeListener(Lcom/miui/home/launcher/GridConfig$OnGridConfigChangeListener;)V
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/miui/home/launcher/BaseActivity;->mDPChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected dispatchDeviceProfileChanged()V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/miui/home/launcher/BaseActivity;->mDPChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 226
    iget-object v1, p0, Lcom/miui/home/launcher/BaseActivity;->mDPChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/GridConfig$OnGridConfigChangeListener;

    iget-object v2, p0, Lcom/miui/home/launcher/BaseActivity;->mGridConfig:Lcom/miui/home/launcher/GridConfig;

    invoke-interface {v1, v2}, Lcom/miui/home/launcher/GridConfig$OnGridConfigChangeListener;->onGridConfigChanged(Lcom/miui/home/launcher/GridConfig;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract getOverviewPanel()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">()TT;"
        }
    .end annotation
.end method

.method public abstract getRootView()Landroid/view/View;
.end method

.method public hasBeenResumed()Z
    .locals 0

    .line 169
    iget p0, p0, Lcom/miui/home/launcher/BaseActivity;->mActivityFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStarted()Z
    .locals 1

    .line 162
    iget p0, p0, Lcom/miui/home/launcher/BaseActivity;->mActivityFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserActive()Z
    .locals 0

    .line 173
    iget p0, p0, Lcom/miui/home/launcher/BaseActivity;->mActivityFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 96
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    sget-object v0, Lcom/miui/home/launcher/BaseActivity;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 101
    invoke-static {}, Lcom/miui/home/safemode/SafeModeAspect;->aspectOf()Lcom/miui/home/safemode/SafeModeAspect;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object v0, v2, p0

    new-instance p0, Lcom/miui/home/launcher/BaseActivity$AjcClosure1;

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/BaseActivity$AjcClosure1;-><init>([Ljava/lang/Object;)V

    const p1, 0x11010

    invoke-virtual {p0, p1}, Lorg/aspectj/runtime/internal/AroundClosure;->linkClosureAndJoinPoint(I)Lorg/aspectj/lang/ProceedingJoinPoint;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/miui/home/safemode/SafeModeAspect;->replaceActivityOnCreate(Lorg/aspectj/lang/ProceedingJoinPoint;)Ljava/lang/Object;

    return-void
.end method

.method protected onCreateBeforeSuper(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    .line 138
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 139
    iget-object p2, p0, Lcom/miui/home/launcher/BaseActivity;->mMultiWindowModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_0

    .line 140
    iget-object v0, p0, Lcom/miui/home/launcher/BaseActivity;->mMultiWindowModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/BaseActivity$MultiWindowModeChangedListener;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/BaseActivity$MultiWindowModeChangedListener;->onMultiWindowModeChanged(Z)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 153
    iget v0, p0, Lcom/miui/home/launcher/BaseActivity;->mActivityFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/miui/home/launcher/BaseActivity;->mActivityFlags:I

    .line 154
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 126
    iget v0, p0, Lcom/miui/home/launcher/BaseActivity;->mActivityFlags:I

    or-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/miui/home/launcher/BaseActivity;->mActivityFlags:I

    .line 127
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 111
    iget v0, p0, Lcom/miui/home/launcher/BaseActivity;->mActivityFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/home/launcher/BaseActivity;->mActivityFlags:I

    .line 112
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 114
    iget-object v0, p0, Lcom/miui/home/launcher/BaseActivity;->mOnStartCallback:Lcom/miui/home/launcher/BaseActivity$OnStartCallback;

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0}, Lcom/miui/home/launcher/BaseActivity$OnStartCallback;->onActivityStart()V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/miui/home/launcher/BaseActivity;->mOnStartCallback:Lcom/miui/home/launcher/BaseActivity$OnStartCallback;

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 146
    iget v0, p0, Lcom/miui/home/launcher/BaseActivity;->mActivityFlags:I

    and-int/lit8 v0, v0, -0x6

    iput v0, p0, Lcom/miui/home/launcher/BaseActivity;->mActivityFlags:I

    const/4 v0, 0x0

    .line 147
    iput v0, p0, Lcom/miui/home/launcher/BaseActivity;->mForceInvisible:I

    .line 148
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .line 132
    iget v0, p0, Lcom/miui/home/launcher/BaseActivity;->mActivityFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/miui/home/launcher/BaseActivity;->mActivityFlags:I

    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    return-void
.end method

.method public removeOnGridConfigChangeListener(Lcom/miui/home/launcher/GridConfig$OnGridConfigChangeListener;)V
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/miui/home/launcher/BaseActivity;->mDPChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
