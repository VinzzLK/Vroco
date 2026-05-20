.class public Lmiuix/util/HapticFeedbackCompat;
.super Ljava/lang/Object;
.source "HapticFeedbackCompat.java"


# static fields
.field private static mAvailable:Z

.field private static mCanCheckExtHaptic:Z

.field private static mCanStop:Z

.field private static mExtHapticAlways:Z

.field private static mIsSupportExtHapticWithReason:Z

.field private static mIsSupportHapticWithReason:Z

.field private static mPerformExtHapticFeedbackThreeParamsMethodExist:Z

.field private static mPerformExtHapticFeedbackTwoParamsMethodExist:Z

.field private static mPerformHapticFeedbackFourParamsMethod1Exist:Z

.field private static mPerformHapticFeedbackFourParamsMethod2Exist:Z

.field private static final sSingleThread:Ljava/util/concurrent/Executor;


# instance fields
.field private mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;


# direct methods
.method public static synthetic $r8$lambda$3La1Ylagbqk4VA4CDYeY6beyQLQ(Lmiuix/util/HapticFeedbackCompat;I)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/util/HapticFeedbackCompat;->lambda$performExtHapticFeedbackAsync$0(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 12

    .line 55
    const-class v0, Ljava/lang/String;

    const-string v1, "HapticFeedbackCompat"

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    sput-object v2, Lmiuix/util/HapticFeedbackCompat;->sSingleThread:Ljava/util/concurrent/Executor;

    .line 58
    sget v2, Lmiuix/view/PlatformConstants;->VERSION:I

    const-string v3, "performHapticFeedback"

    const-string v4, "performExtHapticFeedback"

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lt v2, v8, :cond_0

    .line 60
    :try_start_0
    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate()Z

    move-result v2

    sput-boolean v2, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    const-string v9, "MIUI Haptic Implementation is not available"

    .line 62
    invoke-static {v1, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    sput-boolean v7, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    .line 66
    :goto_0
    sget-boolean v2, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    if-eqz v2, :cond_0

    .line 68
    :try_start_1
    const-class v2, Lmiui/util/HapticFeedbackUtil;

    new-array v9, v5, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v7

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v8

    aput-object v0, v9, v6

    invoke-virtual {v2, v3, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 69
    sput-boolean v8, Lmiuix/util/HapticFeedbackCompat;->mIsSupportHapticWithReason:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    const-string v9, "Not support haptic with reason"

    .line 71
    invoke-static {v1, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    sput-boolean v7, Lmiuix/util/HapticFeedbackCompat;->mIsSupportHapticWithReason:Z

    .line 75
    :goto_1
    :try_start_2
    const-class v2, Lmiui/util/HapticFeedbackUtil;

    const-string v9, "isSupportExtHapticFeedback"

    new-array v10, v8, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v7

    invoke-virtual {v2, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 76
    sput-boolean v8, Lmiuix/util/HapticFeedbackCompat;->mCanCheckExtHaptic:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    .line 78
    :catchall_2
    sput-boolean v7, Lmiuix/util/HapticFeedbackCompat;->mCanCheckExtHaptic:Z

    .line 82
    :goto_2
    :try_start_3
    const-class v2, Lmiui/util/HapticFeedbackUtil;

    new-array v9, v6, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v7

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v8

    invoke-virtual {v2, v4, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 83
    sput-boolean v8, Lmiuix/util/HapticFeedbackCompat;->mExtHapticAlways:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    .line 85
    :catchall_3
    sput-boolean v7, Lmiuix/util/HapticFeedbackCompat;->mExtHapticAlways:Z

    .line 89
    :goto_3
    :try_start_4
    const-class v2, Lmiui/util/HapticFeedbackUtil;

    const-string v9, "stop"

    new-array v10, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 90
    sput-boolean v8, Lmiuix/util/HapticFeedbackCompat;->mCanStop:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    .line 92
    :catchall_4
    sput-boolean v7, Lmiuix/util/HapticFeedbackCompat;->mCanStop:Z

    .line 96
    :goto_4
    :try_start_5
    const-class v2, Lmiui/util/HapticFeedbackUtil;

    new-array v9, v5, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v7

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v8

    aput-object v0, v9, v6

    invoke-virtual {v2, v4, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 97
    sput-boolean v8, Lmiuix/util/HapticFeedbackCompat;->mIsSupportExtHapticWithReason:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v2

    const-string v9, "Not support ext haptic with reason"

    .line 99
    invoke-static {v1, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    sput-boolean v7, Lmiuix/util/HapticFeedbackCompat;->mIsSupportExtHapticWithReason:Z

    .line 109
    :cond_0
    :goto_5
    sget-wide v1, Lmiuix/view/PlatformConstants;->romHapticVersion:D

    const-wide v9, 0x3ff3333333333333L    # 1.2

    cmpl-double v1, v1, v9

    if-ltz v1, :cond_1

    .line 111
    :try_start_6
    const-class v1, Lmiui/util/HapticFeedbackUtil;

    new-array v2, v6, [Ljava/lang/Class;

    const-class v9, Landroid/os/VibrationAttributes;

    aput-object v9, v2, v7

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v2, v8

    invoke-virtual {v1, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 112
    sput-boolean v8, Lmiuix/util/HapticFeedbackCompat;->mPerformExtHapticFeedbackTwoParamsMethodExist:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 117
    :catch_0
    :try_start_7
    const-class v1, Lmiui/util/HapticFeedbackUtil;

    new-array v2, v5, [Ljava/lang/Class;

    const-class v9, Landroid/os/VibrationAttributes;

    aput-object v9, v2, v7

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v2, v8

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v2, v6

    invoke-virtual {v1, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 118
    sput-boolean v8, Lmiuix/util/HapticFeedbackCompat;->mPerformExtHapticFeedbackThreeParamsMethodExist:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    const/4 v1, 0x4

    .line 123
    :try_start_8
    const-class v2, Lmiui/util/HapticFeedbackUtil;

    new-array v4, v1, [Ljava/lang/Class;

    const-class v9, Landroid/os/VibrationAttributes;

    aput-object v9, v4, v7

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v4, v8

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v4, v6

    aput-object v9, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 124
    sput-boolean v8, Lmiuix/util/HapticFeedbackCompat;->mPerformHapticFeedbackFourParamsMethod1Exist:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 129
    :catch_2
    :try_start_9
    const-class v2, Lmiui/util/HapticFeedbackUtil;

    new-array v1, v1, [Ljava/lang/Class;

    const-class v4, Landroid/os/VibrationAttributes;

    aput-object v4, v1, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v8

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v6

    aput-object v0, v1, v5

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 130
    sput-boolean v8, Lmiuix/util/HapticFeedbackCompat;->mPerformHapticFeedbackFourParamsMethod2Exist:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :catch_3
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 155
    invoke-direct {p0, p1, v0}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    sget v0, Lmiuix/view/PlatformConstants;->VERSION:I

    const-string v1, "HapticFeedbackCompat"

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    const-string p0, "MiuiHapticFeedbackConstants not found or not compatible for LinearVibrator."

    .line 144
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 147
    :cond_0
    sget-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    if-nez v0, :cond_1

    const-string p0, "linear motor is not supported in this platform."

    .line 148
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 151
    :cond_1
    new-instance v0, Lmiui/util/HapticFeedbackUtil;

    invoke-direct {v0, p1, p2}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    return-void
.end method

.method private synthetic lambda$performExtHapticFeedbackAsync$0(I)V
    .locals 0

    .line 195
    invoke-virtual {p0, p1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    return-void
.end method


# virtual methods
.method public isSupportExtHapticFeedback(I)Z
    .locals 2

    .line 360
    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 361
    sget-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mCanCheckExtHaptic:Z

    if-eqz v1, :cond_0

    .line 362
    invoke-virtual {p0, p1}, Lmiui/util/HapticFeedbackUtil;->isSupportExtHapticFeedback(I)Z

    move-result p0

    return p0

    :cond_0
    if-ltz p1, :cond_1

    const/16 p0, 0xa0

    if-gt p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public performExtHapticFeedback(I)Z
    .locals 2

    .line 175
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performExtHapticFeedback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiuix/HapticLog;->printTrace(Ljava/lang/String;)V

    .line 177
    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p0, p1}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public performExtHapticFeedbackAsync(I)V
    .locals 2

    .line 190
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-nez v0, :cond_0

    return-void

    .line 193
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 195
    sget-object v0, Lmiuix/util/HapticFeedbackCompat;->sSingleThread:Ljava/util/concurrent/Executor;

    new-instance v1, Lmiuix/util/HapticFeedbackCompat$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lmiuix/util/HapticFeedbackCompat$$ExternalSyntheticLambda0;-><init>(Lmiuix/util/HapticFeedbackCompat;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 197
    :cond_2
    invoke-virtual {p0, p1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    :goto_1
    return-void
.end method

.method public performHapticFeedback(II)Z
    .locals 1

    const/4 v0, 0x0

    .line 445
    invoke-virtual {p0, v0, p1, p2}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(Landroid/os/VibrationAttributes;II)Z

    move-result p0

    return p0
.end method

.method public performHapticFeedback(Landroid/os/VibrationAttributes;II)Z
    .locals 6

    .line 458
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 459
    invoke-static {p2}, Lmiuix/view/HapticCompat;->obtainFeedBack(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 462
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performHapticFeedback: attributes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", effectId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", effectStrength: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmiuix/HapticLog;->printTrace(Ljava/lang/String;)V

    .line 463
    sget-wide v2, Lmiuix/view/PlatformConstants;->romHapticVersion:D

    const-wide v4, 0x3ff3333333333333L    # 1.2

    cmpl-double p2, v2, v4

    if-ltz p2, :cond_0

    sget-boolean p2, Lmiuix/util/HapticFeedbackCompat;->mPerformHapticFeedbackFourParamsMethod1Exist:Z

    if-eqz p2, :cond_0

    .line 464
    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p0, p1, v0, v1, p3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Landroid/os/VibrationAttributes;IZI)Z

    move-result p0

    return p0

    .line 466
    :cond_0
    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p0, v0, v1, p3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZI)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "HapticFeedbackCompat"

    const-string p2, "Failed to perform haptic!"

    .line 468
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v1
.end method
