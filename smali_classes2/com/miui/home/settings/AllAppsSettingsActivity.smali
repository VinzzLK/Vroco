.class public Lcom/miui/home/settings/AllAppsSettingsActivity;
.super Lcom/miui/home/launcher/PreferenceContainerActivity;
.source "AllAppsSettingsActivity.java"


# static fields
.field private static synthetic ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/miui/home/settings/AllAppsSettingsActivity;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/miui/home/launcher/PreferenceContainerActivity;-><init>()V

    return-void
.end method

.method private static synthetic ajc$preClinit()V
    .locals 9

    .line 1
    new-instance v8, Lorg/aspectj/runtime/reflect/Factory;

    const-class v0, Lcom/miui/home/settings/AllAppsSettingsActivity;

    const-string v1, "AllAppsSettingsActivity.java"

    invoke-direct {v8, v1, v0}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "4"

    const-string v2, "onCreate"

    const-string v3, "com.miui.home.settings.AllAppsSettingsActivity"

    const-string v4, "android.os.Bundle"

    const-string v5, "savedInstanceState"

    const-string v6, ""

    const-string v7, "void"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v0

    const-string v1, "method-execution"

    const/16 v2, 0x1a

    invoke-virtual {v8, v1, v0, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/miui/home/settings/AllAppsSettingsActivity;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method static final synthetic onCreate_aroundBody0(Lcom/miui/home/settings/AllAppsSettingsActivity;Landroid/os/Bundle;Lorg/aspectj/lang/JoinPoint;)V
    .locals 4

    const-string v0, "is_drawer_setting"

    .line 26
    :try_start_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v1, 0x7f110102

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 30
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.miui.home.action.LAUNCHER_SLIDEUP_SETTING"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v2, 0x7f10005f

    if-eqz v1, :cond_0

    const v2, 0x7f10017b

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const v2, 0x7f100271

    .line 37
    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 39
    invoke-virtual {p0}, Lcom/miui/home/settings/AllAppsSettingsActivity;->actionBarChanged()V

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 43
    new-instance v2, Lcom/miui/home/settings/AllAppsSettingsFragment;

    invoke-direct {v2}, Lcom/miui/home/settings/AllAppsSettingsFragment;-><init>()V

    .line 44
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 45
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "is_slide_up_setting"

    .line 46
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const p1, 0x1020002

    .line 48
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
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
.method public actionBarChanged()V
    .locals 2

    .line 53
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->setActionBarStyle(Lmiuix/appcompat/app/ActionBar;Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 59
    invoke-virtual {p0}, Lcom/miui/home/settings/AllAppsSettingsActivity;->actionBarChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    sget-object v0, Lcom/miui/home/settings/AllAppsSettingsActivity;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

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

    new-instance p0, Lcom/miui/home/settings/AllAppsSettingsActivity$AjcClosure1;

    invoke-direct {p0, v2}, Lcom/miui/home/settings/AllAppsSettingsActivity$AjcClosure1;-><init>([Ljava/lang/Object;)V

    const p1, 0x11010

    invoke-virtual {p0, p1}, Lorg/aspectj/runtime/internal/AroundClosure;->linkClosureAndJoinPoint(I)Lorg/aspectj/lang/ProceedingJoinPoint;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/miui/home/safemode/SafeModeAspect;->replaceActivityOnCreate(Lorg/aspectj/lang/ProceedingJoinPoint;)Ljava/lang/Object;

    return-void
.end method
