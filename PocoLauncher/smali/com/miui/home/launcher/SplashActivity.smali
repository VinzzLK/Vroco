.class public Lcom/miui/home/launcher/SplashActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "SplashActivity.java"


# static fields
.field private static synthetic ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field public mStartUpGuide:Lcom/miui/home/launcher/guide/StartUpGuide;


# direct methods
.method public static synthetic $r8$lambda$YcwTx-zyPT6w7xhbPNTcJma2Bv8(Lcom/miui/home/launcher/SplashActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/SplashActivity;->lambda$onCreate$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/miui/home/launcher/SplashActivity;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private static synthetic ajc$preClinit()V
    .locals 9

    .line 1
    new-instance v8, Lorg/aspectj/runtime/reflect/Factory;

    const-class v0, Lcom/miui/home/launcher/SplashActivity;

    const-string v1, "SplashActivity.java"

    invoke-direct {v8, v1, v0}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "4"

    const-string v2, "onCreate"

    const-string v3, "com.miui.home.launcher.SplashActivity"

    const-string v4, "android.os.Bundle"

    const-string v5, "savedInstanceState"

    const-string v6, ""

    const-string/jumbo v7, "void"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v0

    const-string v1, "method-execution"

    const/16 v2, 0x2c

    invoke-virtual {v8, v1, v0, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/SplashActivity;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method private initStatusBarForDialog()V
    .locals 2

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 94
    sget-boolean v0, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_OREO:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2510

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    const/16 v0, 0x100

    .line 99
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    const/high16 v0, -0x80000000

    .line 100
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, -0x1

    .line 101
    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 102
    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/miui/home/launcher/SplashActivity;->launchLauncher()V

    return-void
.end method

.method private launchLauncher()V
    .locals 4

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x2000000

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x200000

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 75
    :catch_0
    :try_start_1
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/miui/home/launcher/Launcher;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 78
    :goto_2
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 79
    throw v0
.end method

.method static onAppCompatNightModeChanged(I)V
    .locals 0

    .line 158
    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    return-void
.end method

.method static final synthetic onCreate_aroundBody0(Lcom/miui/home/launcher/SplashActivity;Landroid/os/Bundle;Lorg/aspectj/lang/JoinPoint;)V
    .locals 1

    .line 44
    :try_start_0
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-direct {p0}, Lcom/miui/home/launcher/SplashActivity;->updateUiMode()V

    .line 46
    invoke-static {p0}, Lcom/miui/home/launcher/guide/StartUpGuideFactory;->create(Landroid/content/Context;)Lcom/miui/home/launcher/guide/StartUpGuide;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/SplashActivity;->mStartUpGuide:Lcom/miui/home/launcher/guide/StartUpGuide;

    .line 47
    invoke-virtual {p1}, Lcom/miui/home/launcher/guide/StartUpGuide;->isFirstLaunch()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 48
    iget-object p1, p0, Lcom/miui/home/launcher/SplashActivity;->mStartUpGuide:Lcom/miui/home/launcher/guide/StartUpGuide;

    invoke-virtual {p1}, Lcom/miui/home/launcher/guide/StartUpGuide;->setupContentView()V

    .line 49
    iget-object p1, p0, Lcom/miui/home/launcher/SplashActivity;->mStartUpGuide:Lcom/miui/home/launcher/guide/StartUpGuide;

    invoke-virtual {p1}, Lcom/miui/home/launcher/guide/StartUpGuide;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/miui/home/launcher/SplashActivity;->setUpView()V

    .line 51
    iget-object p1, p0, Lcom/miui/home/launcher/SplashActivity;->mStartUpGuide:Lcom/miui/home/launcher/guide/StartUpGuide;

    invoke-virtual {p1}, Lcom/miui/home/launcher/guide/StartUpGuide;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/SplashActivity;->launchLauncher()V

    .line 55
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/SplashActivity;->mStartUpGuide:Lcom/miui/home/launcher/guide/StartUpGuide;

    new-instance v0, Lcom/miui/home/launcher/SplashActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/SplashActivity$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/SplashActivity;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/guide/StartUpGuide;->setOnFinishGuidingListener(Lcom/miui/home/launcher/guide/OnFinishStartUpGuideListener;)V

    .line 56
    iget-object p0, p0, Lcom/miui/home/launcher/SplashActivity;->mStartUpGuide:Lcom/miui/home/launcher/guide/StartUpGuide;

    invoke-virtual {p0}, Lcom/miui/home/launcher/guide/StartUpGuide;->guide()V

    goto :goto_1

    .line 58
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/SplashActivity;->launchLauncher()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :goto_1
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

.method private setUpView()V
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/miui/home/launcher/SplashActivity;->initStatusBarForDialog()V

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method

.method public static updateDrawerFromSystemUiMode()V
    .locals 2

    .line 149
    invoke-static {}, Lcom/miui/home/launcher/util/SystemUtil;->getSystemUiMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 151
    invoke-static {v1}, Lcom/miui/home/launcher/SplashActivity;->onAppCompatNightModeChanged(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 153
    invoke-static {v0}, Lcom/miui/home/launcher/SplashActivity;->onAppCompatNightModeChanged(I)V

    :goto_0
    return-void
.end method

.method private updateUiMode()V
    .locals 1

    .line 139
    invoke-static {p0}, Lcom/miui/home/launcher/util/SystemUtil;->setSystemUiMode(Landroid/content/Context;)V

    .line 140
    invoke-static {}, Lcom/miui/home/launcher/util/SystemUtil;->needToChangeColorWhenFollowSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Lcom/miui/home/launcher/SplashActivity;->updateDrawerFromSystemUiMode()V

    .line 143
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/util/SystemUtil;->isSystemUiModeChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 134
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 135
    invoke-direct {p0}, Lcom/miui/home/launcher/SplashActivity;->updateUiMode()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    sget-object v0, Lcom/miui/home/launcher/SplashActivity;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 44
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

    new-instance p0, Lcom/miui/home/launcher/SplashActivity$AjcClosure1;

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/SplashActivity$AjcClosure1;-><init>([Ljava/lang/Object;)V

    const p1, 0x11010

    invoke-virtual {p0, p1}, Lorg/aspectj/runtime/internal/AroundClosure;->linkClosureAndJoinPoint(I)Lorg/aspectj/lang/ProceedingJoinPoint;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/miui/home/safemode/SafeModeAspect;->replaceActivityOnCreate(Lorg/aspectj/lang/ProceedingJoinPoint;)Ljava/lang/Object;

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 129
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    .line 108
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x3

    if-ne v0, p1, :cond_1

    .line 117
    array-length p1, p2

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    aget p1, p3, p2

    if-nez p1, :cond_0

    .line 118
    iget-object p0, p0, Lcom/miui/home/launcher/SplashActivity;->mStartUpGuide:Lcom/miui/home/launcher/guide/StartUpGuide;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/guide/StartUpGuide;->dealWithStoragePermissionResult(Z)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/SplashActivity;->mStartUpGuide:Lcom/miui/home/launcher/guide/StartUpGuide;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/guide/StartUpGuide;->dealWithStoragePermissionResult(Z)V

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 121
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    .line 122
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p1

    const-string p2, "request_permission"

    invoke-virtual {p1, p2, p0}, Lcom/miui/home/launcher/common/BaseSharePreference;->putBooleanForce(Ljava/lang/String;Z)Z

    :cond_1
    :goto_0
    return-void
.end method
