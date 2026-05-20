.class public Lcom/miui/home/launcher/KeyguardStateListener;
.super Ljava/lang/Object;
.source "KeyguardStateListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardStateListener"

.field public static volatile mIsKeyguardLocked:Z

.field public static volatile mIsUseKeyguardStateListener:Z

.field public static sInstance:Lcom/miui/home/launcher/KeyguardStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/miui/home/launcher/KeyguardStateListener;

    invoke-direct {v0}, Lcom/miui/home/launcher/KeyguardStateListener;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/KeyguardStateListener;->sInstance:Lcom/miui/home/launcher/KeyguardStateListener;

    const/4 v0, 0x0

    .line 23
    sput-boolean v0, Lcom/miui/home/launcher/KeyguardStateListener;->mIsUseKeyguardStateListener:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 16
    invoke-static {}, Lcom/miui/home/launcher/KeyguardStateListener;->checkSubscribePermission()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/miui/home/launcher/KeyguardStateListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/KeyguardStateListener;)Landroid/app/KeyguardManager;
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/miui/home/launcher/KeyguardStateListener;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object p0

    return-object p0
.end method

.method private static checkSubscribePermission()Z
    .locals 4

    const/4 v0, 0x0

    .line 65
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    const-string v2, "android.permission.SUBSCRIBE_TO_KEYGUARD_LOCKED_STATE"

    invoke-virtual {v1, v2}, Landroid/app/Application;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 67
    sget-object v2, Lcom/miui/home/launcher/KeyguardStateListener;->TAG:Ljava/lang/String;

    const-string v3, "Successfully obtained SUBSCRIBE_TO_KEYGUARD_LOCKED_STATE permission"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v1

    :catch_0
    move-exception v1

    .line 71
    sget-object v2, Lcom/miui/home/launcher/KeyguardStateListener;->TAG:Ljava/lang/String;

    const-string v3, "Failed to check permission"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 1

    .line 30
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    return-object p0
.end method


# virtual methods
.method public isKeyguardLocked()Z
    .locals 1

    .line 77
    sget-boolean v0, Lcom/miui/home/launcher/KeyguardStateListener;->mIsUseKeyguardStateListener:Z

    if-eqz v0, :cond_0

    .line 78
    sget-boolean p0, Lcom/miui/home/launcher/KeyguardStateListener;->mIsKeyguardLocked:Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/KeyguardStateListener;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public registerKeyguardStateListenerIfNeed(Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V
    .locals 1

    .line 34
    new-instance v0, Lcom/miui/home/launcher/KeyguardStateListener$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/KeyguardStateListener$1;-><init>(Lcom/miui/home/launcher/KeyguardStateListener;Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unregisterKeyguardStateListenerIfNeed(Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V
    .locals 1

    .line 51
    new-instance v0, Lcom/miui/home/launcher/KeyguardStateListener$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/KeyguardStateListener$2;-><init>(Lcom/miui/home/launcher/KeyguardStateListener;Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
