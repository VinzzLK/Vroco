.class Lcom/miui/home/launcher/Launcher$48;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->registerRussiaNetworkCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public static synthetic $r8$lambda$bdaAT8stA_nyW1KeIH7gXue4lks(Lcom/miui/home/launcher/Launcher$48;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher$48;->lambda$onAvailable$0()V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 5331
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAvailable$0()V
    .locals 4

    const-string v0, "RussiaFileUtils"

    const-string v1, "onAvailable query russia_folder_layout"

    .line 5335
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5336
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    .line 5337
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "com.mi.globallayout.provider"

    .line 5338
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "russia_folder_layout"

    .line 5339
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 5342
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$48;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "query russia_folder_layout error"

    .line 5344
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 5334
    new-instance p1, Lcom/miui/home/launcher/Launcher$48$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/Launcher$48$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/Launcher$48;)V

    invoke-static {p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    const-string p0, "RussiaFileUtils"

    const-string p1, "onLost"

    .line 5351
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
