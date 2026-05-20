.class public abstract Lcom/miui/home/launcher/PreferenceContainerActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "PreferenceContainerActivity.java"


# static fields
.field private static synthetic ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/miui/home/launcher/PreferenceContainerActivity;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private static synthetic ajc$preClinit()V
    .locals 9

    .line 1
    new-instance v8, Lorg/aspectj/runtime/reflect/Factory;

    const-class v0, Lcom/miui/home/launcher/PreferenceContainerActivity;

    const-string v1, "PreferenceContainerActivity.java"

    invoke-direct {v8, v1, v0}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "4"

    const-string v2, "onCreate"

    const-string v3, "com.miui.home.launcher.PreferenceContainerActivity"

    const-string v4, "android.os.Bundle"

    const-string v5, "savedInstanceState"

    const-string v6, ""

    const-string/jumbo v7, "void"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v0

    const-string v1, "method-execution"

    const/16 v2, 0x1a

    invoke-virtual {v8, v1, v0, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/PreferenceContainerActivity;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method static final synthetic onCreate_aroundBody0(Lcom/miui/home/launcher/PreferenceContainerActivity;Landroid/os/Bundle;Lorg/aspectj/lang/JoinPoint;)V
    .locals 0

    .line 26
    :try_start_0
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
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
.method public onBackPressed()V
    .locals 0

    .line 59
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->startSettingActivityIfNeed(Landroid/app/Activity;)V

    .line 60
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    sget-object v0, Lcom/miui/home/launcher/PreferenceContainerActivity;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 26
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

    new-instance p0, Lcom/miui/home/launcher/PreferenceContainerActivity$AjcClosure1;

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/PreferenceContainerActivity$AjcClosure1;-><init>([Ljava/lang/Object;)V

    const p1, 0x11010

    invoke-virtual {p0, p1}, Lorg/aspectj/runtime/internal/AroundClosure;->linkClosureAndJoinPoint(I)Lorg/aspectj/lang/ProceedingJoinPoint;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/miui/home/safemode/SafeModeAspect;->replaceActivityOnCreate(Lorg/aspectj/lang/ProceedingJoinPoint;)Ljava/lang/Object;

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onMultiWindowModeChanged(Z)V

    .line 66
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->checkMultiWindowState(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 31
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 32
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/PreferenceContainerActivity;->setNavigationTrans(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 33
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->checkMultiWindowState(Landroid/app/Activity;)V

    return-void
.end method

.method public setActionBarStyle(Lmiuix/appcompat/app/ActionBar;Z)V
    .locals 0

    .line 47
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 50
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 52
    :cond_0
    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    .line 53
    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    :cond_1
    return-void
.end method

.method public setNavigationTrans(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 2

    .line 37
    invoke-static {p1}, Lcom/miui/home/recents/util/Utilities;->isForceFSGNavBar(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "PreferenceContainerActivity"

    const/high16 v1, 0x8000000

    if-eqz p0, :cond_0

    .line 38
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->addFlags(I)V

    const-string/jumbo p0, "setNavigationTrans: addFlags"

    .line 39
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    const-string/jumbo p0, "setNavigationTrans: clearFlags"

    .line 42
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
