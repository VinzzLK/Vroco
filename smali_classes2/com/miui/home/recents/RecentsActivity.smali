.class public Lcom/miui/home/recents/RecentsActivity;
.super Lcom/miui/home/launcher/BaseActivity;
.source "RecentsActivity.java"


# static fields
.field private static synthetic ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field recentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

.field recentsView:Lcom/miui/home/recents/views/RecentsView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/miui/home/recents/RecentsActivity;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/miui/home/launcher/BaseActivity;-><init>()V

    return-void
.end method

.method private static synthetic ajc$preClinit()V
    .locals 9

    .line 1
    new-instance v8, Lorg/aspectj/runtime/reflect/Factory;

    const-class v0, Lcom/miui/home/recents/RecentsActivity;

    const-string v1, "RecentsActivity.java"

    invoke-direct {v8, v1, v0}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "4"

    const-string v2, "onCreate"

    const-string v3, "com.miui.home.recents.RecentsActivity"

    const-string v4, "android.os.Bundle"

    const-string v5, "savedInstanceState"

    const-string v6, ""

    const-string v7, "void"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v0

    const-string v1, "method-execution"

    const/16 v2, 0x1b

    invoke-virtual {v8, v1, v0, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/miui/home/recents/RecentsActivity;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method static final synthetic onCreate_aroundBody0(Lcom/miui/home/recents/RecentsActivity;Landroid/os/Bundle;Lorg/aspectj/lang/JoinPoint;)V
    .locals 0

    .line 27
    :try_start_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsActivity;->initViews()V

    .line 29
    invoke-static {p0}, Lcom/miui/home/recents/RecentsActivityTracker;->onRecentsActivityCreate(Lcom/miui/home/recents/RecentsActivity;)V

    .line 30
    invoke-direct {p0}, Lcom/miui/home/recents/RecentsActivity;->setSystemUiVisibility()V

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x100

    .line 33
    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    const/high16 p1, -0x80000000

    .line 34
    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x1

    .line 35
    invoke-static {p0, p1, p1}, Lcom/miui/launcher/utils/MiuiWindowManagerUtils;->setExtraFlag(Landroid/view/Window;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
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

.method private setSystemUiVisibility()V
    .locals 1

    .line 40
    iget-object p0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

    const/16 v0, 0x700

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method public getOverviewPanel()Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">()TT;"
        }
    .end annotation

    .line 78
    iget-object p0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsView:Lcom/miui/home/recents/views/RecentsView;

    return-object p0
.end method

.method public getRootView()Landroid/view/View;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

    return-object p0
.end method

.method protected initViews()V
    .locals 2

    const v0, 0x7f0d0159

    .line 46
    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    const v0, 0x7f0a02eb

    .line 47
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsContainer;

    iput-object v0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

    const/4 v1, 0x0

    .line 48
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    const v0, 0x7f0a02f1

    .line 49
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsView;

    iput-object v0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsView:Lcom/miui/home/recents/views/RecentsView;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    sget-object v0, Lcom/miui/home/recents/RecentsActivity;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 27
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

    new-instance p0, Lcom/miui/home/recents/RecentsActivity$AjcClosure1;

    invoke-direct {p0, v2}, Lcom/miui/home/recents/RecentsActivity$AjcClosure1;-><init>([Ljava/lang/Object;)V

    const p1, 0x11010

    invoke-virtual {p0, p1}, Lorg/aspectj/runtime/internal/AroundClosure;->linkClosureAndJoinPoint(I)Lorg/aspectj/lang/ProceedingJoinPoint;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/miui/home/safemode/SafeModeAspect;->replaceActivityOnCreate(Lorg/aspectj/lang/ProceedingJoinPoint;)Ljava/lang/Object;

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 73
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 74
    invoke-static {p0}, Lcom/miui/home/recents/RecentsActivityTracker;->onRecentsActivityDestroy(Lcom/miui/home/recents/RecentsActivity;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 55
    invoke-static {p0}, Lcom/miui/home/recents/RecentsActivityTracker;->onRecentsActivityNewIntent(Lcom/miui/home/recents/RecentsActivity;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 60
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onResume()V

    .line 61
    iget-object v0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsView:Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->reloadStackView()V

    .line 62
    iget-object p0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setOverviewStateEnabled(Z)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 67
    invoke-super {p0}, Lcom/miui/home/launcher/BaseActivity;->onStop()V

    .line 68
    iget-object p0, p0, Lcom/miui/home/recents/RecentsActivity;->recentsContainer:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->onExitState()V

    return-void
.end method
