.class public Lcom/miui/home/launcher/ApplicationsMessage;
.super Ljava/lang/Object;
.source "ApplicationsMessage.java"

# interfaces
.implements Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;,
        Lcom/miui/home/launcher/ApplicationsMessage$ScriptCountObserver;
    }
.end annotation


# static fields
.field private static final TYPE_ALL:[Ljava/lang/Integer;

.field private static final TYPE_APP:[Ljava/lang/Integer;


# instance fields
.field private final mAcceptedSenders:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLastLaunchShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLoadingFinishMessageHandler:Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;

.field private mMessageReceiver:Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;

.field private mObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/ApplicationsMessage$ScriptCountObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelfUpdateItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$AI30JdctILTykIfsPzqru7RCk6A(Lcom/miui/home/launcher/ApplicationsMessage;Landroid/content/ComponentName;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ApplicationsMessage;->lambda$sendClearAppMessage$1(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$eQ0jcRNkruWfcXcdacDXSkePJ6Q(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/ApplicationsMessage;->lambda$onHighTextContrastChanged$2(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pzkvZ4eEgZlrX_hKi-BxomaLceg(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/miui/home/launcher/ApplicationsMessage$ScriptCountObserver;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/ApplicationsMessage;->lambda$initSuperscriptCountObserver$0(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/miui/home/launcher/ApplicationsMessage$ScriptCountObserver;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0xe

    .line 334
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    .line 336
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 335
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v4, 0x2

    aput-object v3, v0, v4

    .line 336
    sput-object v0, Lcom/miui/home/launcher/ApplicationsMessage;->TYPE_ALL:[Ljava/lang/Integer;

    new-array v0, v1, [Ljava/lang/Integer;

    aput-object v3, v0, v2

    .line 338
    sput-object v0, Lcom/miui/home/launcher/ApplicationsMessage;->TYPE_APP:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mAcceptedSenders:Ljava/util/HashSet;

    .line 50
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mSelfUpdateItems:Ljava/util/HashSet;

    .line 64
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mObservers:Ljava/util/HashMap;

    .line 419
    new-instance v2, Lcom/miui/home/launcher/ApplicationsMessage$3;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/ApplicationsMessage$3;-><init>(Lcom/miui/home/launcher/ApplicationsMessage;)V

    iput-object v2, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLoadingFinishMessageHandler:Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;

    .line 187
    iput-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-string v2, "com.android.systemui"

    .line 188
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "com.miui.backup"

    .line 189
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFlip()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.miui.fliphome"

    .line 191
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "com.android.settings"

    .line 193
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 194
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    const-string v0, "com.xiaomi.mipicks"

    .line 195
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f05001e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "com.xiaomi.market"

    .line 198
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/miui/home/launcher/util/UiThreadHelper;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mWorkHandler:Landroid/os/Handler;

    .line 201
    iget-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/ApplicationsMessage;Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p6}, Lcom/miui/home/launcher/ApplicationsMessage;->updateMessage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/ApplicationsMessage;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/ApplicationsMessage;)Ljava/util/HashSet;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mSelfUpdateItems:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/ApplicationsMessage;)Ljava/util/HashSet;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mAcceptedSenders:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/ApplicationsMessage;Ljava/util/function/Predicate;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ApplicationsMessage;->clearAllMessage(Ljava/util/function/Predicate;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/ApplicationsMessage;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/ApplicationsMessage;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/miui/home/launcher/ApplicationsMessage;->initSuperscriptCountObserver()V

    return-void
.end method

.method private clearAllMessage(Ljava/util/function/Predicate;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    return-void

    .line 290
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAllLoadedShortcut()Ljava/util/ArrayList;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 292
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 293
    invoke-virtual {v1, v2, v2, v2}, Lcom/miui/home/launcher/ShortcutInfo;->setMessage(Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_0

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAllFolders()Ljava/util/ArrayList;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderInfo;

    .line 298
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ApplicationsMessage;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    goto :goto_1

    .line 300
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getApps()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 301
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AppInfo;

    .line 302
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 303
    invoke-direct {p0, v1, v2, v2, v2}, Lcom/miui/home/launcher/ApplicationsMessage;->updateAppsViewMessage(Lcom/miui/home/launcher/AppInfo;Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method private getWorkspaceShortcutInfo(Landroid/content/ComponentName;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 341
    iget-object p0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/ApplicationsMessage;->TYPE_APP:[Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/home/launcher/ApplicationsMessage;->TYPE_ALL:[Ljava/lang/Integer;

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/Launcher;->getShortcutInfo(Landroid/content/ComponentName;I[Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private initSuperscriptCountObserver()V
    .locals 5

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mSelfUpdateItems:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 86
    iget-object v3, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mObservers:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ApplicationsMessage$ScriptCountObserver;

    if-nez v3, :cond_1

    .line 88
    new-instance v3, Lcom/miui/home/launcher/ApplicationsMessage$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v2, v4}, Lcom/miui/home/launcher/ApplicationsMessage$1;-><init>(Lcom/miui/home/launcher/ApplicationsMessage;Ljava/lang/String;Landroid/os/Handler;)V

    .line 122
    new-instance v4, Lcom/miui/home/launcher/ApplicationsMessage$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v2, v3}, Lcom/miui/home/launcher/ApplicationsMessage$$ExternalSyntheticLambda0;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/miui/home/launcher/ApplicationsMessage$ScriptCountObserver;)V

    invoke-static {v4}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/lang/Runnable;)V

    .line 125
    iget-object v4, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mObservers:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v2, 0x1

    .line 127
    invoke-virtual {v3, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private initialize()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    .line 209
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "action_home_clear_application_message"

    .line 210
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    new-instance v1, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;-><init>(Lcom/miui/home/launcher/ApplicationsMessage;)V

    iput-object v1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mMessageReceiver:Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;

    .line 212
    iget-object p0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private static synthetic lambda$initSuperscriptCountObserver$0(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/miui/home/launcher/ApplicationsMessage$ScriptCountObserver;)V
    .locals 1

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".superscript_count"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private static synthetic lambda$onHighTextContrastChanged$2(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$sendClearAppMessage$1(Landroid/content/ComponentName;I)V
    .locals 2

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send home clear app message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.ApplicationsMessage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action_home_clear_application_message"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "appComponentName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "userId"

    .line 252
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    iget-object p0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendClearAppMessage()V
    .locals 4

    .line 242
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFlip()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLastLaunchShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 246
    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getCurrentUserId()I

    move-result v1

    if-eqz v0, :cond_1

    .line 248
    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/miui/home/launcher/ApplicationsMessage$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, v1}, Lcom/miui/home/launcher/ApplicationsMessage$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/ApplicationsMessage;Landroid/content/ComponentName;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private updateAppsViewMessage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[BLandroid/os/UserHandle;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 386
    iget-object p0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/allapps/AllAppsStore;->updateMessage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[BLandroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method private updateAppsViewMessage(Lcom/miui/home/launcher/AppInfo;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    if-eqz p1, :cond_0

    .line 392
    iget-object p0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p0, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/allapps/AllAppsStore;->updateMessage(Lcom/miui/home/launcher/AppInfo;Ljava/lang/String;Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method private updateMessage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 8

    .line 309
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_4

    const-string v0, ""

    .line 312
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p2, p3}, Lcom/miui/home/launcher/Launcher;->getShortcutInfoWithIntent(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 316
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 317
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 318
    invoke-direct {p0, v0, p4, p5, p6}, Lcom/miui/home/launcher/ApplicationsMessage;->updateWorkspaceMessage(Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_0

    :cond_2
    const-string v0, "."

    .line 322
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 323
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 325
    :cond_3
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v3, v0

    move-object v2, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p3

    .line 327
    invoke-direct/range {v2 .. v7}, Lcom/miui/home/launcher/ApplicationsMessage;->updateWorkspaceMessage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[BI)V

    goto :goto_3

    :cond_4
    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move v5, p3

    .line 313
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/ApplicationsMessage;->updateWorkspaceMessage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[BI)V

    .line 330
    :cond_5
    :goto_3
    iget-object p2, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p2, p3}, Lcom/miui/home/launcher/common/Utilities;->getUserForUserId(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/ApplicationsMessage;->updateAppsViewMessage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[BLandroid/os/UserHandle;)V

    return-void
.end method

.method private updateWorkspaceMessage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 359
    invoke-direct {p0, p1, p5}, Lcom/miui/home/launcher/ApplicationsMessage;->getWorkspaceShortcutInfo(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 360
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_0

    .line 361
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/miui/home/launcher/ShortcutInfo;

    .line 362
    invoke-direct {p0, p5, p2, p3, p4}, Lcom/miui/home/launcher/ApplicationsMessage;->updateWorkspaceMessage(Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateWorkspaceMessage(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 8

    .line 345
    iget-object v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 346
    iget-object v1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getUserId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/miui/home/launcher/Launcher;->getShortcutInfoWithIntent(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 348
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    const/4 v1, 0x0

    .line 349
    invoke-direct {p0, v0, v1, v1, v1}, Lcom/miui/home/launcher/ApplicationsMessage;->updateWorkspaceMessage(Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getUserId()I

    move-result v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/launcher/ApplicationsMessage;->updateWorkspaceMessage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[BI)V

    :cond_1
    return-void
.end method

.method private updateWorkspaceMessage(Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    if-eqz p1, :cond_0

    .line 369
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->isHideApplicationMessage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {p1, p2, p3, p4}, Lcom/miui/home/launcher/ShortcutInfo;->setMessage(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 371
    iget-object p2, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/Launcher;->getParentFolderInfo(Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 373
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 374
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ApplicationsMessage;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getEventBusHandlers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 429
    iget-object p0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLoadingFinishMessageHandler:Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 4

    .line 404
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mMessageReceiver:Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;

    if-eqz v0, :cond_0

    .line 405
    iget-object v1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    .line 407
    iput-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mMessageReceiver:Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;

    .line 408
    iget-object v1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 409
    iget-object v2, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mObservers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/ContentObserver;

    if-eqz v3, :cond_1

    .line 411
    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 414
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mObservers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 415
    iput-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 416
    iput-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLastLaunchShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    return-void
.end method

.method public onHighTextContrastChanged()V
    .locals 1

    .line 380
    sget-object v0, Lcom/miui/home/launcher/ApplicationsMessage$$ExternalSyntheticLambda2;->INSTANCE:Lcom/miui/home/launcher/ApplicationsMessage$$ExternalSyntheticLambda2;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ApplicationsMessage;->clearAllMessage(Ljava/util/function/Predicate;)V

    const/4 v0, 0x1

    .line 381
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ApplicationsMessage;->requestUpdateMessages(Z)V

    .line 382
    invoke-direct {p0}, Lcom/miui/home/launcher/ApplicationsMessage;->initSuperscriptCountObserver()V

    return-void
.end method

.method public onLaunchApplication(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mSelfUpdateItems:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    iput-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLastLaunchShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    :cond_0
    return-void
.end method

.method public requestUpdateMessages(Z)V
    .locals 6

    .line 216
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mMessageReceiver:Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;

    if-nez v0, :cond_1

    .line 220
    invoke-direct {p0}, Lcom/miui/home/launcher/ApplicationsMessage;->initialize()V

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/launcher/ApplicationsMessage$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/ApplicationsMessage$2;-><init>(Lcom/miui/home/launcher/ApplicationsMessage;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 230
    iget-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLastLaunchShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz p1, :cond_2

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_KDDI_BUILD:Z

    if-nez v0, :cond_2

    .line 231
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ApplicationsMessage;->updateWorkspaceMessage(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 232
    iget-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLastLaunchShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLastLaunchShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/ApplicationsMessage;->updateAppsViewMessage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[BLandroid/os/UserHandle;)V

    .line 233
    invoke-direct {p0}, Lcom/miui/home/launcher/ApplicationsMessage;->sendClearAppMessage()V

    const/4 p1, 0x0

    .line 234
    iput-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLastLaunchShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    :cond_2
    return-void
.end method

.method public updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 259
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    .line 260
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->getFolderIcon(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 264
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ApplicationsMessage;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/FolderIcon;)V

    :cond_1
    return-void
.end method

.method public updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/FolderIcon;)V
    .locals 3

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    .line 272
    :cond_0
    new-instance p0, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    .line 274
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 275
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->isEmptyMessage()Z

    move-result v1

    if-nez v1, :cond_1

    .line 277
    :try_start_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getMessageText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p1, v0

    goto :goto_0

    .line 279
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFolderMessage NumberFormatException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.ApplicationsMessage"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    .line 283
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/ItemIcon;->setMessage(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method
