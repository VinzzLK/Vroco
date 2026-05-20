.class public final Lcom/miui/home/safemode/SafeModeManager;
.super Ljava/lang/Object;
.source "SafeModeManager.kt"

# interfaces
.implements Lcom/miui/home/safemode/ICrashHandler;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeModeManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeModeManager.kt\ncom/miui/home/safemode/SafeModeManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,305:1\n764#2:306\n855#2,2:307\n764#2:309\n855#2,2:310\n1#3:312\n*S KotlinDebug\n*F\n+ 1 SafeModeManager.kt\ncom/miui/home/safemode/SafeModeManager\n*L\n70#1:306\n70#1:307,2\n79#1:309\n79#1:310,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/home/safemode/SafeModeManager;

.field private static final mCheckUpdateTask:Lcom/miui/home/safemode/SafeModeManager$mCheckUpdateTask$1;

.field private static mContext:Landroid/content/Context;

.field private static final mExitInfoList$delegate:Lkotlin/Lazy;

.field private static mHandler:Landroid/os/Handler;

.field private static volatile mIsInFoldLargeScreenMode:Z

.field private static mIsSafeMode:Z

.field private static mIsSafeProcess:Z

.field private static mNeedTrackEvent:Z

.field private static mPendingUpdateResult:Lcom/miui/home/safemode/UpdateResult;

.field private static mRescuePartyLevel:I

.field private static final mSafeExitInfoList$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$1rZC3Hji_dSyp4bbiRRMhGtjMho(IZ)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/safemode/SafeModeManager;->firstInitInFoldDevice$lambda-15(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$21M2ksTRzhfar4MQgGwlyg8QLco(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/safemode/SafeModeManager;->onApplicationCreate$lambda-9$lambda-8(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XI6EdW5vk5kXfrPsSY4cUb8FBqc(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/safemode/SafeModeManager;->enterSafeMode$lambda-11$lambda-10(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_A52dIgkQpANw5lyf0RaElwIL8M(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/safemode/SafeModeManager;->onAttachProcess$lambda-4(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ccfe_Qv3q94DQdDamtSdqFElNj4()Z
    .locals 1

    invoke-static {}, Lcom/miui/home/safemode/SafeModeManager;->clearSafeModeState$lambda-13()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$t884YamYbDVyMJyc-vI63pINKzY(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/safemode/SafeModeManager;->onAttachProcess$lambda-2(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/safemode/SafeModeManager;

    invoke-direct {v0}, Lcom/miui/home/safemode/SafeModeManager;-><init>()V

    sput-object v0, Lcom/miui/home/safemode/SafeModeManager;->INSTANCE:Lcom/miui/home/safemode/SafeModeManager;

    .line 30
    sget-object v0, Lcom/miui/home/safemode/SafeModeManager$mExitInfoList$2;->INSTANCE:Lcom/miui/home/safemode/SafeModeManager$mExitInfoList$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miui/home/safemode/SafeModeManager;->mExitInfoList$delegate:Lkotlin/Lazy;

    .line 33
    sget-object v0, Lcom/miui/home/safemode/SafeModeManager$mSafeExitInfoList$2;->INSTANCE:Lcom/miui/home/safemode/SafeModeManager$mSafeExitInfoList$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miui/home/safemode/SafeModeManager;->mSafeExitInfoList$delegate:Lkotlin/Lazy;

    .line 258
    new-instance v0, Lcom/miui/home/safemode/SafeModeManager$mCheckUpdateTask$1;

    invoke-direct {v0}, Lcom/miui/home/safemode/SafeModeManager$mCheckUpdateTask$1;-><init>()V

    sput-object v0, Lcom/miui/home/safemode/SafeModeManager;->mCheckUpdateTask:Lcom/miui/home/safemode/SafeModeManager$mCheckUpdateTask$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCheckInterval(Lcom/miui/home/safemode/SafeModeManager;)J
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/miui/home/safemode/SafeModeManager;->getCheckInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getMContext$p()Landroid/content/Context;
    .locals 1

    .line 16
    sget-object v0, Lcom/miui/home/safemode/SafeModeManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static final synthetic access$getMHandler$p()Landroid/os/Handler;
    .locals 1

    .line 16
    sget-object v0, Lcom/miui/home/safemode/SafeModeManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private final clearGlobalSettings()V
    .locals 3

    .line 245
    :try_start_0
    sget-object p0, Lcom/miui/home/safemode/SafeModeManager;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 246
    sget-object v0, Lcom/miui/home/safemode/SafeModeUtil;->INSTANCE:Lcom/miui/home/safemode/SafeModeUtil;

    const-string v1, "is_safe_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/miui/home/safemode/SafeModeUtil;->putGlobalSettingsString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "has_safe_mode_dialog_dismissed"

    .line 247
    invoke-virtual {v0, p0, v1, v2}, Lcom/miui/home/safemode/SafeModeUtil;->putGlobalSettingsString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "SafeModeManager"

    const-string v1, "clearSafeModeState: "

    .line 250
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private final clearSafeModeState()V
    .locals 3

    const-string v0, "SafeModeManager"

    const-string v1, "clearSafeModeState: clearSafeModeState"

    .line 224
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :try_start_0
    invoke-direct {p0}, Lcom/miui/home/safemode/SafeModeManager;->clearGlobalSettings()V

    .line 227
    sget-object p0, Lcom/miui/home/safemode/SafeModeManager;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.home.safemode.exit_safeMode"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v1, "clearSafeModeState: "

    .line 229
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p0

    sget-object v0, Lcom/miui/home/safemode/SafeModeManager$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/safemode/SafeModeManager$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method private static final clearSafeModeState$lambda-13()Z
    .locals 3

    .line 233
    :try_start_0
    sget-object v0, Lcom/miui/home/safemode/SafeModeManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 234
    sget-object v1, Lcom/miui/home/safemode/SafeModeStateCallback;->INSTANCE:Lcom/miui/home/safemode/SafeModeStateCallback;

    invoke-virtual {v1, v0}, Lcom/miui/home/safemode/SafeModeStateCallback;->onClearSafeMode(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SafeModeManager"

    const-string v2, "clearSafeModeState: "

    .line 237
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private final enterSafeMode()V
    .locals 4

    const-string p0, "is_safe_mode"

    const-string v0, "SafeModeManager"

    const-string v1, "enterSafeMode"

    .line 194
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :try_start_0
    sget-object v1, Lcom/miui/home/safemode/SafeModeManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 198
    sget-object v2, Lcom/miui/home/safemode/SafeModeUtil;->INSTANCE:Lcom/miui/home/safemode/SafeModeUtil;

    invoke-virtual {v2, v1, p0}, Lcom/miui/home/safemode/SafeModeUtil;->getGlobalSettingsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 201
    invoke-virtual {v2, v1, p0, p0}, Lcom/miui/home/safemode/SafeModeUtil;->putGlobalSettingsString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 203
    :try_start_1
    sget-object p0, Lcom/miui/home/safemode/SafeModeStateCallback;->INSTANCE:Lcom/miui/home/safemode/SafeModeStateCallback;

    invoke-virtual {p0, v1}, Lcom/miui/home/safemode/SafeModeStateCallback;->onEnterSafeMode(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string v2, "onEnterSafeMode: failed"

    .line 205
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    :goto_0
    sget-object p0, Lcom/miui/home/safemode/SafeModeManager;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    new-instance v2, Lcom/miui/home/safemode/SafeModeManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/miui/home/safemode/SafeModeManager$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 212
    :cond_0
    sget-object p0, Lcom/miui/home/safemode/SafeModeStateCallback;->INSTANCE:Lcom/miui/home/safemode/SafeModeStateCallback;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/safemode/SafeModeStateCallback;->putForceFSGNavBar(Landroid/content/Context;Z)V

    .line 213
    invoke-static {v1}, Lcom/miui/home/safemode/SafeModeUtil;->launchSafeLauncher(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string v1, "enterSafeMode: failed"

    .line 216
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private static final enterSafeMode$lambda-11$lambda-10(Landroid/content/Context;)V
    .locals 1

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/miui/home/safemode/SafeModeUtil;->INSTANCE:Lcom/miui/home/safemode/SafeModeUtil;

    invoke-virtual {v0, p0}, Lcom/miui/home/safemode/SafeModeUtil;->clearTask(Landroid/content/Context;)V

    return-void
.end method

.method private final fetchRescuePartyLevel()I
    .locals 2

    .line 38
    sget-object p0, Lcom/miui/home/safemode/SafeModeManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 39
    sget-object v1, Lcom/miui/home/safemode/SafeModeUtil;->INSTANCE:Lcom/miui/home/safemode/SafeModeUtil;

    invoke-virtual {v1, p0, v0}, Lcom/miui/home/safemode/SafeModeUtil;->getRescueParty(Landroid/content/Context;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method private final firstInitInFoldDevice(Landroid/content/Context;)V
    .locals 1

    const-string p0, "SafeModeManager"

    .line 288
    invoke-static {}, Lcom/miui/home/safemode/SafeModeUtil;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 292
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const-string v0, "context.resources.configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miui/home/safemode/SafeModeUtil;->initCurrentScreenMode(Landroid/content/res/Configuration;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "initCurrentScreenMode: "

    .line 294
    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 291
    :goto_0
    sput-boolean p1, Lcom/miui/home/safemode/SafeModeManager;->mIsInFoldLargeScreenMode:Z

    .line 297
    :try_start_1
    sget-object p1, Lcom/miui/home/safemode/SafeModeManager$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/safemode/SafeModeManager$$ExternalSyntheticLambda1;

    .line 298
    invoke-static {p1}, Lcom/miui/home/safemode/FoldDisplayUtil;->registerFoldDisplayChange(Lcom/miui/home/safemode/FoldDisplayUtil$FoldDisplayChangeListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "firstInitInFoldDevice: "

    .line 302
    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private static final firstInitInFoldDevice$lambda-15(IZ)V
    .locals 0

    xor-int/lit8 p0, p1, 0x1

    .line 299
    sput-boolean p0, Lcom/miui/home/safemode/SafeModeManager;->mIsInFoldLargeScreenMode:Z

    return-void
.end method

.method private final getCheckInterval()J
    .locals 2

    const-wide/32 v0, 0x6ddd00

    return-wide v0
.end method

.method private final getMExitInfoList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation

    .line 30
    sget-object p0, Lcom/miui/home/safemode/SafeModeManager;->mExitInfoList$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method private final getMSafeExitInfoList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation

    .line 33
    sget-object p0, Lcom/miui/home/safemode/SafeModeManager;->mSafeExitInfoList$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final isLargeScreen()Z
    .locals 1

    .line 284
    sget-boolean v0, Lcom/miui/home/safemode/Build;->IS_TABLET:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/miui/home/safemode/SafeModeManager;->mIsInFoldLargeScreenMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final lastExitForRescueSelf()Z
    .locals 7

    .line 142
    invoke-direct {p0}, Lcom/miui/home/safemode/SafeModeManager;->getMExitInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/miui/home/safemode/SafeModeUtil;->INSTANCE:Lcom/miui/home/safemode/SafeModeUtil;

    invoke-direct {p0}, Lcom/miui/home/safemode/SafeModeManager;->getMExitInfoList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0, v3}, Lcom/miui/home/safemode/SafeModeUtil;->exitForRescueSelf(Landroid/app/ApplicationExitInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 144
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastExitForRescueSelf: mainProcessExitForRescueSelf "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SafeModeManager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    return v1

    .line 155
    :cond_1
    sget-object v0, Lcom/miui/home/safemode/SafeModeManager;->mContext:Landroid/content/Context;

    const-string v3, "is_safe_mode"

    if-eqz v0, :cond_2

    .line 156
    sget-object v4, Lcom/miui/home/safemode/SafeModeUtil;->INSTANCE:Lcom/miui/home/safemode/SafeModeUtil;

    invoke-virtual {v4, v0, v3}, Lcom/miui/home/safemode/SafeModeUtil;->getGlobalSettingsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 158
    :goto_1
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/miui/home/safemode/SafeModeManager;->getMSafeExitInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 159
    invoke-direct {p0}, Lcom/miui/home/safemode/SafeModeManager;->getMSafeExitInfoList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ApplicationExitInfo;

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1

    cmp-long v0, v5, v3

    if-gtz v0, :cond_3

    const-wide/16 v5, 0x1388

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    if-eqz v0, :cond_4

    .line 163
    sget-object v0, Lcom/miui/home/safemode/SafeModeUtil;->INSTANCE:Lcom/miui/home/safemode/SafeModeUtil;

    invoke-virtual {v0, p0}, Lcom/miui/home/safemode/SafeModeUtil;->exitForRescueSelf(Landroid/app/ApplicationExitInfo;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    return v1
.end method

.method private final needEnterSafeMode(ZZ)Z
    .locals 0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final onApplicationCreate$lambda-9$lambda-8(Landroid/content/Context;)V
    .locals 1

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-static {p0}, Lcom/miui/home/safemode/SafeModeOneTrack;->getInstance(Landroid/content/Context;)Lcom/miui/home/safemode/SafeModeOneTrack;

    move-result-object p0

    sget v0, Lcom/miui/home/safemode/SafeModeManager;->mRescuePartyLevel:I

    invoke-virtual {p0, v0}, Lcom/miui/home/safemode/SafeModeOneTrack;->trackSuccess(I)V

    return-void
.end method

.method private static final onAttachProcess$lambda-2(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I
    .locals 2

    .line 74
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private static final onAttachProcess$lambda-4(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I
    .locals 2

    .line 83
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private final startCheckLevelLoop()V
    .locals 1

    .line 272
    sget-object p0, Lcom/miui/home/safemode/SafeModeManager;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/miui/home/safemode/SafeModeManager;->mCheckUpdateTask:Lcom/miui/home/safemode/SafeModeManager$mCheckUpdateTask$1;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 28
    sget-object p0, Lcom/miui/home/safemode/SafeModeManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getPendingUpdateResult()Lcom/miui/home/safemode/UpdateResult;
    .locals 0

    .line 267
    sget-object p0, Lcom/miui/home/safemode/SafeModeManager;->mPendingUpdateResult:Lcom/miui/home/safemode/UpdateResult;

    return-object p0
.end method

.method public final isSafeMode()Z
    .locals 0

    .line 254
    sget-boolean p0, Lcom/miui/home/safemode/SafeModeManager;->mIsSafeMode:Z

    return p0
.end method

.method public final isSafeProcess()Z
    .locals 0

    .line 256
    sget-boolean p0, Lcom/miui/home/safemode/SafeModeManager;->mIsSafeProcess:Z

    return p0
.end method

.method public final onApplicationCreate()V
    .locals 4

    .line 172
    sget-boolean p0, Lcom/miui/home/safemode/SafeModeManager;->mNeedTrackEvent:Z

    if-eqz p0, :cond_0

    .line 174
    :try_start_0
    sget-object p0, Lcom/miui/home/safemode/SafeModeManager;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 176
    invoke-static {p0}, Lcom/miui/home/safemode/SafeModeOneTrack;->getInstance(Landroid/content/Context;)Lcom/miui/home/safemode/SafeModeOneTrack;

    move-result-object v0

    sget v1, Lcom/miui/home/safemode/SafeModeManager;->mRescuePartyLevel:I

    invoke-virtual {v0, v1}, Lcom/miui/home/safemode/SafeModeOneTrack;->trackTrigger(I)V

    .line 177
    sget-object v0, Lcom/miui/home/safemode/SafeModeManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/miui/home/safemode/SafeModeManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/miui/home/safemode/SafeModeManager$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SafeModeManager"

    const-string v1, "onApplicationCreate: "

    .line 185
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final onAttachProcess(Landroid/content/Context;)V
    .locals 12

    const-string v0, "is_safe_mode"

    const-string v1, "SafeModeManager"

    const-string v2, "context"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v2, Lcom/miui/home/safemode/SafeModeManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    return-void

    .line 47
    :cond_0
    sput-object p1, Lcom/miui/home/safemode/SafeModeManager;->mContext:Landroid/content/Context;

    .line 49
    :try_start_0
    sget-object v2, Lcom/miui/home/safemode/JavaCrashHandler;->INSTANCE:Lcom/miui/home/safemode/JavaCrashHandler;

    invoke-virtual {v2, p0}, Lcom/miui/home/safemode/JavaCrashHandler;->init(Lcom/miui/home/safemode/ICrashHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "onAttachProcess: JavaCrashHandler init failed"

    .line 51
    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v2, 0x0

    .line 54
    :try_start_1
    invoke-static {p1}, Lcom/miui/home/safemode/SafeModeUtil;->isSafeProcess(Landroid/content/Context;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move v3, v2

    .line 53
    :goto_1
    sput-boolean v3, Lcom/miui/home/safemode/SafeModeManager;->mIsSafeProcess:Z

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAttachProcess: mIsSafeProcess "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/miui/home/safemode/SafeModeManager;->mIsSafeProcess:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v3, Lcom/miui/home/safemode/SafeModeManager;->mHandler:Landroid/os/Handler;

    .line 60
    invoke-direct {p0}, Lcom/miui/home/safemode/SafeModeManager;->fetchRescuePartyLevel()I

    move-result v3

    sput v3, Lcom/miui/home/safemode/SafeModeManager;->mRescuePartyLevel:I

    .line 61
    sget-boolean v3, Lcom/miui/home/safemode/SafeModeManager;->mIsSafeProcess:Z

    const/4 v4, 0x1

    if-nez v3, :cond_b

    .line 63
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAttachProcess: mRescuePartyLevel "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/miui/home/safemode/SafeModeManager;->mRescuePartyLevel:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-direct {p0}, Lcom/miui/home/safemode/SafeModeManager;->getMExitInfoList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 65
    invoke-direct {p0}, Lcom/miui/home/safemode/SafeModeManager;->getMSafeExitInfoList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 66
    sget v3, Lcom/miui/home/safemode/SafeModeManager;->mRescuePartyLevel:I

    const/4 v5, 0x3

    if-lt v3, v5, :cond_1

    move v2, v4

    :cond_1
    if-eqz v2, :cond_7

    .line 68
    invoke-static {p1}, Lcom/miui/home/safemode/SafeModeUtil;->fetchAppExitInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 70
    invoke-direct {p0}, Lcom/miui/home/safemode/SafeModeManager;->getMExitInfoList()Ljava/util/ArrayList;

    move-result-object v6

    .line 306
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 307
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Landroid/app/ApplicationExitInfo;

    .line 71
    invoke-virtual {v10}, Landroid/app/ApplicationExitInfo;->getProcessName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 70
    :cond_3
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 73
    invoke-direct {p0}, Lcom/miui/home/safemode/SafeModeManager;->getMExitInfoList()Ljava/util/ArrayList;

    move-result-object v6

    sget-object v7, Lcom/miui/home/safemode/SafeModeManager$$ExternalSyntheticLambda5;->INSTANCE:Lcom/miui/home/safemode/SafeModeManager$$ExternalSyntheticLambda5;

    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 76
    invoke-direct {p0}, Lcom/miui/home/safemode/SafeModeManager;->getMExitInfoList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v4

    if-eqz v6, :cond_4

    .line 77
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lastExitReason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/home/safemode/SafeModeManager;->getMExitInfoList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/safemode/SafeModeManager;->getMSafeExitInfoList()Ljava/util/ArrayList;

    move-result-object v6

    .line 309
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 310
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Landroid/app/ApplicationExitInfo;

    .line 80
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":safe_mode"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Landroid/app/ApplicationExitInfo;->getProcessName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 79
    :cond_6
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 82
    invoke-direct {p0}, Lcom/miui/home/safemode/SafeModeManager;->getMSafeExitInfoList()Ljava/util/ArrayList;

    move-result-object v3

    sget-object v5, Lcom/miui/home/safemode/SafeModeManager$$ExternalSyntheticLambda4;->INSTANCE:Lcom/miui/home/safemode/SafeModeManager$$ExternalSyntheticLambda4;

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 85
    invoke-direct {p0}, Lcom/miui/home/safemode/SafeModeManager;->getMSafeExitInfoList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v4

    if-eqz v3, :cond_7

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lastSafeExitReason: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/home/safemode/SafeModeManager;->getMSafeExitInfoList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_7
    invoke-direct {p0}, Lcom/miui/home/safemode/SafeModeManager;->lastExitForRescueSelf()Z

    move-result v3

    .line 90
    invoke-direct {p0, v2, v3}, Lcom/miui/home/safemode/SafeModeManager;->needEnterSafeMode(ZZ)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "needEnterSafeMode: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sput-boolean v4, Lcom/miui/home/safemode/SafeModeManager;->mIsSafeMode:Z

    .line 93
    invoke-direct {p0}, Lcom/miui/home/safemode/SafeModeManager;->enterSafeMode()V

    goto :goto_4

    :cond_8
    if-eqz v3, :cond_9

    .line 96
    sget-object v2, Lcom/miui/home/safemode/SafeModeManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_9

    invoke-static {v2}, Lcom/miui/home/safemode/SafeModeUtil;->resetRescuePartyLevel(Landroid/content/Context;)V

    .line 99
    :cond_9
    sget-object v2, Lcom/miui/home/safemode/SafeModeUtil;->INSTANCE:Lcom/miui/home/safemode/SafeModeUtil;

    invoke-virtual {v2, p1, v0}, Lcom/miui/home/safemode/SafeModeUtil;->getGlobalSettingsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 101
    invoke-direct {p0}, Lcom/miui/home/safemode/SafeModeManager;->clearSafeModeState()V

    .line 103
    :cond_a
    invoke-direct {p0}, Lcom/miui/home/safemode/SafeModeManager;->clearGlobalSettings()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p0

    const-string p1, "onAttachProcess: failed"

    .line 106
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 109
    :cond_b
    sput-boolean v4, Lcom/miui/home/safemode/SafeModeManager;->mNeedTrackEvent:Z

    .line 110
    invoke-static {p1}, Lcom/miui/home/safemode/SafeModeUtil;->registerShutdownBroadcast(Landroid/content/Context;)V

    .line 111
    sget-object p1, Lcom/miui/home/safemode/SafeModeManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_c

    .line 112
    sget-object v0, Lcom/miui/home/safemode/SafeModeManager;->INSTANCE:Lcom/miui/home/safemode/SafeModeManager;

    invoke-direct {v0, p1}, Lcom/miui/home/safemode/SafeModeManager;->firstInitInFoldDevice(Landroid/content/Context;)V

    .line 114
    :cond_c
    invoke-direct {p0}, Lcom/miui/home/safemode/SafeModeManager;->startCheckLevelLoop()V

    :goto_4
    return-void
.end method

.method public onUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)Z
    .locals 1

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onUncaughtException: mIsSafeMode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/miui/home/safemode/SafeModeManager;->mIsSafeMode:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "  isSafeMode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/safemode/SafeModeManager;->isSafeMode()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SafeModeManager"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    invoke-virtual {p0}, Lcom/miui/home/safemode/SafeModeManager;->isSafeMode()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/safemode/SafeModeManager;->isSafeProcess()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "onUncaughtException: exit process"

    .line 125
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    .line 127
    invoke-static {p2}, Ljava/lang/System;->exit(I)V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "System.exit returned normally, while it was supposed to halt JVM."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return p2
.end method

.method public final setPendingUpdateResult(Lcom/miui/home/safemode/UpdateResult;)V
    .locals 0

    .line 269
    sput-object p1, Lcom/miui/home/safemode/SafeModeManager;->mPendingUpdateResult:Lcom/miui/home/safemode/UpdateResult;

    return-void
.end method
