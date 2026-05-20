.class public Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleActivity;
.super Lcom/miui/home/launcher/PreferenceContainerActivity;
.source "TaskStackViewLayoutStyleActivity.java"


# static fields
.field private static synthetic ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleActivity;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/miui/home/launcher/PreferenceContainerActivity;-><init>()V

    return-void
.end method

.method private static synthetic ajc$preClinit()V
    .locals 9

    .line 1
    new-instance v8, Lorg/aspectj/runtime/reflect/Factory;

    const-class v0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleActivity;

    const-string v1, "TaskStackViewLayoutStyleActivity.java"

    invoke-direct {v8, v1, v0}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "4"

    const-string v2, "onCreate"

    const-string v3, "com.miui.home.recents.settings.TaskStackViewLayoutStyleActivity"

    const-string v4, "android.os.Bundle"

    const-string v5, "savedInstanceState"

    const-string v6, ""

    const-string v7, "void"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v0

    const-string v1, "method-execution"

    const/16 v2, 0x18

    invoke-virtual {v8, v1, v0, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleActivity;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method static final synthetic onCreate_aroundBody0(Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleActivity;Landroid/os/Bundle;Lorg/aspectj/lang/JoinPoint;)V
    .locals 1

    .line 24
    :try_start_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 27
    new-instance p1, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;

    invoke-direct {p1}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStylePreferenceFragment;-><init>()V

    const v0, 0x1020002

    .line 28
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
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

    .line 39
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/PreferenceContainerActivity;->setActionBarStyle(Lmiuix/appcompat/app/ActionBar;Z)V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    sget-object v0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleActivity;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 24
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

    new-instance p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleActivity$AjcClosure1;

    invoke-direct {p0, v2}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleActivity$AjcClosure1;-><init>([Ljava/lang/Object;)V

    const p1, 0x11010

    invoke-virtual {p0, p1}, Lorg/aspectj/runtime/internal/AroundClosure;->linkClosureAndJoinPoint(I)Lorg/aspectj/lang/ProceedingJoinPoint;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/miui/home/safemode/SafeModeAspect;->replaceActivityOnCreate(Lorg/aspectj/lang/ProceedingJoinPoint;)Ljava/lang/Object;

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/miui/home/launcher/PreferenceContainerActivity;->onResume()V

    .line 35
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleActivity;->actionBarChanged()V

    return-void
.end method
