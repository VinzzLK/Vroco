.class public Lcom/miui/home/launcher/KeyguardOccludedChangedListener;
.super Ljava/lang/Object;
.source "KeyguardOccludedChangedListener.java"


# static fields
.field public static sInstance:Lcom/miui/home/launcher/KeyguardOccludedChangedListener;


# instance fields
.field private volatile mIsKeyguardOccluded:Z

.field private final mOccludedChangedListener:Landroid/app/IOccludedChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/miui/home/launcher/KeyguardOccludedChangedListener;

    invoke-direct {v0}, Lcom/miui/home/launcher/KeyguardOccludedChangedListener;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/KeyguardOccludedChangedListener;->sInstance:Lcom/miui/home/launcher/KeyguardOccludedChangedListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/miui/home/launcher/KeyguardOccludedChangedListener;->mIsKeyguardOccluded:Z

    .line 40
    new-instance v0, Lcom/miui/home/launcher/KeyguardOccludedChangedListener$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/KeyguardOccludedChangedListener$2;-><init>(Lcom/miui/home/launcher/KeyguardOccludedChangedListener;)V

    iput-object v0, p0, Lcom/miui/home/launcher/KeyguardOccludedChangedListener;->mOccludedChangedListener:Landroid/app/IOccludedChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/KeyguardOccludedChangedListener;)Landroid/app/IOccludedChangedListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/miui/home/launcher/KeyguardOccludedChangedListener;->mOccludedChangedListener:Landroid/app/IOccludedChangedListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/KeyguardOccludedChangedListener;Landroid/app/IOccludedChangedListener;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/KeyguardOccludedChangedListener;->registerOccludedChangedListener(Landroid/app/IOccludedChangedListener;)V

    return-void
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/KeyguardOccludedChangedListener;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/miui/home/launcher/KeyguardOccludedChangedListener;->mIsKeyguardOccluded:Z

    return p1
.end method

.method private getActivityTaskManager()Ljava/lang/Class;
    .locals 0

    :try_start_0
    const-string p0, "android.app.IActivityTaskManager"

    .line 50
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private registerOccludedChangedListener(Landroid/app/IOccludedChangedListener;)V
    .locals 6

    .line 58
    invoke-direct {p0}, Lcom/miui/home/launcher/KeyguardOccludedChangedListener;->getActivityTaskManager()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-static {}, Lmiui/app/ActivityTaskManagerExpose;->getService()Lmiui/app/IActivityTaskManagerExpose;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/app/IActivityTaskManagerExpose;->unbox()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/Class;

    const-class v2, Landroid/app/IOccludedChangedListener;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p1, p0, v5

    const-string v2, "registerOccludedChangedListener"

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "KeyguardOccludedChangedListener"

    const-string p1, "registerOccludedChangedListener success"

    .line 64
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public initAndRegisterInBackground()V
    .locals 1

    .line 32
    new-instance v0, Lcom/miui/home/launcher/KeyguardOccludedChangedListener$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/KeyguardOccludedChangedListener$1;-><init>(Lcom/miui/home/launcher/KeyguardOccludedChangedListener;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isKeyguardOccluded()Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/miui/home/launcher/KeyguardOccludedChangedListener;->mIsKeyguardOccluded:Z

    return p0
.end method
