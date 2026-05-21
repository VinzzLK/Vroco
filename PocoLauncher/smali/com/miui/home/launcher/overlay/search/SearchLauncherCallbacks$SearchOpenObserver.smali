.class Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks$SearchOpenObserver;
.super Landroid/database/ContentObserver;
.source "SearchLauncherCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchOpenObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;)V
    .locals 1

    .line 97
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks$SearchOpenObserver;->this$0:Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;

    .line 98
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 103
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks$SearchOpenObserver;->this$0:Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;

    invoke-static {p1}, Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;->access$000(Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;)Lcom/miui/launcher/overlay/client/LauncherClient;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks$SearchOpenObserver;->this$0:Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;

    invoke-static {p1}, Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;->access$300(Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;)Lcom/miui/launcher/overlay/client/LauncherClient;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks$SearchOpenObserver;->this$0:Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;

    invoke-static {p0}, Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;->access$100(Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;->access$200(Lcom/miui/home/launcher/overlay/search/SearchLauncherCallbacks;Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->setClientOptions(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)V

    :cond_0
    return-void
.end method
