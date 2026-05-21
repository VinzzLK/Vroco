.class Lcom/miui/home/launcher/ApplicationsMessage$1;
.super Lcom/miui/home/launcher/ApplicationsMessage$ScriptCountObserver;
.source "ApplicationsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/ApplicationsMessage;->initSuperscriptCountObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ApplicationsMessage;


# direct methods
.method public static synthetic $r8$lambda$cR_WmmvYKxI1cRQT_WGl2_fiByE(Lcom/miui/home/launcher/ApplicationsMessage$1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ApplicationsMessage$1;->lambda$onChange$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w4KIQgI4IvPnvKd2Qqoc54MWOIw(Lcom/miui/home/launcher/ApplicationsMessage$1;Ljava/lang/Void;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ApplicationsMessage$1;->lambda$onChange$0(Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/miui/home/launcher/ApplicationsMessage;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage$1;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-direct {p0, p2, p3}, Lcom/miui/home/launcher/ApplicationsMessage$ScriptCountObserver;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method private synthetic lambda$onChange$0(Ljava/lang/Void;)Ljava/lang/String;
    .locals 3

    const/4 p1, 0x0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage$1;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-static {v0}, Lcom/miui/home/launcher/ApplicationsMessage;->access$100(Lcom/miui/home/launcher/ApplicationsMessage;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage$1;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    .line 94
    invoke-static {v0}, Lcom/miui/home/launcher/ApplicationsMessage;->access$100(Lcom/miui/home/launcher/ApplicationsMessage;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ApplicationsMessage$ScriptCountObserver;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/LauncherUtils;->isAppCornerAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage$1;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-static {v0}, Lcom/miui/home/launcher/ApplicationsMessage;->access$100(Lcom/miui/home/launcher/ApplicationsMessage;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ".superscript_count"

    if-eqz v0, :cond_1

    .line 98
    :try_start_1
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage$1;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-static {v0}, Lcom/miui/home/launcher/ApplicationsMessage;->access$100(Lcom/miui/home/launcher/ApplicationsMessage;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/home/launcher/ApplicationsMessage$ScriptCountObserver;->getTargetPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage$1;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-static {v0}, Lcom/miui/home/launcher/ApplicationsMessage;->access$100(Lcom/miui/home/launcher/ApplicationsMessage;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/home/launcher/ApplicationsMessage$ScriptCountObserver;->getTargetPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_2

    .line 101
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_0
    return-object p1

    :catch_0
    move-exception p0

    const-string v0, "Launcher.ApplicationsMessage"

    const-string v1, "initSuperscriptCountObserver"

    .line 104
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method

.method private synthetic lambda$onChange$1(Ljava/lang/String;)V
    .locals 7

    :try_start_0
    const-string v0, ","

    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 110
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage$1;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ApplicationsMessage$ScriptCountObserver;->getTargetPackage()Ljava/lang/String;

    move-result-object p0

    const-string v2, ""

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 111
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v3

    const/4 p0, 0x0

    .line 112
    aget-object v4, p1, p0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    aget-object v4, p1, p0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, p1, p0

    move-object v4, p0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v4, v5

    .line 113
    :goto_1
    array-length p0, p1

    const/4 v6, 0x1

    if-le p0, v6, :cond_2

    aget-object p0, p1, v6

    move-object v5, p0

    :cond_2
    const/4 v6, 0x0

    .line 110
    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/ApplicationsMessage;->access$000(Lcom/miui/home/launcher/ApplicationsMessage;Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "Launcher.ApplicationsMessage"

    const-string v0, "ScriptCountObserver"

    .line 115
    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 91
    new-instance p1, Lcom/miui/home/launcher/ApplicationsMessage$1$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/ApplicationsMessage$1$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/ApplicationsMessage$1;)V

    new-instance v0, Lcom/miui/home/launcher/ApplicationsMessage$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/ApplicationsMessage$1$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/ApplicationsMessage$1;)V

    const/4 p0, 0x0

    invoke-static {p1, v0, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
