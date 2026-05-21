.class public Lmiui/app/MultiWindowCallBackUtils;
.super Ljava/lang/Object;
.source "MultiWindowCallBackUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/MultiWindowCallBackUtils$IsSupportSplitScreenChanged;,
        Lmiui/app/MultiWindowCallBackUtils$IsSupportFreeFormChanged;
    }
.end annotation


# static fields
.field private static mIsRegistered:Z

.field private static mIsSupportFreeFormChangedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/app/MultiWindowCallBackUtils$IsSupportFreeFormChanged;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsSupportMultiWindow:Lmiui/app/IIsSupportMultiWindow;

.field private static mIsSupportSplitScreenChangedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/app/MultiWindowCallBackUtils$IsSupportSplitScreenChanged;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lmiui/app/MultiWindowCallBackUtils;->mIsSupportFreeFormChangedList:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lmiui/app/MultiWindowCallBackUtils;->mIsSupportSplitScreenChangedList:Ljava/util/List;

    const/4 v0, 0x0

    .line 16
    sput-boolean v0, Lmiui/app/MultiWindowCallBackUtils;->mIsRegistered:Z

    .line 17
    new-instance v0, Lmiui/app/MultiWindowCallBackUtils$1;

    invoke-direct {v0}, Lmiui/app/MultiWindowCallBackUtils$1;-><init>()V

    sput-object v0, Lmiui/app/MultiWindowCallBackUtils;->mIsSupportMultiWindow:Lmiui/app/IIsSupportMultiWindow;

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .line 10
    sget-object v0, Lmiui/app/MultiWindowCallBackUtils;->mIsSupportFreeFormChangedList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .line 10
    sget-object v0, Lmiui/app/MultiWindowCallBackUtils;->mIsSupportSplitScreenChangedList:Ljava/util/List;

    return-object v0
.end method

.method public static addIsSupportFreeFormChangedImpl(Lmiui/app/MultiWindowCallBackUtils$IsSupportFreeFormChanged;)V
    .locals 1

    .line 59
    sget-object v0, Lmiui/app/MultiWindowCallBackUtils;->mIsSupportFreeFormChangedList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-static {}, Lmiui/app/MultiWindowCallBackUtils;->registerCallBackIfNeed()V

    return-void
.end method

.method public static addIsSupportSplitScreenChangedImpl(Lmiui/app/MultiWindowCallBackUtils$IsSupportSplitScreenChanged;)V
    .locals 1

    .line 64
    sget-object v0, Lmiui/app/MultiWindowCallBackUtils;->mIsSupportSplitScreenChangedList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {}, Lmiui/app/MultiWindowCallBackUtils;->registerCallBackIfNeed()V

    return-void
.end method

.method private static registerCallBackIfNeed()V
    .locals 1

    .line 69
    sget-boolean v0, Lmiui/app/MultiWindowCallBackUtils;->mIsRegistered:Z

    if-eqz v0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-static {}, Lmiui/app/MultiWindowCallBackUtils;->registerIsSupportMultiWindowCallback()V

    return-void
.end method

.method public static registerIsSupportMultiWindowCallback()V
    .locals 8

    const-string v0, "MultiWindowCallBackUtils"

    const-string v1, "registerIsSupportMultiWindowCallback: "

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "miui.app.MiuiFreeFormManager"

    .line 36
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "registerIsSupportMultiWindowCallback"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lmiui/app/IIsSupportMultiWindow;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v5, v3, [Ljava/lang/Object;

    sget-object v7, Lmiui/app/MultiWindowCallBackUtils;->mIsSupportMultiWindow:Lmiui/app/IIsSupportMultiWindow;

    aput-object v7, v5, v6

    invoke-static {v0, v1, v2, v4, v5}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sput-boolean v3, Lmiui/app/MultiWindowCallBackUtils;->mIsRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
